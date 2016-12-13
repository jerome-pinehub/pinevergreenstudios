jQuery.noConflict();

/*
	Must include jQuery.js
*/

//avoid firebug console errors
if (!window.console || !console.firebug) {
    var names = ["log", "debug", "info", "warn", "error", "assert", "dir", "dirxml", "group", "groupEnd", "time", "timeEnd", "count", "trace", "profile", "profileEnd"];

    window.console = {};
    for (var i = 0; i < names.length; ++i)
    window.console[names[i]] = function () {}
}

//	Method fixLinks should be called in onLoad event for each page.
jQuery(document).ready(function () {
    monitorLinks();


        jQuery("#vivSearchTxt").bind("focus",function(){
               if(jQuery.trim(jQuery("#vivSearchTxt").val())=="Search"){
                   jQuery(this).val("");
               }
        });
        jQuery("#vivSearchTxt").keyup(function(e) {
               if(e.keyCode == 13) {
                   jQuery("#vivSearchBtn").click();
               }
        });


	jQuery("#vivSearchTxt").focus(function(){
		if(!isLocationSet())
			setLocation();
	});


	jQuery("#vivSearchForm").submit(function(){
		if(!isLocationSet()){
			setLocation(function(){jQuery("#vivSearchForm").submit();});
			return false;
		}
	});



});



function isLocationSet(){
        return (jQuery("input[name='v:sources']").val()=="trp-exchange")?false:true;
}
function setLocation(callback){
        if (readCookie('exchCountryCode') == 'undefined')
        {
                createCookie('exchCountryCode','',-1);
        }

        if( readCookie('exchCountryCode') != null){
                jQuery("input[name='v:sources']").val("trp-exchange,trp-exchange-" + readCookie('exchCountryCode'));
		if(typeof(callback) != 'undefined'){
			callback();
		}
        }else{
                jQuery.getJSON("/exchange/wps6/themes/html/trp6ThemeVS/AjaxLocation.jsp",function(data){
                        jQuery("input[name='v:sources']").val("trp-exchange,trp-exchange-" + data.countryCode);
                        var receivedCC = (data.countryCode.length != 3)?"USA":data.countryCode; 
			createCookie('exchCountryCode',receivedCC);
                        if(typeof(callback) != 'undefined'){
                                callback();
                        }
                });
        }
}






