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

/*********
 * This file depends on the script.aculo.us 'effects.js' library.
 *
 * Transition functions generally have two elements - a visibleElement and a hiddenElement.
 * The former is the currently-visible element, the latter the one which will replace it.
 *********/

var Transition = {
    storeValue: function(element, propertyName)
    {
        for (var i = 1; i < arguments.length; i++)
            element['__' + arguments[i]] = element.style[arguments[i]];
    },

    setValue: function(element, propertyName, value)
    {
        Transition.storeValue(element, propertyName);
        element.style[propertyName] = value;
    },

    restoreValue: function(element, propertyName)
    {
        for (var i = 1; i < arguments.length; i++)
            element.style[arguments[i]] = element['__' + arguments[i]];
    },

    debug: function(name, visibleElement, hiddenElement)
    {
        if (visibleElement) Transition.debugDimensions(name + ': visibleElement', visibleElement);
        Transition.debugDimensions(name + ': hiddenElement', hiddenElement);
        Transition.debugDimensions(name + ': parent', hiddenElement.parentNode);
    },

    debugDimensions: function(name, element)
    {
        debug(name + ' dimensions:');
        //debug('    width=' + element._dimensions.width + '; height=' + element._dimensions.height);
        debug('    style: top=' + element.style.top + '; left=' + element.style.left + '; width=' + element.style.width + '; height=' + element.style.height);
        debug('    client: top=' + element.clientTop + '; left=' + element.clientLeft + '; width=' + element.clientWidth + '; height=' + element.clientHeight);
        debug('    scroll: top=' + element.scrollTop + '; left=' + element.scrollLeft + '; width=' + element.scrollWidth + '; height=' + element.scrollHeight);
        debug('    offset: top=' + element.offsetTop + '; left=' + element.offsetLeft + '; width=' + element.offsetWidth + '; height=' + element.offsetHeight);
        //debug('    padding: *=' + element.style.padding + '; top=' + element.style.paddingTop + '; left=' + element.style.paddingLeft + '; bottom=' + element.style.paddingBottom + '; right=' + element.style.paddingRight);
        //debug('    margin: *=' + element.style.margin + '; top=' + element.style.marginTop + '; left=' + element.style.marginLeft + '; bottom=' + element.style.marginBottom + '; right=' + element.style.marginRight);
    },

    getStyle: function(element, style) {
      element = $(element);
      var value = element.style[style.camelize()];
      if (!value) {
        if (document.defaultView && document.defaultView.getComputedStyle) {
          var css = document.defaultView.getComputedStyle(element, null);
          value = css ? css.getPropertyValue(style) : null;
        } else if (element.currentStyle) {
          value = element.currentStyle[style.camelize()];
        }
      }

      if (window.opera && ['left', 'top', 'right', 'bottom'].include(style))
        if (Transition.getStyle(element, 'position') == 'static') value = 'auto';

      return value == 'auto' ? null : value;
    },

    positionedOffset: function(element) {
      var valueT = 0, valueL = 0;
      do {
        valueT += element.offsetTop  || 0;
        valueL += element.offsetLeft || 0;
        element = element.offsetParent;
        if (element) {
          p = Transition.getStyle(element, 'position');
          if (p == 'relative' || p == 'absolute') break;
        }
      } while (element);
      return [valueL, valueT];
    },

/**
 * Overlays the target element on top of the source, optionally changing its dimensions.
 */
    overlay: function(source, target, resize)
    {
        source = $(source);
        target = $(target);

        Transition.setValue(target, 'position', 'absolute');
        var offsets = Transition.positionedOffset(source);
        Transition.setValue(target, 'top', offsets[1] + 'px');
        Transition.setValue(target, 'left', offsets[0] + 'px');

        if (resize)
        {
            Element.makeClipping(target);
            Transition.measure(source);
            Transition.setValue(target, 'width', source.getRealWidth());
            Transition.setValue(target, 'height', source.getRealHeight());
        }
    },

    unoverlay: function(source, target, resize)
    {
        source = $(source);
        target = $(target);

        Transition.restoreValue(target, 'position', 'top', 'left');
        if (resize)
        {
            Transition.restoreValue(target, 'width', 'height');
            Element.undoClipping(target);
        }
    },

/**
 * This function will measure the 'real' width and height of the specified
 * element, taking into account the padding/border/whatever.
 */
    measure: function(element)
    {
        if ((element.extraWidth || false) && (element.extraHeight || false))
            return;

        var originalWidth = element.style.width;
        var originalHeight = element.style.height;

        var originalDisplay, originalVisibility, originalPosition;

        if (element.style.display == 'none')
        {
            originalDisplay = element.style.display;
            originalVisibility = element.style.visibility;
            originalPosition = element.style.position;
            element.style.visibility = 'hidden';
            element.style.display = '';
            element.style.position = 'absolute';
        }

        var width = element.offsetWidth;
        var height = element.offsetHeight;

        element.style.width = width + 'px';
        element.style.height = height + 'px';
        // Account for the discrepency which seems to occur (due to padding/margin?)
        element.extraWidth = element.offsetWidth - width;
        element.extraHeight = element.offsetHeight - height;

        // This is the result:
        element.getRealWidth = function()
        {
            return this.offsetWidth - element.extraWidth;
        };
        element.getRealHeight = function()
        {
            return this.offsetHeight - element.extraHeight;
        }

        // Resetting...
        element.style.width = originalWidth;
        element.style.height = originalHeight;

        if (originalDisplay == 'none')
        {
            element.style.display = originalDisplay;
            element.style.visibility = originalVisibility;
            element.style.position = originalPosition;
        }
    }
};

Transition.Transitions = {}

