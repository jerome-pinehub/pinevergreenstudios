/*
 * Copyright (c) 2007, CustomWare Asia Pacific
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *     * Redistributions of source code must retain the above copyright notice,
 *       this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of "CustomWare Asia Pacific" nor the names of its contributors
 *       may be used to endorse or promote products derived from this software
 *       without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

/**
 * This library allows the content to be accessed in tab-style 'folders'.
 *
 * It will look for content with the following structure:
 *
 * <div class
 */
 
var Deck = {

    /**
     * Returns the deck with the specified id, if it exists.
     */
    get : function(id) {
        return $("deck:" + id);
    },

    memoryDuration : 0,

    // The prefix to place in front of the
    memoryPrefix : window.location.pathname,

    memoryName : function() {
        return Deck.memoryPrefix + ":deckData";
    },

    memoryPath : "/",

    // The array of decks in the page.
    allDecks : new Array(),

    store : function() {
debug("Deck.store");
        if (Deck.memoryDuration <= 0)
        {
            Memory.forgetValue(Deck.memoryName(), Deck.memoryPath);
                return;
        }

        var expdate = new Date ();
        expdate.setTime(expdate.getTime() + (24 * 60 * 60 * 1000) * Deck.memoryDuration );

        var data = new Object();
        var decks = Deck.allDecks;

        for (var i = 0; i < decks.length; i++)
        {
debug("Deck.store: decks[" + i + "].id = '" + decks[i].id + "'");
            if (decks[i].currentCard) {
debug("Deck.store: decks[" + i + "].currentCard.label = '" + decks[i].currentCard.label + "'");
                data[decks[i].id] = decks[i].currentCard.label;
            }
        }

        Memory.storeMap(Deck.memoryName(), data, expdate, Deck.memoryPath);
    },

    recall : function() {
debug("Deck.recall");
        if (Deck.memoryDuration <= 0)
        {
            Memory.forgetValue(Deck.memoryName(), Deck.memoryPath);
            return;
        }

        var data = Memory.recallMap(Deck.memoryName());

        for (id in data)
        {
debug("Deck.recall: id = '" +id + "'");
            var deck = document.getElementById(id);
            if (deck && deck.cards)
            {
debug("Deck.recall: data[id] = '" + data[id] + "'");
                var card = deck.cards[data[id]];
                if (card)
                    card.show();
            }
        }
    },

    findParentDeck : function(el) {
        var parent = el.parentNode;
        while (parent && !parent.cards)
            parent = parent.parentNode;
        return parent;
    },

    _initDeck : function(deck) {
        deck.tabLocation = deck.getAttribute("tablocation");

        deck.effectType = deck.getAttribute("effecttype");
        deck.effectDuration = parseFloat(deck.getAttribute("effectduration"));

        deck.nextAfter = parseFloat(deck.getAttribute("nextafter"));
        deck.loopCards = deck.getAttribute("loopcards") == "true";
    },

    _initCard : function(card) {
        card.label = card.getAttribute("label");
        card.labelRendered = card.getAttribute("labelrendered");
        card.defaultCard = card.getAttribute("defaultcard") == "true";
        card.accessKey = card.getAttribute("accesskey");

        card.effectType = card.getAttribute("effecttype");
        card.effectDuration = parseFloat(card.getAttribute("effectduration"));

        card.nextAfter = parseFloat(card.getAttribute("nextafter"));
    },

    // This method copies any undeclared attributes directly into the object.
    _copyAttributes : function(el) {
        var attrs = el.attributes;
        var attr;
debug("_copyAttributes: attrs.length = " + attrs.length);
        for (var i = 0; i < attrs.length; i++)
        {
            attr = attrs.item(i);
            if (!el[attr.name])
            {
debug("_copyAttributes: found '" + attr.name + "'");
                el[attr.name] = attr.value;
            }
        }
    },

    rules : {
        'div.deck' : function(el) {

            el.addCard = function(card) {
                this.cards[card.label] = card;

                if (!this.firstCard)
                    this.firstCard = card;

                if (this.lastCard) {
                    this.lastCard.nextCard = card;
                    card.prevCard = this.lastCard;
                }

                this.lastCard = card;

                if (this.loopCards && this.firstCard != card) {
                    card.nextCard = this.firstCard;
                    this.firstCard.prevCard = card;
                }

                // Create a label
                if (this.tabLocation != "none") {
                    var td = document.createElement("td");
                    var tab = document.createElement("div");

                    // Setup methods
                    tab.activate = function() {
                        this.id = "current";
                    };

                    tab.deactivate = function() {
                        this.id = null;
                    }

                    tab.onclick = function(evt) {
                        this.card.show();
                        if (window.event && window.event.srcElement && window.event.srcElement.blur) {
                                window.event.srcElement.blur();
                        } else if (evt && evt.target && evt.target.blur) {
                                evt.target.blur();
                        }
                        return false;
                    };

                    // The actual link
                    var link = document.createElement("a");
                    link.innerHTML = card.labelRendered;
                    link.accessKey = card.accessKey;
                    link.href = "#";

                    tab.className = "tab" + card.className.substr(4);
                    tab.parentDeck = this;
                    tab.card = card;
                    tab.appendChild(link);

                    td.appendChild(tab);

                    this.tabBar.row.appendChild(td);

                    card.tab = tab;
                }

                Element.hide(card);
                if (!this.currentCard || card.defaultCard)
                    card.show();
            }

            el.showFirstCard = function() {
                this.firstCard.show();
            }

            el.showLastCard = function() {
                this.lastCard.show();
            }

            el.showNextCard = function() {
                if (this.currentCard && this.currentCard.nextCard)
                    this.currentCard.nextCard.show(arguments[0]);
            }

            el.showPrevCard = function() {
                if (this.currentCard && this.currentCard.prevCard)
                    this.currentCard.prevCard.show();
            }

            el.getNextAfter = function() {
                if (this.nextAfter)
                    return this.nextAfter;
                else
                    return 0.0;
            }

            el.getEffectDuration = function() {
                if (this.effectDuration)
                    return this.effectDuration;
                else
                    return 1.0;
            }

            el.getEffectType = function() {
                return this.effectType;
            }

            el.setTransitioning = function(transitioning) {
                this.transitioning = transitioning;
            }

            el.isTransitioning = function() {
                return this.transitioning;
            }

            el.scrollTo = function() {
                Element.scrollTo(this);
            }

            // Initialise the deck
            Deck.allDecks.push(el);
            Deck._initDeck(el);
            el.cards = new Object();
            el.transitionTimeout = 0;
            Element.show(el);

            if (el.tabLocation != "none")
            {
                el.tabBar = document.createElement("div");
                el.tabBar.className = "tabBar " + el.tabLocation;

                var table = document.createElement("table");
                table.cellSpacing = 0;
                el.tabBar.appendChild(table);
                var tbody = document.createElement("tbody");
                table.appendChild(tbody);
                var row = document.createElement("tr");
                tbody.appendChild(row);
                el.tabBar.row = row;

                if (el.tabLocation == "top")
                    el.insertBefore(el.tabBar, el.firstChild);
                else
                    el.appendChild(el.tabBar);
            }

        },

        'div.card' : function(el) {

            el.activateTab = function(active) {
                if (this.tab)
                {
                    if (active)
                        this.tab.activate();
                    else
                        this.tab.deactivate();
                }
            };

            el.show = function() {
                if (arguments[0] && arguments[0] != this.parentDeck.nextAfterTimestamp)
                    return;

                if (this.parentDeck.isTransitioning())
                    return;

                var oldCard = this.parentDeck.currentCard;
                if (oldCard != this) {

                    this.parentDeck.setTransitioning(true);

                    if (oldCard)
                        oldCard.activateTab(false);

                    this.activateTab(true);

                    this.parentDeck.currentCard = this;

                    var effect = this.getEffectType();
                    var duration = this.getEffectDuration();
//debug("div.card.show: effect = " + effect + "; duration = " + duration);

                    var options = {
                        deck: this.parentDeck,
                        duration: duration,
                        queue: {position:'end', scope: this.parentDeck.id},
                        afterTransition: function(effect) {
//debug("div.card.afterTransition: called for deck '" + effect.options.deck.id + "'");
                            effect.options.deck.setTransitioning(false);
                            effect.options.deck.currentCard.startNextAfter();
                        }
                    };

                    if (effect == "fade") {
                        Transition.FadeAndScale(oldCard, this, options);
                    }
                    else {
                        Transition.Switch(oldCard, this, options);
                    }
                }
                else
                {
                    this.startNextAfter();
                }
            }

            el.startNextAfter = function() {
                // Handle the auto-transition.
                var nextAfter = this.getNextAfter();
                if (this.nextCard && nextAfter > 0) {
                    var now = new Date();
                    this.parentDeck.nextAfterTimestamp = now.getTime();
                    window.setTimeout("$('" + this.parentDeck.id + "').showNextCard(" + now.getTime() + ");", nextAfter * 1000);
                }
                else {
                    this.parentDeck.nextAfterTimestamp = null;
                }
            }

            el.getNextAfter = function() {
                if (this.nextAfter)
                    return this.nextAfter;
                else
                    return this.parentDeck.getNextAfter();
            }

            el.getEffectDuration = function() {
                if (this.effectDuration)
                    return this.effectDuration;
                else
                    return this.parentDeck.getEffectDuration();
            }

            el.getEffectType = function() {
                if (this.effectType)
                    return this.effectType;
                else
                    return this.parentDeck.getEffectType();
            }

            // Initialise the card
            Deck._initCard(el);

            el.parentDeck = Deck.findParentDeck(el);
            if (el.parentDeck) {
                el.parentDeck.addCard(el);
            }
        }
    }
};

Behaviour.register(Deck.rules);

if (Memory) {
    Memory.addLoadEvent(Deck.recall);
    Memory.addUnloadEvent(Deck.store);
}