function monitorLinks() {
    //	Look for all anchor tags not calling a JavaScript method.
    //	Depending on what is in the href attribute, override the link to 
	//			1. open in a new window
	//			2. send "Exit Link" to Visual Sciences
    //  However:
	//	  If the link is to WCM content or Portal, nothing will be done to the link.
    //		It should be tracked in the Portal onload event

	jQuery("#nav a,#TabMenu a,#tree1 a, .wpsPageBar0 a").data("doNothing", true);
    	var contentLinks = jQuery('a[href]:not([href^="javascript"])');
	//navigation links

    console.log("Visual Science Modifier Script: Link Count (%s)", jQuery(contentLinks).size());


	/****************************************
			Portlet links and Accordion Links 
	******************************************/
	/*   Portal Portlet title tracking   */
	jQuery(".wpsPortletIcons").each(function(i,e){

		jQuery(this).parents(":eq(2)").next().find("a").data("portletName",jQuery.trim(jQuery(this).prev().text()))
	});

	
	/*   RPS accordion title tracking   */
	//Note: this is a "live" bind
	//Meaning new dynamically added to the page matching the selector will be effected
	jQuery(".mytrp_accordion_section div a[target='_blank']:not(.VSmonitored),.mytrp_accordion_section div a[target='_parent']:not(.VSmonitored)").live("mouseover",function(){
		if(!jQuery.data(this,"portletName")){
			jQuery.data(this,"portletName",jQuery(this).parents().filter(".mytrp_accordion_section").find(".mytrp_accordion_section_header a").text());	
			jQuery(this).addClass("VSmonitored");
			jQuery(this).attr("target","_blank");
//special monitor (because these links are added after the regular click bind occurs)
			jQuery.data(this,"specialMonitor","true")
		}
	});
	
	jQuery(".mytrp_accordion_section div a[target='_blank'],.mytrp_accordion_section div a[target='_parent']").live("click",function(){
			linkPlacement = jQuery.data(this,"portletName")			
			if (jQuery(this).attr('href').indexOf('myportal') < 1) {
				pageData="pageName=" + currentPageName + "~breadCrumb=" + breadCrumb + "~userId="+vsIvUser;
				if(jQuery.data(this,"portletName"))
					pageData+="~portletName=" + jQuery.data(this,"portletName");
				sendExitLink(this, document.title, jQuery(this).html(), linkPlacement,pageData);
			}
	});
			
	/*******************************************/						


    if (jQuery(contentLinks).size() > 0) {
			jQuery(contentLinks).each(function (i, item) {
				//	Check to see if link is portal link to WCM content.								
				var sitepath = splitWCMContext(jQuery(item).attr('href'));
				var linkPlacement = "MB";
				//check item for a "doNothing" data node ....IE, make sure its not a navigation link
				if (!jQuery.data(item,"doNothing")) {
					//if its NOT WCM
					if (sitepath == "") {
						//Default Click Event
						jQuery(item).bind('click', function (e) {
							//ensure this is not already handled by another monitor above
							//alert(jQuery.data(item,"doNothing"))	
							if(!jQuery.data(item,"specialMonitor")){
								if(!(jQuery.data(item,"portletName")))
									linkPlacement ="MB";
								else   
									 linkPlacement = jQuery.data(item,"portletName")			
								if ((jQuery(item).attr('href').indexOf('myportal') < 1)&&(jQuery(item).attr('href').indexOf("#")<0)) {
									pageData="pageName=" + currentPageName + "~breadCrumb=" + breadCrumb + "~userId="+vsIvUser;
									if(jQuery.data(this,"portletName"))
										pageData+="~portletName=" + jQuery.data(this,"portletName");
									sendExitLink(item, document.title, item.innerHTML, linkPlacement,pageData);
								}
							}
						});

						//only open non-portal links in a new window
						if (jQuery(item).attr('href').indexOf('myportal') < 1) {
							item.target = "_blank";
						}else{
							if(jQuery.data(this,"portletName"))
								if(jQuery(this).attr("href").indexOf("?")<1)
									jQuery(this).attr("href",jQuery(this).attr("href") + "?portletName=" + jQuery.data(this,"portletName"));
						}
					} else {
						//This matches all WCM links ....
						//	Add link text and link placement to href.  This can be used to track
						//		the referrer information on the target page.
						//	The link placement defaults to Main Body.  If the script is to be used
						//		by the header and footer, or other, then this should be changed to be
						//		dynamic										
						if(jQuery(item).attr('href').indexOf("#")<0){
						jQuery(item).attr('href', jQuery(item).attr('href') + "&linktext=" + item.innerHTML.replace('&', 'and') + "&linkplacement=MB");
						console.log("SitePath: " + sitepath);
						}
					}
				}else{
						//console.log("This is a navigation link, so we do nothing!");
				}
			});
    }
		

}


/**************************************************
link placement might be the portlet title
 pageData is a '~' delimited string of all page tracking elements including
			breadcrumbs=X
			username=X
			portletName=X
***************************************************/
function sendExitLink(element, page, linktext, linkplacement, pageData) {
    WTA.utils.tags.sendexchgexiturl(element, page, linktext, linkplacement, pageData);
    console.log("Sent Exchange Exit URL");

}

function splitWCMContext(sitePath) {

    if (sitePath.indexOf("WCM_CONTEXT=") != -1) {
        return sitePath.split("WCM_CONTEXT=")[1];
    } else if (sitePath.indexOf("WCM_GLOBAL_CONTEXT=") != -1) {
        return sitePath.split("WCM_GLOBAL_CONTEXT=")[1];
    }
    return "";
}