Transition.Transitions.late = function(pos) {
    if (pos < 0.5)
        return 0;
    pos = pos * 2.0 - 1.0;
    return pos(-Math.cos(pos*Math.PI)/2) + 0.5;
}

Transition.Transitions.early = function(pos) {
    if (pos > 0.5)
        return 0;
    pos = pos * 2.0;
    return pos(-Math.cos(pos*Math.PI)/2) + 0.5;
}

Transition.FadeAndScale = function(visibleElement, hiddenElement)
{
    var xPercent, yPercent, startWidth, startHeight;

    // Make sure we're working with the element objects.
    visibleElement = $(visibleElement);
    hiddenElement = $(hiddenElement);

var debugIndex = 0;
Transition.debug(debugIndex++, visibleElement, hiddenElement);

    // Turn the hidden element on in invisible mode.
//alert('Element.setOpacity(hiddenElement, 0.0);');
    Element.setOpacity(hiddenElement, 0.0);
//alert('Element.show(hiddenElement);');
    Element.show(hiddenElement);
//alert('Transition.measure(hiddenElement);');
    Transition.measure(hiddenElement);

    if (visibleElement)
    {
        // Do width/height stuff...
//alert("Transition.storeValue(visibleElement, 'width', 'height');");
        Transition.storeValue(visibleElement, 'width', 'height');
//alert("Transition.measure(visibleElement);");
        Transition.measure(visibleElement);
        // Figure out the scale factor
        xPercent = (hiddenElement.getRealWidth() / visibleElement.getRealWidth()) * 100
        yPercent = (hiddenElement.getRealHeight() / visibleElement.getRealHeight()) * 100;
        debug("xPercent = " + xPercent + '; yPercent = ' + yPercent);

        // Overlay the visible element
//alert("Transition.overlay(visibleElement, hiddenElement, true);");
        Transition.overlay(visibleElement, hiddenElement, true);
//alert("Element.makeClipping(visibleElement);");
        Element.makeClipping(visibleElement);

        //alert("Transition.setValue(hiddenElement, 'zIndex', 100);");
        Transition.setValue(hiddenElement, 'zIndex', 10);

        startWidth = visibleElement.getRealWidth();
        startHeight = visibleElement.getRealHeight();
    }
    else
    {
        Transition.storeValue(hiddenElement, 'width', 'height');
        xPercent = yPercent = 100.0;
        startWidth = hiddenElement.getRealWidth();
        startHeight = hiddenElement.getRealHeight();
    }

    var options = Object.extend(
    {
        visibleElement: visibleElement,
        hiddenElement: hiddenElement,
        beforeSetup: function(effect)
        {
            if (effect.options.beforeTransition)
                effect.options.beforeTransition();
        },
        afterFinish: function(effect)
        {
            var oldEl = effect.options.visibleElement;
            var newEl = effect.options.hiddenElement;

            if (oldEl)
            {
//alert("Element.undoClipping(oldEl);");
                Element.undoClipping(oldEl);
//alert("Transition.restoreValue(oldEl, 'width', 'height');");
                Transition.restoreValue(oldEl, 'width', 'height');

//alert("Transition.unoverlay(oldEl, newEl, true);");
                Transition.unoverlay(oldEl, newEl, true);
//alert("Element.hide(oldEl);");
                Element.hide(oldEl);
                Element.setOpacity(oldEl, 100.0);
//alert("Transition.restoreValue(newEl, 'zIndex');");
                Transition.restoreValue(newEl, 'zIndex');
            }
            else
            {
                Transition.restoreValue(newEl, 'width', 'height');
            }

Transition.debug("afterFinish", oldEl, newEl);

            debug("FadeAndScale: Checking for afterTransition");
            if (effect.options.afterTransition)
            {
                debug("FadeAndScale: afterTransition found");
//alert("effect.options.afterTransition(effect);");
                effect.options.afterTransition(effect);
            }
        }
    },
        (arguments[2] || {})
        );

    // The starting scale mode.
    var scaleMode = {
        originalWidth: startWidth,
        originalHeight: startHeight
    };

Transition.debug(debugIndex++, visibleElement, hiddenElement);

    new Effect.Parallel(
        [
            // Fade in the new element
            new Effect.Opacity(hiddenElement,
            {
                from: 0.0,
                to: 2.0  // Double the end opacity so it fades in early.
            }),
            // Scale to the new width
            new Effect.Scale(hiddenElement, xPercent,
            {
                scaleContent: false,
                scaleY: false,
                scaleMode: scaleMode
            }),
            // Scale to the new height
            new Effect.Scale(hiddenElement, yPercent,
            {
                scaleContent: false,
                scaleX: false,
                scaleMode: scaleMode
            })
        ].concat(
            (visibleElement) ?
            [
                // Fade out the old element
                new Effect.Opacity(visibleElement,
                {
                    from: 2.0, // Double the starting opacity so it fades out late.
                    to: 0.0
                }),

                // Scale to the new width
                new Effect.Scale(visibleElement, xPercent,
                {
                    scaleContent: false,
                    scaleY: false,
                    scaleMode: scaleMode
                }),
                // Scale to the new height
                new Effect.Scale(visibleElement, yPercent,
                {
                    scaleContent: false,
                    scaleX: false,
                    scaleMode: scaleMode
                })
                ] : []),
            options
        );
    //Transition.debug(debugIndex++, visibleElement, hiddenElement);
}

Transition.Switch = function(visibleElement, hiddenElement)
{
    var proxyEffect = {
        options: arguments[2]
    };

    if (arguments[2] && arguments[2].beforeTransition)
        arguments[2].beforeTransition(proxyEffect);

    if (visibleElement)
        Element.hide(visibleElement);
    Element.show(hiddenElement);

    if (arguments[2] && arguments[2].afterTransition)
        arguments[2].afterTransition(proxyEffect);
}