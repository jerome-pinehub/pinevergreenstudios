
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

var Memory = {

	/**
	 * Function to return the value stored agains the specified "name".
	 *   name - String object containing the cookie name.
	 *   returns - String object containing the cookie value, or null if
	 *      the cookie does not exist.
	 */
	recallValue : function(name) {
		var arg = name + "=";
		var alen = arg.length;
		var clen = document.cookie.length;
		var i = 0;
		while (i < clen) {
			var j = i + alen;
			if (document.cookie.substring(i, j) == arg)
				return this._getCookieVal (j);
			i = document.cookie.indexOf(" ", i) + 1;
			if (i == 0) break; 
		}
		return null;
	},
	
	recallMap : function(name) {
		var value = this.recallValue(name);
		if (value)
		{
			var map = new Object();
			var entries = value.split("|");
			for (var i = 0; i < entries.length-1; i++)
			{
				var keyValue = entries[i].split("=");
				if (keyValue.length == 2)
				{
					map[unescape(keyValue[0])] = unescape(keyValue[1]);
				}
			}		
			return map;
		}
		return null;
	},
	
	// "Internal" function to return the decoded value of a cookie
	_getCookieVal : function(offset) {
		var endstr = document.cookie.indexOf (";", offset);
		if (endstr == -1)
	    	endstr = document.cookie.length;
		return unescape(document.cookie.substring(offset, endstr));
	},

	/**
	 * Function to create or update a stored value.
	 *    name - The name to store the value against.
	 *    value - The value to store.
	 *    [expires] - Date object containing the expiration date of the value.  If
	 *      omitted or null, the value will be lost at the end of the current session.
	 *    [path] - String object indicating the path for which the value is accessible.
	 *      If omitted or null, uses the path of the calling document.
	 *    [domain] - String object indicating the domain for which the value is
	 *      valid.  If omitted or null, uses the domain of the calling document.
	 *    [secure] - Boolean (true/false) value indicating whether cookie transmission
	 *      requires a secure channel (HTTPS).  
	 *
	 *  The first two parameters are required.  The others, if supplied, must
	 *  be passed in the order listed above.  To omit an unused optional field,
	 *  use null as a place holder.  For example, to call setValue using name,
	 *  value and path, you would code:
	 *
	 *      Memory.setValue ("myName", "myValue", null, "/");
	 *
	 *  Note that trailing omitted parameters do not require a placeholder.
	 *
	 *  To set a secure cookie for path "/myPath", that expires after the
	 *  current session, you might code:
	 *
	 *      Memory.storeValue (myCookieVar, cookieValueVar, null, "/myPath", null, true);
	 */
	storeValue : function(name, value, expires, path, domain, secure) {
		document.cookie = name + "=" + escape (value) +
	    	((expires) ? "; expires=" + expires.toGMTString() : "") +
	    	((path) ? "; path=" + path : "") +
	    	((domain) ? "; domain=" + domain : "") +
	    	((secure) ? "; secure" : "");
	},
	
	/**
	 * This function works the same as 'storeValue', except that the value is
	 * a simple string map - essentially a basic Object with string values stored
	 * in paramters.
	 */
	storeMap : function(name, map, expires, path, domain, secure) {
		var value = "";
		for (key in map) {
			if (typeof(map[key] == "string")) {
				var keyValue = escape(key) + "=" + escape(map[key]);
				value += keyValue + "|";
			}
		}
		this.storeValue(name, value, expires, path, domain, secure);
	},
	
	/**
	 *  Function to forget stored values.
	 *    name -   The name the value was stored against.
	 *    path -   String object containing the path of the value to delete.  This MUST
	 *             be the same as the path used to store the value, or null/omitted if
	 *             no path was specified originally.
	 *    domain - String object containing the domain.  This MUST
	 *             be the same as the domain used to store the value, or null/omitted if
	 *             no domain was specified originally.
	 */
	forgetValue : function(name, path, domain) {
		if (this.recallValue(name)) {
			document.cookie = name + "=" +
			((path) ? "; path=" + path : "") +
			((domain) ? "; domain=" + domain : "") +
			"; expires=Thu, 01-Jan-70 00:00:01 GMT";
		}
	},

	addLoadEvent : function(func){
		if (window.addEventListener) {
			var load = function() {
				if (arguments.callee.done)
					return;
				arguments.callee.done = true;
				arguments.callee.func();
			}
			load.func = func;
			window.addEventListener("DOMContentLoaded", load, false);
			window.addEventListener("load", load, false);
		} else if (window.attachEvent) {
			window.attachEvent('onload',func);
		} else {
	
			var oldonload = window.onload;
		
			if (typeof window.onload != 'function') {
				window.onload = func;
			} else {
				window.onload = function() {
					oldonload();
					func();
				}
			}
		}
	},

    /**
     * A utility function which helps multiple objects to be notified of an 'unload' event.
     *   func -  The function to call when the page 'unloads'.
     */
	addUnloadEvent : function(func){
		var oldunload = window.onunload;
		
		if (typeof window.onunload != 'function') {
			window.onunload = func;
		} else {
			window.onunload = function() {
				oldunload();
				func();
			}
		}
	}
};

/*  Examples
	var expdate = new Date ();
	FixCookieDate (expdate);  * Correct for Mac date bug - call only once for given Date object!
	expdate.setTime(expdate.getTime() + (24 * 60 * 60 * 1000) * 180 );  * 6 months from now
	
	var storedValue = "Werd";
		
	Memory.storeValue ("WTMapCookie", storedValue , expdate);
	Memory.retrieveValue ("WTMapCookie");
*/