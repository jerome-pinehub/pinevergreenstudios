




















body, html {
width: 100%;
margin: 0;
padding: 0;
height: 100%;
} 
body {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
	background-color: #FFFFFF;
	color: #000000;
	margin: 0px;
	padding: 0px;
}

table, input, textarea, button, select {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px; 
}




div, span, p, ul, li, td, th { 
	font-family: Verdana, Arial, Helvetica, sans-serif;
}

pre {
	font-family: monospace;
	font-size: small;
}

img{
	vertical-align:middle;
}
a, .wpsLink{
	color: #003366;
}
a:visited, .wpsLink:visited { 
	color: #003366;
}
a:hover, .wpsLink:hover { 
	color: #6699CC;
}
a:active, .wpsLink:active {
	color: #003366;
}
.generalErrorText {
	color: red;
}

.clearing {
	clear: both;
}

.layoutRow {width: 100%; }
.layoutColumn {width: 100%; }

#FLYParent {min-width: 1000px;height:100%;}

#mainContent {
	padding: 0px;
}

.themeHeader {
	width:100%;
	margin: 0px;
	padding: 0px;
	clear: both;
	background-color: #003366;
}


.banner {
	color: #FFFFFF;
	background-color: #003366;
	border-bottom: 0px solid;
	border-bottom-color: #003366;
	margin: 0px;
	padding: 0px;
}

.bannerTitle{
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: large;
	color: #3161A5;
	font-weight: bold;
	padding-left: 20px;
}


.launch { 
	float:left;
	border: 0px;
	color: #FFFFFF;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: small;
	font-weight: bold;
	cursor: pointer;
	padding-top: 0px;
	padding-bottom: 0px;
	margin-top: 2px;
	margin-bottom: 0px;
	margin-left: 0px;
	background: url(./colors/default/main_menu_background.gif) repeat-x;
	background-color: #3880DE;
	vertical-align:bottom;
}
.launch img {
	vertical-align: baseline;    
}

.launch a, .launch a:visited, .launch a:hover, .launch a:active{
	text-decoration: none;
}
.launch:hover {
	background: url(./colors/default/main_menu_background_hover.gif) repeat-x;
	background-color: #3880DE;
}

.main-menu {
	color: #000000;
	background-color: #EBF1F7;
	border: 1px solid;
	border-color: #3161A5;
	-moz-border-radius-topright: 2px;
	-moz-border-radius-bottomright: 2px;
	-moz-border-radius-bottomleft: 2px;
}

.main-menu-border {
	border: 0px;	
}

.main-menu-item, .main-menu-item:visited  {
	background-color: #EBF1F7;
	color: #000000 !important;
	text-decoration: none;	
	padding:0px;
	white-space:nowrap;
	font-size: 10px;
}

.main-menu-item-selected {
	background:none;
	background-color: #E2EEFF;
	color: #000000 !important;
	border-top: 1px solid;
	border-bottom: 1px solid;
	border-color: #B9CEEA;
	cursor:pointer;
	white-space:nowrap;
	text-decoration: none;	
	padding:0px;
	font-size: 10px;
}

.main-menu-item-selected a{
	background: none;
	background-color: transparent;
}
/* prevent border on selected item from getting inherited by  menu icons */
.main-menu-item-selected img, .main-menu-item img{
	border: 0px;
	background: none;
	background-color: transparent;
	height: 16px;
	width: 16px;
}

.main-menu-item .portlet-separator { 
	margin:0px; 
	line-height:1px;
	background-color: #999999;
}
.portlet-separator { 
	margin:0px; 
	line-height:1px;
	background-color: #444444;
}




.breadcrumbNav {
    float:left;
    padding: 7px 5px;

}    

.breadcrumbNav a, .breadcrumbNav a:visited, .breadcrumbNav a:hover, .breadcrumbNav a:active{
    color: #FFFFFF;
    text-decoration: none; 
}



.searchControl {
    float:right;
    color: #FFFFFF;
    background-color: transparent;
    margin-right: 5px;
    margin-top: 3px;
}


.searchControl input{
    margin-right: -2px;
    margin-top: 0px; 
	padding: 2px;
}



.toolbar {
    float:right;
    color: #FFFFFF;
    background-color: transparent;
    margin-right: 5px;
	vertical-align: bottom;
}

.wpsToolBar p{
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
	width:100%;
	color:white;
}

.toolbarLink {
    background-color: transparent;
    text-decoration: none;
}

.toolbarLink img {
    padding: 2px 2px;
    border: 0px;
    vertical-align: bottom;
}

a.toolbarLink, a.toolbarLink:visited, a.toolbarLink:hover, a.toolbarLink:active{
    color: #FFFFFF;
    text-decoration: none;
}




.wpsToolBar { 
color:#FFFFFF;
font-family:Verdana,Arial,Helvetica,sans-serif;
font-size:10px;
}
.wpsToolBarLink, .wpsToolBarLink:visited, .wpsToolBarLink:hover {
	color:#FFFFFF;
	font-family:Verdana,Arial,Helvetica,sans-serif;
	font-size:10px;
	font-weight:normal;
	text-decoration:none;
}
.wpsPageBarFirstRow, .wpsPageBar {

	clear: both;
	float:left;
	padding-left: 0px;  
	margin-left: 0px;
	margin-bottom:1px;

}

.wpsPageBarFirstRow {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 11px;
	font-weight:bold;

}
.wpsPageBar {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: x-small;
	color: #FFFFFF;
	background: #FFFFFF;
	padding: 3px 0px;
	clear: both;

}

.pageBarSeparator {
	background-color:#E0E9D8;
	width: 100%;
	height: 6px;
	border-top: 15px solid;
	border-bottom: 15px solid;
	border-top-color: #E0E9D8;
	border-bottom-color: #E0E9D8;
	clear: both;
	padding: 0px;

}

.pageBarSeparator1 {
	background-color:#D8E7EF;
	width: 100%;
	height: 1px;
	clear: both;
	padding: 0px;
	border-bottom: 1px solid;
	border-top-color: #E0E9D8;
	border-bottom-color: #C0D9E6;
	margin-top:1px;
}

.wpsPageBarFirstRow td, .wpsPageBar td {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight:bold;
	color:#2381B1 !important;
	margin-left: 0px;
	float:left;
	list-style: none;  
}
.wpsPageBarFirstRow li {
	margin-top: 0px;
	margin-bottom: -1px; 
	padding: 0px 0px; 
}
.wpsPageBar li {
	padding: 2px 8px;
}


.wpsSelectedPageFirstRow{
background:url(./colors/default/topnav_selected.gif) repeat-x bottom;
text-decoration:none;
float:left;
padding:0px;
margin:0px;
}

.wpsPageBar .wpsSelectedPage{
	color: #FFFFFF;
	background: none;
	background-color: #F7F8FA;
	border: 1px solid;
	border-color: #BBC5D8;
	
	-moz-border-radius: 4px;
	margin-bottom: -1px;
	
}

.wpsSelectedPage a, .wpsSelectedPage a:visited, .wpsSelectedPage a:hover, .wpsSelectedPage a:active{
	color: #EB8515;
	text-decoration: none;

}


.wpsPageBarFirstRow .wpsUnSelectedPageFirstRow{
background:url(./colors/default/topnav_unselected.gif) repeat-x bottom;
text-decoration:none;
float:left;
white-space: nowrap;
}



.wpsUnSelectedPage a, .wpsUnSelectedPage a:visited, .wpsUnSelectedPage a:hover, .wpsUnSelectedPage a:active{
	color: #003366;
	text-decoration: none;
}

.wpsUnSelectedPageFirstRow a, .wpsUnSelectedPageFirstRow a:visited, .wpsUnSelectedPageFirstRow a:hover, .wpsUnSelectedPageFirstRow a:active{
	color: #FFFFFF;
	text-decoration: none;
}

.wpsSelectedPageFirstRow a, .wpsSelectedPageFirstRow a:visited, .wpsSelectedPageFirstRow a:hover, .wpsSelectedPageFirstRow a:active{
	color: #EB8515;
	text-decoration: none;
}


.menuLink {
	border: 0;
	margin-left: 4px;
}




.wpsSideNav{
    font-size: x-small;
    border: 1px solid;
    border-color: #9EB0CB;
    text-decoration: none;
    white-space:nowrap;
    background-color:#EBF1F7 ;
    margin-top:0px;
    margin-bottom:0px;
    margin-left: 0px;
    padding-left: 0px;
    /* This is a fix for the IE peekaboo bug */
    
}
/* first sublist is not indented */
.wpsSideNav ul{
    margin-left: 1.5em;
    padding-left: 0px;
}
/* indent sublists nested 2 levels or deeper  */
.wpsSideNav ul ul{
    margin-left: 1.5em;
    padding-left: 0px;
}


.wpsSideNav li{
    display:inline;
    list-style: none;
    margin-left: 0px;
    padding-left: 0px;

}

.wpsNavItem{
	text-decoration: none;
	padding: 3px 3px; 
	display:block;
	white-space:nowrap;
	color:#003366 !important;
}

.wpsNavItem a {
	display: inline;
}

.selected{
	color: #003366 !important;
	background-color: #9EB0CB;
	text-decoration: none;
	padding:3px 3px;
	display:block;
	cursor:default;
	white-space:nowrap;
}

.selected a {
	background-image:none;
	background-color:transparent;
	display: inline;
	cursor: pointer; 
	text-decoration: none;
}

.wpsNavIcon{
    height: 9px;
    width: 9px;
    border: 0px;
    padding: 0px;
    margin: 0px;
    vertical-align: baseline;
}


.menuLinkSideNav {
    border: 0px;
    margin-left: -10px;
    padding: 0px 10px;
}

.wpsNavLevel1{
	color: #003366 !important;
	font-size: 10px;
	font-weight:bold;
	padding-top: 3px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}

.selected .wpsNavLevel1{
	color: #003366 !important;
    
}

.wpsNavLevel2 wpsNavLevel3 wpsNavLevel4 wpsNavLevel5 wpsNavLevel6 wpsNavLevel7 wpsNavLevel7{
	text-indent:36px;    
}


.portalFlyout{
	position: absolute; 
	left: -390px; 
	width: 382px;
	background-color: #FFFFFF;
}

.portalFlyoutExpanded{
	position: absolute;
	border-top: 1px solid;
	border-left: 1px solid;
	border-bottom: 1px solid;
	border-top-color: #97A9C1;
	border-left-color: #97A9C1;
	border-bottom-color: #97A9C1;
	background-color: #FFFFFF; 
}

.portalFlyoutCollapsed{
	position: absolute;
	background-color: #FFFFFF;
}	
	
.portalFlyoutIframe{
	border: 0px;
}


.footer {
	clear:both;
	
	width:100%;
	height:28px;
	min-height:26px;
	bottom: 0;
	background-color: #E8EBF1;
	color:#000000;
	border-top: 1px solid;       	
}

.quickLinks { 
	font-size: xx-small;
	background-color: #E8EBF1;
	color:#000000;
	margin:0px;		
	height:28px;
	white-space: nowrap;
	float:left;
	border-spacing: 5px 0px;
	padding-left: 2px; 
}
.quickLinks li {
	margin-right: 4px;
	margin-top: 4px;
	margin-bottom: 4px;
	float:left;
	list-style: none;
	padding: 2px 4px 2px 4px;   
    
}
.quickLinkItem{
    color: #000000;
}

.quickLinkItem a, .quickLinkItem a:visited, .quickLinkItem a:hover, .quickLinkItem a:active{
    color: #000000;
    text-decoration: none;
}

.wpsFLYflyout{
	border: 10px solid;
	border-color: #9EB0CB;
	text-decoration: none;
	white-space:nowrap;
	background-color: #FFFFFF;
	color:#202020;
}



.dndDropAware{
	border: 0px; 
	background-color: #FFEBC5;
}
.dndDropActive{
	border: 0px; 
	background-color: #FF9000;
}
.dndDragging{
	width: 100%; 
	
		-moz-opacity: .4;
	
	
}
.dndDragSelected{
   	border: 1px; 
	background-color: #DDDDDD;
}
.dndMoveCursor{
	cursor:move;
}
.dndDropCursor{
	cursor: pointer; 
}
.dndNoDropCursor{
	cursor: pointer;
}


.contentPaletteDragClass{
    width: 100%; 
    
		-moz-opacity: .4;
	
	
}
.contentPaletteDragClass div
{
    background-color: #B7CBE7; 
    background: url( "./colors/default/palette_selected_portlet.gif" ) repeat-x;
    font-weight: normal;
    font-family: arial;
    font-size: xx-small;
}





.wpsPortlet{
	border-left: 1px solid;
	border-right: 1px solid;
	border-bottom: 1px solid;
	border-color: #CACACA;
	background-image:none;
}
.wpsPortletBody{
	background-image:none;
		padding:5px;
}


.wpsPortletTitleBar{
	font-size: small;
	color: #616161;
	background: url("./colors/default/portletTitleBarBg.gif") repeat-x;
	background-color: #FFFFFF;
	padding-left: 5px;
	width:100%;
	white-space: nowrap;
}

.wpsPortletTitleBar img{
	vertical-align:middle;
}




.BlueWpsPortlet{
	border-left: 1px solid;
	border-right: 1px solid;
	border-bottom: 1px solid;
	border-color: #3A7CA3;
	background-image:none;
}
.BlueWpsPortletBody{
	background-image:none;
	padding:5px;
}

.BlueBlueWpsPortlet{
	border-left: 1px solid;
	border-right: 1px solid;
	border-bottom: 1px solid;
	border-color: #D8E7EF;
	background: #D8E7EF;
}
.BlueBlueWpsPortletBody{
	background:#D8E7EF;
	padding:5px;
} 
 
.BlueWpsPortletTitleBar{
	font-size: 11px;
	font-weight:bold;
	color: #FFFFFF;
	background: url("./colors/trp/blueportletTitleBarBg.gif") repeat-x;
	background-color: #FFFFFF;
	padding-left: 5px;
	width:100%;
	white-space: nowrap;
}

.BlueWpsPortletTitleBar img{
	vertical-align:middle;
}


.GreenWpsPortlet{
	border-left: 1px solid;
	border-right: 1px solid;
	border-bottom: 1px solid;
	border-color: #689B5F;
	background-image:none;
}
.GreenWpsPortletBody{
	background-image:none;
		padding:5px;
}
.GreenGreenWpsPortlet{
	border-left: 1px solid;
	border-right: 1px solid;
	border-bottom: 1px solid;
	border-color: #E0E9D8;
	background:#E0E9D8;
}
.GreenGreenWpsPortletBody{
	background:#E0E9D8;
		padding:5px;
}

.GreenWpsPortletTitleBar{
	font-size: 11px;
	font-weight:bold;
	color: #FFFFFF;
	background: url("./colors/trp/greenportletTitleBarBg.gif") repeat-x;
	background-color: #FFFFFF;
	padding-left: 5px;
	width:100%;
	white-space: nowrap;
}

.GreenWpsPortletTitleBar img{
	vertical-align:middle;
}


.OrangeWpsPortlet{
	border-style:solid;
	border-width:0px 1px 1px;
	border-color: #EB8516;
	background-image:none;
}
.OrangeWpsPortletBody{
	background-image:none;
		padding:5px;

}

.OrangeOrangeWpsPortlet{
	border-left: 1px solid;
	border-right: 1px solid;
	border-bottom: 1px solid;
	border-color: #FBE7CF;
	background:#FBE7CF;
}
.OrangeOrangeWpsPortletBody{
	background:#FBE7CF;
		padding:5px;
}




.OrangeWpsPortletTitleBar{
	font-size: 11px;
	font-weight:bold;
	color: #FFFFFF;
	background: url("./colors/trp/orangeportletTitleBarBg.gif") repeat-x;
	background-color: #FFFFFF;
	padding-left: 5px;
	width:100%;
	white-space: nowrap;
}

.OrangeWpsPortletTitleBar img{
	vertical-align:middle;
}


.BrownWpsPortlet{
	border-left: 1px solid;
	border-right: 1px solid;
	border-bottom: 1px solid;
	border-color: #999966;
	background-image:none;
}
.BrownWpsPortletBody{
	background-image:none;
		padding:5px;
}
p.wpsPortletText{
margin:0px;

}
.BrownBrownWpsPortlet{
	border-left: 1px solid;
	border-right: 1px solid;
	border-bottom: 1px solid;
	border-color: #EDEDDB;
	background:#EDEDDB;
}
.BrownBrownWpsPortletBody{
	background:#EDEDDB;
		padding:5px;
}
.BrownWpsPortletTitleBar{
	font-size: 11px;
	font-weight:bold;
	color: #FFFFFF;
	background: url("./colors/trp/brownportletTitleBarBg.gif") repeat-x;
	background-color: #FFFFFF;
	padding-left: 5px;
	width:100%;
	white-space: nowrap;
}

.BrownWpsPortletTitleBar img{
	vertical-align:middle;
}

.wpsPortletIcons{
	text-align: right;
	vertical-align: top;
	padding-right: 3px;
}



.wpsPortletTitleIconNonStandardSize, .wpsPortletTitleToolsIconNonStandardSize {
}



.wpsThinSkinContainerBar{
	height: 12px;
	border: 1px solid white;
	margin-bottom: 2px;
}

.wpsThinSkinContainerBarBorder{
	background: url("./colors/default/portletTitleBarBg.gif") repeat-x;
	background-position: bottom;
	background-color: #FFFFFF;
}

.wpsThinSkinDragZoneContainer{
	width: 75%; 
	display: inline; 
	float: left;
}

.wpsThinSkinInvisible{
	visibility: hidden;
}

.wpsThinSkinVisible{
	visibility: visible;
}

.wpsThinSkinMenuContainer{
	display: inline; 
	float: right; 
	padding-right: 3px;
}

.wpsSelectedPageIcon{
line-height:23px;
height:23px;}
/*#######################################################################*/
/*# Tab Menu                                                           #*/
/*#####################################################################*/
	#TabMenu {
		background:#003366;
		font-size:10px;
		font-family:Verdana,Arial,Helvetica,sans-serif;
		line-height:normal;
		display:inline;
		margin-right:710px;
		width:100%;
      }
    #TabMenu ul {
		margin:-10px 0px 0px 0px;
		padding:10px 10px 0 10px;
		list-style:none;
      }
    #TabMenu li {
		display:inline;
		margin:0;
		padding:0;
      }
	#TabMenu .TRP_Tab_Selected span a, #TabMenu .TRP_Tab_Unselected span a,
	#TabMenu .TRP_Tab_Selected span a:hover, #TabMenu .TRP_Tab_Unselected span a:hover,
	#TabMenu .TRP_Tab_Selected span a:visited,#TabMenu .TRP_Tab_Unselected span a:visited {
		text-decoration:none;
		font-family: Verdana,Arial,Helvetica,sans-serif;
		font-weight:700;
		font-size: 10px;
	}
	#TabMenu .TRP_Tab_Unselected span a,
	#TabMenu .TRP_Tab_Unselected span a:hover,
	#TabMenu .TRP_Tab_Unselected span a:visited {
		color:#FFF;
	}
	#TabMenu .TRP_Tab_Selected span a,
	#TabMenu .TRP_Tab_Selected span a:hover, 
	#TabMenu .TRP_Tab_Selected span a:visited {
		color:#EB8515;
	}
	#TabMenu .TRP_Tab_Selected .wpsPageBar1 ul {
		float:left;
		clear:both;
		display:inline;
		height: 16px;
	}

	#TabMenu .TRP_Tab_Selected, #TabMenu .TRP_Tab_Unselected {
/*	float:left;
	background:url("./images/tableftF.jpg") no-repeat left top;
	margin:0;
	padding:0 0 0 4px;
	*/
  }
#TabMenu TD.TRP_Tab_Unselected {
	background:url("./images/trp/PortalPlace_Center24.gif") repeat-x;
	height:24px;
 }

#TabMenu TD.TRP_Tab_Selected{
	background-color:#FFFFFF;
	height:24px;
}

/* Commented Backslash Hack hides rule from IE5-Mac \*/
#TabMenu span {float:none;}
/* End IE5-Mac hack */
#TabMenu .TRP_Tab_Selected {
	background-position:0% -42px;
  }
#TabMenu .TRP_Tab_Selected span {
	background-position:100% -42px;
	color:#EB8515;
  }



/****************************************************************/
/***** STYLES FOR CSS ROLLOVERS **********************/
/****************************************************************/
.Spacer span{
padding:4px 0px;
} 
ul#nav { clear: both;background-color: #fff;padding: 0;position: relative;z-index: 50;list-style: none;}
#nav, #nav ul { /* all lists */ padding: 2;	margin:  0;	list-style: none; line-height:14px; background-color: #fff;}
#nav li { font-size:10px;color: #2381B1; font-weight: bold; list-style: none; list-style-image:none; list-style-position:outside; list-style-type:none; float:left; position:relative; }
#nav .pageBarSeparator {list-style: none; padding: 5px 10px; color: #2381B1;}

#nav ul li ul,
#nav ul li ul li,
#nav ul li ul li span, 
#nav ul li ul li a {margin: 0px; padding: 0px; }

#nav ul li { /*border-top:1px solid #FFF;	border-left: 1px solid #FFF; border-right: 1px solid #FFF;*/ list-style: none; font-weight: bold; }
#nav li a.Pnav {color: #2381B1;	vertical-align:middle;} 

#nav .wpsPageBar0 li.wpsSelectedPage a.Pnav, 
#nav .wpsPageBar0 li.wpsUnSelectedPage a.Pnav,
#nav .wpsPageBar0 ul.wpsPageBar1 li.wpsSelectedPage a.Pnav{	color: #EB8515;	float:left;	padding:5px 5px;font-weight: bold}
#nav ul li ul li a{
padding:4px 4px;
}
#nav .wpsPageBar0 li.wpsUnSelectedPage a.Pnav, #nav ul.wpsPageBar1 li.wpsUnSelectedPage a.Pnav{	color: #2381B1;	float:left; vertical-align:middle;padding:5px 5px;}
#nav .wpsPageBar0 li ul li a{	padding:5px 5px;}
#nav .wpsPageBar1{	clear:left;}
#nav li ul li a, #nav li ul li {		line-height: 1em;	font-weight: bold;}

#nav li li a{	font-variant: normal;	font-weight: bold;}
#nav li { /* all list items */	float: left;	width: auto;/* width needed or else Opera goes nuts */}
#nav li ul li {	width: 200px;	clear: left; 	border-color:#EEEEEE;	border-style:solid;	border-width:1px;}
#nav li ul ul { /* third-and-above-level lists */	margin: -29px 0 0 160px; }
#nav .wpsPageBar0 li ul {background:#FFFFFF none repeat scroll 0%; left:-999em; position:absolute;}

/* Style and position the table so it takes no part in the menu function. The font size is necessary for IE5.5 */
#nav .wpsPageBar0 table {border-collapse:collapse; width:0; height:0; position:absolute; top:0; left:0;}
.wpsPageBar0,#nav .wpsPageBar0, #nav .wpsPageBar0 ul {list-style-type:none; padding:0; margin:0; font-family:arial, sans-serif;}
.nav_last a {border-right: 2px solid #fff;}
#nav .wpsPageBar0 li.top a.top_link {display:block; float:left; height:35px;}
#nav .wpsPageBar0 li.top a span {position:absolute; left:-9999px; top:0; z-index:0; font-size:10px;display:block} /* move the link text off screen */

/* keep the 'next' level invisible by placing it off screen. */
a.Pnav span{ display:block;	font-size:10px; height:auto; text-indent:0px; text-decoration:none;	vertical-align:middle;font-weight:bold;}



.wpsPageBar0 {
	position:relative;
	z-index:500;
}









.portlet-dlg-icon-label {
    font-weight: bold;
    color: #000000; 
    white-space: nowrap;
}


.portlet-icon-label {
    color: #000000;
}


.portlet-section-header {
    font-weight: bold;
    color: #333333;
}


.portlet-section-header-highlight {
    background-color: #F0F0F0;
}
   

.portlet-font {
    font-family: Verdana, Arial, Helvetica, sans-serif;
    font-size: x-small;
    color: #333333;
}


.portlet-section-body {
}

.portlet-section-alternate {
}

.portlet-section-selected {
}

.portlet-section-footer {
}


.portlet-section-subheader {
    color: #333333;
}





.portlet-table-text {
}


.portlet-table-selected {
    color: #333333;
    background-color: #c5d1de;
}


.portlet-table-alternate {
    color: #333333;
}


.portlet-table-header {
    font-weight: normal;
    color: #000000;
    text-align: left;
    background-color: #ffffff;
    border-width: 0px 0px 0px 0px;
    border-style: none;
    border-color: #aaaaaa;
}




.portlet-table-body {
    text-align: left;
    border-width: 1px 0px 0px 0px ! important;
    border-style: solid ! important;
    border-color: #aaaaaa ! important;
}

.portlet-table-footer{
}





.portlet-table-subheader {
    font-weight: bold;
    color: #000000;
    text-align: left;
}


.portlet-form-input-field {
    border: 1px solid #999999;
}


.portlet-form-button { 
    font-weight: bold;
    color: #000000;
    background-color: #DDDDDD;
    background-image: url("./colors/default/ButtonBackground.gif");
    background-repeat: repeat-x;
    background-position: left center; 
    border: 1px solid #919191;
    padding: 2px 4px;
    margin: 0px;
    text-align: center;
}



.portlet-form-field, .portlet-form-field-label {
    color: #333333;
}


.portlet-font-dim {
    color: #808080;
}


.portlet-form-label {
    color: #333333;
}





.portlet-msg-error {
    color: #000000;
}


.portlet-msg-alert {
    color: #000000;
}


.portlet-msg-success {
    color: #000000;
}


.portlet-msg-info {
    color: #000000;
}


.portlet-section-text {
    color: #666666;
}


.portlet-msg-status {
    color: #333333;
}




.portlet-menu {
	background-color: #EEEEEE;  
	border-style: solid;
	border-color: #333333; 
	border-width: 1px;
    padding: 3px;
}


.portlet-menu-item {
	background-color: #EEEEEE;
	border-style: solid;
	border-color: #333333;
	border-width: 1px;
    padding: 3px;
}


.portlet-menu-item-selected {
	background-color: #aaaaaa;
	border-style: solid;
	border-color: #333333;
	border-width: 1px;
    padding: 3px;
}


.portlet-menu-item-hover {
	background-color: #cccccc;
	border-style: solid;
	border-color: #333333;
	border-width: 1px;
    padding: 3px;
}


.portlet-menu-item-hover-selected {
	background-color: #cccccc;
	border-style: solid;
	border-color: #333333;
	border-width: 1px;
    padding: 3px;
}


.portlet-menu-cascade-item {
	background-color: #eeeeee;
   	border-style: solid;
	border-color: #333333;
	border-width: 1px;
    padding: 3px 3px 3px 3px;
}


.portlet-menu-cascade-item-selected {
	background-color:#cccccc;
    border-style: solid;
	border-color: #333333;
	border-width: 1px;
    padding: 3px 3px 3px 3px;
}


.portlet-menu-description {
}


.portlet-menu-caption {
	border-style: solid;
	border-color: #333333; 
	border-width: 1px;
}


.portlet-separator {
    background-color: #999999;
    height: 1px;
}

div.portlet-separator {
    background-color: #999999;
	margin: 2px 0 2px 0;
}

.help {
	font-size: xx-small; COLOR: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;
}
.help_indent {
	font-size: xx-small; COLOR: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; BACKGROUND-COLOR: #ffffff
}
A.help {
	font-family: Verdana, Arial, Helvetica, sans-serif; font-size: xx-small; COLOR: #3366CC
}
A.help:visited {
	font-family: Verdana, Arial, Helvetica, sans-serif; font-size: xx-small; COLOR: #666699
}
A.help:active {
	font-family: Verdana, Arial, Helvetica, sans-serif; font-size: xx-small; COLOR: #3366CC
}
A.help:hover {
	font-family: Verdana, Arial, Helvetica, sans-serif; font-size: xx-small; COLOR: #3366CC
}
H2.help {
	PADDING-left: 8px; font-weight: bold; font-size: x-small; COLOR: #000000; PADDING-TOP: 22px; BORDER-BOTTOM: 1px solid #B0B0B0; HEIGHT: 16px; BACKGROUND-COLOR: #F0F0F0; TEXT-ALIGN: left
}
H3.help {
	font-size: x-small; PADDING-left: 8px; font-weight: bold; PADDING-TOP: 3px; HEIGHT: 20px; BACKGROUND-COLOR: #F0F0F0
}
H3 A.help {
	font-size: x-small; COLOR: #000000; BACKGROUND-COLOR: #F0F0F0; TEXT-DECORATION: none
}
H4.help {
	PADDING-left: 8px; MARGIN: 16px 20px 0px 20px; COLOR: #000000; PADDING-TOP: 3px; HEIGHT: 20px; BACKGROUND-COLOR: #F0F0F0; TEXT-ALIGN: left
}
H4 A.help {
	font-weight: normal; font-size: xx-small; COLOR: #000000; font-style: italic; BACKGROUND-COLOR: #F0F0F0
}
P.help {
	PADDING-BOTTOM: 0px; MARGIN: 2px 20px 0px 30px; PADDING-TOP: 4px
}
P.help_indent {
	PADDING-BOTTOM: 0px; MARGIN: 2px 20px 0px 0px; PADDING-TOP: 4px
}
UL.help {
	MARGIN-left: 56px; MARGIN-right: 20px
}
OL.help {
	MARGIN-left: 56px; MARGIN-right: 20px
}
DL.help {
	MARGIN-left: 56px; MARGIN-right: 20px
}
PRE.help {
	MARGIN-left: 30px; font-family: monospace;
}
DT A.help {
	FONT-WEIGHT: 900; COLOR: #000000
}
DD.help {
	PADDING-BOTTOM: 20px; PADDING-TOP: 2px
}
LI.help {
	PADDING-BOTTOM: 2px; PADDING-TOP: 2px
}
TABLE.help {
	PADDING-right: 20px; PADDING-left: 30px; MARGIN-left: 28px
}
TH.help {
	TEXT-ALIGN: center; PADDING-TOP: 5px; PADDING-BOTTOM: 5px; VERTICAL-ALIGN: top;
}
TD.help {
	PADDING-BOTTOM: 3px; VERTICAL-ALIGN: top; PADDING-TOP: 3px; TEXT-ALIGN: left
}
samp {
    font-size: x-small;
}

TABLE.dataTable {
	color              : black; 
	width              : 90%;
	border-collapse    : collapse;
	border-color	   : Black;
	background-color   : white;  
	margin-left  : 28px;
}
.dataTable TH {
   font-weight: bold;
   font-size			: 0.7em;
   color                : black; 
   background-color  	: #F0F0F0;  
	
}
/* Basic Portlet Structure */

div.header {
   width: 100%;
   float: left;
}

div.headlines {
   width: 100%;
   float: left;
}

div.portletTools {
   float: right;
}

div.subheader {
   width: 100%;
   float: left;
}

div.content {
   width: 100%;
   float: left;
}

div.column {
   margin: 0;
   padding: 0;
   float: left;
}

div.grouping {} 

div.endfloat {
   padding: 0;
   border: 0;
   clear: both;
}


/*                        Typographic Control  
*
* What's all this voice stuff?								
* IE5/Win renders font sizes as one unit larger than other browsers. 			
* Therefore, small in all browsers would look like medium in IE5/Win.				
* The Tantek Box Model Hack allows IE5/Win to be served a different font size than other browsers.	
* IE5/Win sees this style: voice-family:  "\"}\""; and mistakenly thinks the style is over. 		
* voice-family: inherit; allows other browsers to recover, and read the correct style. 		
* Opera has the same behavior as IE5/Win, so it never gets the right style. 			
* The "Be nice to Opera" rule at the end reinforces the correct style to Opera.		
* For more information: http://tantek.com/CSS/Examples/boxmodelhack.html 
*/

div.OOB h1 {
   margin: 0;
   padding: 0;
   font: normal normal normal x-large Helvetica, Arial, Verdana, sans-serif;  /* for IE5/Win */
   voice-family: "\"}\""; 
   voice-family: inherit;
   font: normal normal normal xx-large Helvetica, Arial, Verdana, sans-serif; /* for Compliant Browsers */
}
	html>div.OOB h1 {
	   font: normal normal normal xx-large Helvetica, Arial, Verdana, sans-serif; /* Be nice to Opera */
	}

div.OOB h2 {
   margin: 0;
   padding: 0;
   font: normal normal normal large Helvetica, Arial, Verdana, sans-serif; /* for IE5/Win */
   voice-family: "\"}\""; 
   voice-family: inherit;
   font: normal normal normal x-large Helvetica, Arial, Verdana, sans-serif; /* for Compliant Browsers */
}
	html>div.OOB h2 {
	   font: normal normal normal x-large Helvetica, Arial, Verdana, sans-serif; /* Be nice to Opera */
	}

div.OOB h3 {
   margin: 0;
   padding: 0;
   font: normal normal normal medium Helvetica, Arial, Verdana, sans-serif; /* for IE5/Win */
   voice-family: "\"}\""; 
   voice-family: inherit;
   font: normal normal normal large Helvetica, Arial, Verdana, sans-serif; /* for Compliant Browsers */
}
	html>div.OOB h3 {
	   font: normal normal normal large Helvetica, Arial, Verdana, sans-serif; /* Be nice to Opera */
	}

div.OOB h4 {
   margin: 0;
   padding: 0;
   font: normal normal normal small Helvetica, Arial, Verdana, sans-serif; /* for IE5/Win */
   voice-family: "\"}\""; 
   voice-family: inherit;
   font: normal normal normal medium Helvetica, Arial, Verdana, sans-serif; /* for Compliant Browsers */
}
	html>div.OOB h4 {
	   font: normal normal normal medium Helvetica, Arial, Verdana, sans-serif; /* Be nice to Opera */
	}

div.OOB h5 {
   margin: 0;
   padding: 0;
   font: normal normal normal x-small Helvetica, Arial, Verdana, sans-serif; /* for IE5/Win */
   voice-family: "\"}\""; 
   voice-family: inherit;
   font: normal normal normal small Helvetica, Arial, Verdana, sans-serif; /* for Compliant Browsers */
}
	html>div.OOB h5 {
	   font: normal normal normal small Helvetica, Arial, Verdana, sans-serif; /* Be nice to Opera */
	}

div.OOB h6 {
   margin: 0;
   padding: 0;
   font: normal normal normal xx-small Helvetica, Arial, Verdana, sans-serif; /* for IE5/Win */
   voice-family: "\"}\""; 
   voice-family: inherit;
   font: normal normal normal x-small Helvetica, Arial, Verdana, sans-serif; /* for Compliant Browsers */
}
	html>div.OOB h6 {
	   font: normal normal normal x-small Helvetica, Arial, Verdana, sans-serif; /* Be nice to Opera */
	}

div.OOB p {
   font: normal normal normal xx-small Helvetica, Arial, Verdana, sans-serif;
}



/* Grouping Controls  */

div.grouping {
  float: left;
} 

div.grouping a {
   text-decoration: none;
}

div.grouping a img.float {
   border: 0;
   float: left;
}

div.grouping a img.inline {
   border: 0;
}



/* Getting Started Portlet Specific Styles  */
div#OOBgettingStarted div.header {
   width: 100%;
   background: #5598e9 url(images/oob/stars.gif) top left no-repeat;
}

div#OOBgettingStarted div.headlines {
   color: #fff;
   background: transparent url(images/oob/largeHelpIcon.gif) top right no-repeat;
}
	div#OOBgettingStarted div.headlines h1 {
	   padding-top: 22px;
  	   padding-left: 15px;
   	   padding-bottom: 0;
   	   padding-right: 183px;
	}
	div#OOBgettingStarted div.headlines h3 {
         padding-top: 4px;
  	   padding-left: 15px;
   	   padding-bottom: 18px;
   	   padding-right: 183px;
	   width: 502px;
	}

div#OOBgettingStarted div.portletTools {
   display: none;
}

div#OOBgettingStarted div.subheader {
   color: #fff;
   background: #1467cd;
}
	div#OOBgettingStarted div.subheader h4 {
	   padding: 20px 15px;
	}

div#OOBgettingStarted div.content {
   background: #e0edfd url(images/oob/corner-b-l-6.gif) bottom left no-repeat;
}


div#OOBgettingStarted div.one,
div#OOBgettingStarted div.two {
   	margin-top: 15px;
	width: 48%;
}


div#OOBgettingStarted div.grouping {
   margin: 8px;
}
	div#OOBgettingStarted div.grouping h5 {
  	   padding-left: 73px;
	   color: #2A7DE3;
	   background: transparent;
	   font-weight: bold;
	}
	div#OOBgettingStarted div.grouping p {
	   margin: 0;
  	   padding-left: 73px;
	   color: #404040;
	   background: transparent;
	   font-size:x-small;
	   font-family:Verdana, Arial, Helvetica, sans-serif
	}

div#OOBgettingStarted div.corner-b-r-6 {
   height: 6px;
   background: transparent url(images/oob/corner-b-r-6.gif) bottom right no-repeat;
}



/* Getting Started Help Portlet Specific Styles */
div#OOBgettingStartedHelp{
	/* IE bidi fix */
	padding-right: 5px;
	width: 94%;
}

div#OOBgettingStartedHelp div.header {
   display: none;
}

div#OOBgettingStartedHelp div.subheader {
   display: none;
}

div#OOBgettingStartedHelp h3 {
   	color: #222;
	padding: 5px 0 3px 0;
	background: #fff;
	margin: 0 0 4px 0;
}

div#OOBgettingStartedHelp h3.help {
	color: #222;
}

div#OOBgettingStartedHelp h6 {
   padding: 0 0 7px 0;
   margin: 0;
   color: #666;
   font-size:small;
   font-family: Arial, Helvetica, sans-serif;
}

div#OOBgettingStartedHelp h6 a { 
   color: #1C66C1;
   font-weight: normal;
   text-decoration: none;
}

div#OOBgettingStartedHelp h6 a:hover {
	color: #164ead;
	text-decoration: underline; }

div#OOBgettingStartedHelp h6.link {
	   margin-left: 3px;
  	   padding-left: 13px;
         background: transparent url(images/oob/bullet.gif) left 5px no-repeat; }



/* Home Apps Portlet Specific Styles */

#OOBportalApps {
   width: 250px;
   /* Fixes bidi bug in IE */	
   padding-right: 5px;		
}

#OOBportalApps div.headlines {
   color: #000;
   background: #e4edfb url(images/oob/corner-t-l-6.gif) top left no-repeat;
}

#OOBportalApps div.headlines h4{
   width: 224px;
   margin-left: 6px;
   padding-top: 13px;
   padding-left: 13px;
   padding-bottom: 10px;
   padding-right: 7px;
   font-weight: bold;
   background: transparent url(images/oob/corner-t-r-6.gif) top right no-repeat;
}

#OOBportalApps div.portletTools {
   display: none;
}

#OOBportalApps div.subheader {
   display: none;
}

#OOBportalApps div.content {
   padding: 0;
   background: #E4EDFB url(images/oob/corner-b-l-6.gif) bottom left no-repeat;
} 

#OOBportalApps div.columnone {
   padding: 0 6px;
}

#OOBportalApps a {
   color: #767676;
   background: transparent;
   text-decoration: none;
}

#OOBportalApps a img {
   margin-top: 0;
   border: 0;
   padding-top: 0;
   padding-left: 6px;
   padding-bottom: 0;
   padding-right: 7px;
}

#OOBportalApps div.grouping {
   padding: 1px 0;
   color: #767676;
   background: transparent;
   display: block;
}

#OOBportalApps div.grouping a {
   width: 238px;
   background: #e4edfb;
   float: left;
   -moz-border-radius: 4px;
    padding: 1px 0;
}

#OOBportalApps div.grouping a:hover {
   background: #B8D3FD;
}

#OOBportalApps div.grouping a h5 {
   margin-top: 0;
   padding-top: 7px;
   padding-left: 60px;
   padding-bottom: 0;
   padding-right: 6px;
   font-weight: bold;
}

#OOBportalApps div.grouping a p {
   margin: 0;
   padding-top: 1px;
   padding-left: 60px;
   padding-bottom: 3px;
   padding-right: 6px;
}

#OOBportalApps div.corner-b-r-6 {
   height: 6px;
   background: transparent url(images/oob/corner-b-r-6.gif) bottom right no-repeat;
}



/* Home New Portlet Specific Styles */

#OOBportalWhatsNew {}

#OOBportalWhatsNew  .header h2 {
/* fixes bidi bug in IE */
   padding-right: 5px;
   padding-bottom: 2px;
   color: #1C66C1;
   background: transparent;
   font-family: Arial, Helvetica, sans-serif;
   font-size: x-large;
}

#OOBportalWhatsNew .header h6 {
/* fixes bidi bug in IE */
   padding-right: 5px;
   margin-right: 5px;
   background: transparent;
   font-family:Verdana, Arial, Helvetica, sans-serif;
   font-size: small;
   color: #888;
}

#OOBportalWhatsNew .columnone {
/* fixes bidi bug in IE */
   padding-right: 5px;
   margin-top: 20px;	
   width: 49%;
   float: left;
}

#OOBportalWhatsNew .columnone h4 {
   margin: 0 0 2px 0;
   color: #1C66C1;
   font-family:Arial, Helvetica, sans-serif;
   font-size: large;
   background: transparent;
}

#OOBportalWhatsNew .columnone p {
   margin: 0 0 15px 0;
   color: #888;
   background: transparent;
   font-family:Verdana, Arial, Helvetica, sans-serif;
   font-size: small;
}

#OOBportalWhatsNew .columnone .grouping {
   padding-bottom: 10px;
}

#OOBportalWhatsNew .columntwo {
   margin: 20px 0 0 0;
   width: 49%;
   float: right;
}

#OOBportalWhatsNew .columntwo h4 {
   margin: 0 0 2px 0;
   color: #1C66C1;
   font-family:Arial, Helvetica, sans-serif;
   font-size: large;
   background: transparent;
}

#OOBportalWhatsNew .columntwo p {
   margin: 0 0 15px 0;
   margin-right: 5px;
   color: #888;
   background: transparent;
   font-family:Verdana, Arial, Helvetica, sans-serif;
   font-size: small;
}

#OOBportalWhatsNew .columntwo .grouping {
   margin: 0 5px 0 5px;
   padding-bottom: 10px;
   background: #FFFFFF
}

/* Home Start Portlet Specific Styles  */

div#OOBportalStart{
	width: 96%;
	padding-right: 5px;
}

div#OOBportalStart h4 {
		padding: 0;
		margin: 0 0 5px 0;
		font: normal medium "Helvetica", "Arial", "Verdana", sans-serif; }
		
div#OOBportalStart h4 a {
			display: block;
   			padding-top: 4px;
   			padding-left: 20px;
   			padding-bottom: 4px;
   			padding-right: 6px;
			background: transparent url(images/oob/arrow_left.gif) left 50% no-repeat;
			text-decoration: none;
			color: #e05f00; }
			
div#OOBportalStart h4 a:hover {
				color: #af4a00;
				background-color: #fff;
				text-decoration: underline; }

#OOBportalStart .portletTools { display: none; }

#OOBportalStart .subheader {display: none; }

#OOBportalStart h2 {
   padding: 15px 0 0 0;
   color: #2871CB;
   background: transparent
}

#OOBportalStart h5 {
   padding: 2px 0 0 0;
   color: #898989;
   background: transparent;
}


/* Home Welcome Portlet Specific Styles   */

#OOBportalWelcome div.col1 {
   margin: 0;
   float: left;
}

#OOBportalWelcome div.col2 {
   float: right;
} 

#OOBportalWelcome div.endfloat {
   border: 0;
   clear: both;
}

#OOBportalWelcome h1 {
   margin: 0;
   padding: 0;
   font: normal normal normal x-large Helvetica, Arial, Verdana, sans-serif;
}

div#OOBportalWelcome h1 {
   padding-top: 16px;
   padding-left: 30px;
   padding-bottom: 0;
   padding-right: 0;
   color: #fff;
   background: transparent url(images/oob/corner-t-l.gif) top left no-repeat;
}

#OOBportalWelcome h2 {
   margin: 0;
   padding: 0;
   font: normal normal normal large Helvetica, Arial, Verdana, sans-serif;
}

div#OOBportalWelcome h2 {
   color: #fff;
   background: transparent;
}

div#OOBportalWelcome h2 span {
   color: #1d477c;
   background: transparent;
}

div#OOBportalWelcome h2 {
   color: #1d477c;
   padding-top: 0;
   padding-left: 30px;
   padding-bottom: 6px;
   padding-right: 0;
}

#OOBportalWelcome h3 {
   margin: 0;
   padding: 0;
   font: normal normal normal medium Helvetica, Arial, Verdana, sans-serif
}

div#OOBportalWelcome h3 {
   padding-top: 36px;
   padding-left: 301px;
   padding-bottom: 0;
   padding-right: 27px;
   color: #2871cb;
   background: transparent;
   font-weight: bold;
}

#OOBportalWelcome h4 {
   margin: 0;
   font: normal normal normal small Helvetica, Arial, Verdana, sans-serif;
}

div#OOBportalWelcome h4 {
   padding-top: 14px;
   padding-left: 301px;
   padding-bottom: 0;
   padding-right: 27px;
   color: #fe9a2e;
   background: transparent;
   font-weight: bold;
}

div#OOBportalWelcome h4 a {
			margin-left: 3px;
			display: block;
			padding-top: 4px;
   			padding-left: 21px;
   			padding-bottom: 4px;
   			padding-right: 4px;
			background: transparent url(images/oob/arrow_left.gif) left 50% no-repeat;
			text-decoration: none;
			color: #e05f00; }
			
div#OOBportalWelcome h4 a:hover {
				color: #af4a00;
				text-decoration: underline; }

#OOBportalWelcome h6 {
   margin: 0;
   padding: 0;
   font: normal normal bold x-small Helvetica, Arial, Verdana, sans-serif;
}

div#OOBportalWelcome h6 {
   padding-top: 0;
   padding-left: 301px;
   padding-bottom: 0;
   padding-right: 27px;
   color: #515151;
   background: transparent;
   font-weight: normal;
   line-height: 16px;
}
div#OOBportalWelcome {
	/* fixes bidi bug in IE */
	padding-right: 5px;
 }

div#OOBportalWelcome div.header {
   width: 700px;
   background: #b8c2c9 url(images/oob/corner-t-r.gif) top right no-repeat;
}

div#OOBportalWelcome div.content {
   margin: 0;
   background: #eee;
}

div#OOBportalWelcome div.col1 {
   width: 237px;
   padding-top: 15px;
   padding-left: 27px;
   padding-bottom: 0;
   padding-right: 0;
   float: left; 
}

div#OOBportalWelcome div.col2 {
   float: none;
   display: block;
}

div#OOBportalWelcome div.content {
    background: #eee url(images/oob/corner-b-l.gif) bottom left no-repeat;
    line-height: 1.2;
}

#OOBportalWelcome div.br {
    background: url(images/oob/corner-b-r.gif) 100% 100% no-repeat
}

/* Product Blurb Portlet Specific Styles  */

#OOBproductWelcomeBlurb {}

#OOBproductWelcomeBlurb .header { display: none; }

#OOBproductWelcomeBlurb .subheader {display: none; }

#OOBproductWelcomeBlurb .content {
	width: 710px;}

#OOBproductWelcomeBlurb h6{
   margin-top: 0;
   margin-left: 30px;
   margin-bottom: 0;
   margin-right: 15px;
   color: #606060;
   background: transparent;
   font-family: Arial, Helvetica, sans-serif;
   font-size:small;
}

#OOBproductWelcomeBlurb h6 a { 
   color: #1C66C1;
   font-weight: normal;
   text-decoration: none;
}

#OOBproductWelcomeBlurb h6 a:hover {
	color: #164ead;
	text-decoration: underline;
 }

/* Product Welcome Portlet Specific Styles */

#OOBproductWelcome {
   width: 725px;}

#OOBproductWelcome .headerWCM {
   color: #5377AB;	
   background: transparent url(images/oob/message_header_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBproductWelcome .headerSearch {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_search_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBproductWelcome .headerDM {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_documents_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBproductWelcome .headerMessage {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_messaging_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBproductWelcome .headerDomino {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_domino_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBproductWelcome .headerPersonal {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_personalization_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBproductWelcome .headerTemplates {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_templates_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBproductWelcome h1 {
   margin-top: 12px;
   margin-left: 130px;
   margin-bottom: 0;
   margin-right: 20px;
   padding-top: 22px;
   padding-left: 28px;
   padding-bottom: 0;
   padding-right: 0px;
   color: #1C66C1;
   font-family:Arial, Helvetica, sans-serif;
   font-size:xx-large;
}

#OOBproductWelcome h3 {
   margin-top: 0;
   margin-left: 130px;
   margin-bottom: 0;
   margin-right: 20px;
   padding-top: 3px;
   padding-left: 28px;
   padding-bottom: 0;
   padding-right: 0px;
   color: #888888;
   font-family:Arial, Helvetica, sans-serif;
   font-size:large;
}

#OOBproductWelcome .subheader {
   padding-top: 31px;
   padding-left: 19px;
   padding-bottom: 0;
   padding-right: 0;
}

#OOBproductWelcome .content {
   background: #fff;
   padding: 10px 0 0 0;
   width: 700px;
}

#OOBproductWelcome .columnone {
   width: 330px;
   float: left;
}

#OOBproductWelcome .columntwo {
   width: 330px;
   float: right;
}

#OOBproductWelcome .grouping {
   padding-left: 20px;
   padding-right: 20px;
   padding-bottom: 15px;
}

#OOBproductWelcome p {
   background: transparent url(images/oob/arrowCon_left.gif) top left no-repeat;
   margin: 0 0 20px 0;
   margin-left: 10px;
   font-family:Verdana, Arial, Helvetica, sans-serif;
   font-size:small;
   color:#888888;
   padding-left: 28px;
}

#OOBproductWelcome img.float {
   display: none;
}




/* Workcenter Portlet Specific Styles */

#OOBworkcenter {
   width: 300px;
}

#OOBworkcenter div.headlines {
   padding: 17px 17px 7px 17px;
   color: #3966CD;
   background: transparent;
}

#OOBworkcenter div.headlines h4{
   padding-top: 30px;
   color: #77A1ED;
   background: transparent url(images/oob/corner-t-r-6.gif) top right no-repeat;
}

#OOBworkcenter div.portletTools {display: none;}
#OOBworkcenter div.subheader {display: none;}

#OOBworkcenter div.content {
   padding: 0;
} 

#OOBworkcenter div.columnone {
   padding: 0 6px;
}

#OOBworkcenter a {
   color: #767676;
   background: transparent;
   text-decoration: none;
   display: block;
}

#OOBworkcenter a img {
   margin: 5px;
   border: 0;
   padding: 0 0 0 0;
}

#OOBworkcenter div.grouping {		
   padding: 4px 0;
   color: #767676;
   background: transparent;
   display: block;
}

#OOBworkcenter div.grouping a {
   width: 288px;	
   background: #fff;
   float: left;
   -moz-border-radius: 4px;
}

#OOBworkcenter div.grouping a:hover {
   background: #B8D3FD;
}

#OOBworkcenter div.grouping a p {
   margin: 0;
   padding-top: 9px;
   padding-left: 80px;
   padding-bottom: 8px;
   padding-right: 6px;
   font-family:Verdana, Arial, Helvetica, sans-serif;
   font-size:x-small;
   color:#404040
}

#OOBworkcenter div.endfloat {
   clear: both;
}


/* Admin Section Portlet Specific Styles */

#OOBadminSection{
	width: 725px;
}

#OOBadminSection .headerUI {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_portalUI_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBadminSection .headerAccess {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_access_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBadminSection .headerSettings {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_settings_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBadminSection .headerContent {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_content_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBadminSection .headerSearch {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_search_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBadminSection .headerAnalysis {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_analysis_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBadminSection .headerVirtual {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_vps_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBadminSection .headerPortlets {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_portlets_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

#OOBadminSection a{
	display: block;
	text-decoration: none;
}

#OOBadminSection a:hover{
	text-decoration: underline;
}

#OOBadminSection div.headlines h1 {
   margin-top: 12px;
   margin-left: 130px;
   margin-bottom: 0;
   margin-right: 20px;
   padding-top: 20px;
   padding-left: 16px;
   padding-bottom: 0;
   padding-right: 0px;
   color: #1c66c1;
}

#OOBadminSection .headlines h3 {
   margin-top: 0;
   margin-left: 130px;
   margin-bottom: 0;
   margin-right: 20px;
   padding-top: 7px;
   padding-left:16px;
   padding-bottom: 25px;
   padding-right: 0px;
   color: #888;
}

#OOBadminSection .wrap h3,
#OOBadminSection .wrap h5 {
   padding-top: 0;
   padding-left: 16px;
   padding-bottom: 0;
   padding-right: 21px;
}

#OOBadminSection .one h3,
#OOBadminSection .one h5 {
   padding-top: 0;
   padding-left: 16px;
   padding-bottom: 0;
   padding-right: 8px;
   padding: 0 8px 0 16px;
}

#OOBadminSection .two h3,
#OOBadminSection .two h5 {
   padding-top: 0;
   padding-left: 8px;
   padding-bottom: 0;
   padding-right: 16px;
}

#OOBadminSection .content h3 {
   color: #3071c7;
}

#OOBadminSection h3special {
   color: #F86000;
   background: transparent;
   font-family:Arial, Helvetica, sans-serif;
   font-size:large;
   margin-left:7px
}

#OOBadminSection h5 {
   color: #888;
   background: transparent;
}

#OOBadminSection h5.title {
   color: #585858;
   background: transparent;
   font-weight: bold;
}

#OOBadminSection h5.title em {
   color: #F86000;
   background: transparent;
   font-style: normal;
}

#OOBadminSection h5.break {
   margin-top: 15px;
   display: block;
}

#OOBadminSection div.header {
   background: #e0edfd;
}

#OOBadminSection div.headlines {
   background: transparent;
}

#OOBadminSection div.headlines img {
   margin-top: 17px;
   margin-left: 0;
   margin-bottom: 0;
   margin-right: 19px;
   float: right;
}

#OOBadminSection div.subheader {
   height: 4px;
   margin-bottom: 17px;
   background: #e0edfd;
}

#OOBadminSection div.subheader img {
   float: right;
}

div#OOBadminSection div.one,
div#OOBadminSection div.two {
   width: 49%;
}


/* Admin Welcome Portlet Specific Styles */
#OOBadminWelcome{
	width: 725px;
}

#OOBadminWelcome .header {
   color: #5377AB;	
   background: transparent url(images/oob/welcome_administration_left.gif) top left no-repeat;
   height: 140px;
   width: 720px;
}

div#OOBadminWelcome h1 {
   margin-top: 30px;
   margin-left: 120px;
   margin-bottom: 0;
   margin-right: 20px;
   padding-top: 0;
   padding-left: 9px;
   padding-bottom: 0;
   padding-right: 0px;
   color: #1963c6;
   background: transparent;
   font-size:x-large;
}

div#OOBadminWelcome h3 {
   margin-top: 0;
   margin-left: 120px;
   margin-bottom: 0;
   margin-right: 20px;
   padding-top: 12px;
   padding-left: 9px;
   padding-bottom: 24px;
   padding-right: 0;
   color: #888;
   background: transparent;
}

div#OOBadminWelcome a{
   display: block;
   text-decoration: none;
   padding-top: 0;
   padding-left: 0;
   padding-bottom: 10px;
   padding-right: 5px;
   -moz-border-radius: 4px;
}

div#OOBadminWelcome a:hover{
   background: #e0edfd;
}

div#OOBadminWelcome div.portletTools {
   display: none;
}

div#OOBadminWelcome div.subheader {
   display: none;
}

div#OOBadminWelcome div.one,
div#OOBadminWelcome div.two {
   width: 48%;
}

div#OOBadminWelcome div.grouping {
   width: 93%;
   margin: 8px;
   font-size:small;
}
div#OOBadminWelcome h6 {
	margin: 0;
  	padding-top: 0;
 	padding-left: 73px;
      padding-bottom: 10px;
      padding-right: 0;
	color: #5C5C5C !important;
	background: transparent;
	font-size: x-small;
}

div#OOBadminWelcome h6.more{
	margin: 0;
  	padding-top: 0;
  	padding-left: 73px;
  	padding-bottom: 15px;
  	padding-right: 0;
	color: #5C5C5C !important;
	background: transparent;
	font-size: x-small;
}

div#OOBadminWelcome h6.less{
	margin: 0;
  	padding-top: 0;
  	padding-left: 73px;
  	padding-bottom: 4px;
  	padding-right: 0;
	color: #5C5C5C !important;
	background: transparent;
	font-size: x-small;
}

div#OOBadminWelcome h5 {
	padding: 12px 0 0 0;
	text-indent: 10px;
   	font-size: small;
	margin: 0 0 0 0;
	color: #1C66C1;
	background: transparent;
}

div.OOB div.grouping img.float {
	border: 0;
	float: left;
}

div#OOBadminWelcome div.endfloat h4 {
   margin: 0 20px 0 20px;
   padding: 19px 6px 0 6px;
   color: #606060;
   background: transparent;
   font-family:Arial, Helvetica, sans-serif;
   font-size:small;
}








.wpsTableAdminHead {
    color: #333333;
    background-color: #CCCCCC;
}


.wpsAdminHeadSeparator {
    background-color: #999999;
    height: 1px;
}


.wpsStatusMsg {
    color: #000000;
    background-color: #E7EFF7; 
    margin: 0px; 
    border: solid 2px #ABCACA; 
    -moz-border-radius: 8px;
    
}






.wpsInstructionText {
    color: #6B6B6B;
    margin: 0.6em 0px 0px 0px;
}



.wpsInstructionText em {
     font-weight: bold;
     font-style: normal;
     color: #8A59A6;
}



.wpsInstructionHeadText {
     font-weight: bold;
     font-size: x-small;
     color: #405380;
}











.wpsIndentXSmall {
        padding-left: 4px; 
}


.wpsIndentSmall {
        padding-left: 8px; 
}


.wpsIndentMedium {
        padding-left: 16px; 
}


.wpsIndentLarge {
        padding-left: 32px; 
}


.wpsIndentXLarge {
        padding-left: 48px; 
}




.wpsTaskIconText {
    font-weight: bold;
    color: #000000; 
    white-space: nowrap;
}


.wpsTaskDisabledIconText {
    font-weight: bold;
    white-space: nowrap;
    color: #888888; 
}


.wpsTaskIconBorderTable, .wpsTaskDisabledIconBorderTable {
    border: 0px;
}


.wpsTaskIconTextBackground {
    background-color: #DDDDDD; 
    background-image: url("./colors/default/ButtonBackground.gif");
    background-repeat: repeat-x;
    background-position: left center;     
    border: 1px solid #919191;
    padding: 2px 4px;
    margin: 0px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
}


.wpsTaskDisabledIconTextBackground {
    background-color: #DDDDDD; 
    background-image: url("./colors/default/ButtonBackground.gif");
    background-repeat: repeat-x;
    background-position: left center;     
    border: 1px solid #919191;
    padding: 2px 4px;
    margin: 0px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
}


.wpsDialogIconText {
    color: #000000;
}


.wpsDialogDisabledIconText {
    color: #888888;
}


.wpsDialogIconBackground {
    text-align: center;
    vertical-align: middle;
    background-color: #DDDDDD;
    background-image: url("./colors/default/DialogIconBackground.gif");
    background-repeat: repeat-x;
    background-position: left center; 
    border-top: 1px solid #919191;
    border-right: 0px none #919191;
    border-bottom: 1px solid #919191;
    border-left: 1px solid #919191;
    padding: 0px 0px;
    margin: 0px;
}


.wpsDialogIconTextBackground {
    text-align: center;
    vertical-align: middle;
    background-color: #DDDDDD; 
    background-image: url("./colors/default/DialogIconTextBackground.gif");
    background-repeat: repeat-x;
    background-position: left center; 
    border-top: 1px solid #919191;
    border-right: 1px solid #919191;
    border-bottom: 1px solid #919191;
    border-left: 0px none #919191;
    padding: 2px 4px;
    margin: 0px;
    white-space: nowrap;
}


.wpsDialogDisabledIconBackground {
    text-align: center;
    vertical-align: middle;
    background-color: #DDDDDD;
    background-image: url("./colors/default/DialogIconBackground.gif");
    background-repeat: repeat-x;
    background-position: left center; 
    border-top: 1px solid #919191;
    border-right: 0px none #919191;
    border-bottom: 1px solid #919191;
    border-left: 1px solid #919191;
    padding: 0px 0px;
    margin: 0px;
}


.wpsDialogDisabledIconTextBackground {
    text-align: center;
    vertical-align: middle;
    background-color: #DDDDDD; 
    background-image: url("./colors/default/DialogIconTextBackground.gif");
    background-repeat: repeat-x;
    background-position: left center; 
    border-top: 1px solid #919191;
    border-right: 1px solid #919191;
    border-bottom: 1px solid #919191;
    border-left: 0px none #919191;
    padding: 2px 4px;
    margin: 0px;
    white-space: nowrap;
}


.wpsDialogIcon {
    width: 16px;
    height: 16px;
}


.wpsButtonBarTop, .wpsButtonBarBottom {
    background-color: #DFDFDF; 
}





.wpsPortletBack {
    background-color: #FFFFFF;
}


.wpsEditBack, .wpsConfigureBack {
    background-color: #FFFFFF;
}


.wpsAdvancedOptions { 
    background-color: #e4e4e4;
    border: solid 1px #4A4A4A;
    margin-left: 10px;
}


.wpsPortletColorBack {
    background-color: #CCCCCC;
}


.wpsPortletHead, .wpsEditHead {
    font-weight: bold;
    color: #333333;
}


.wpsPortletText, .wpsEditText, .wpsPortletSmText, .wpsEditSmText, .wpsPortletTinyText {
    font-family: Verdana, Arial, Helvetica, sans-serif;
    font-size: x-small;
    color: #333333;
}

 
.wpsCopyrightText {
	font-size: xx-small;
    color: #999999;
}


.wpsPortletBody {
}


.wpsTableHead {
    font-weight: bold;
    color: #989898;
    text-align: left;
}


.wpsTableHead th {
	padding: 3px;
}

.wpsTableText {
}


.wpsTableRow, .wpsTableNrmRow {
    color: #333333;
    background-color: #ffffff;
}


.wpsTableSelectedRow {
    color: #333333;
    background-color: #c5d1de;
}



.wpsTableShdRow {
    color: #333333;
}



.wpsTableRow td, .wpsTableNrmRow td, .wpsTableShdRow td {
    border-width: 1px 0px 0px 0px;
    border-style: solid;
    border-color: #aaaaaa;
    padding: 3px;
}



.wpsTableHeadLink, .wpsTableHeadLink:visited, .wpsTableHeadLink:hover, .wpsTableHeadLink:active {
    font-weight: normal;
    color: #000000;
}


.wpsTable {
    border-width: 1px;
    border-style: solid;
    border-color: #aaaaaa;
}

.wpsTable td {
	vertical-align:top;
}


.wpsTableHeadStart, .wpsTableHeadMiddle, .wpsTableHeadEnd {
    font-weight: normal;
    color: #000000;
    text-align: left;
    background-color: #ffffff;
    border-width: 0px 0px 0px 0px;
    border-style: none;
    border-color: #aaaaaa;
}


.wpsTableHeadStartAlignCenter, .wpsTableHeadMiddleAlignCenter, .wpsTableHeadEndAlignCenter {
    font-weight: normal;
    color: #000000;
    text-align: center;
    background-color: #ffffff;
    border-width: 0px 0px 0px 0px;
    border-style: none;
    border-color: #aaaaaa;
}


.wpsTableHeadStartNumeric, .wpsTableHeadMiddleNumeric, .wpsTableHeadEndNumeric {
    font-weight: normal;
    color: #000000;
    text-align: right;
    background-color: #ffffff;
    border-width: 0px 0px 0px 0px;
    border-style: none;
    border-color: #aaaaaa;
}



.wpsTableDataStart, .wpsTableDataMiddle, .wpsTableDataEnd {
    text-align: left;
    border-width: 1px 0px 0px 0px ! important;
    border-style: solid ! important;
    border-color: #aaaaaa ! important;
}



.wpsTableDataStartAlignCenter, .wpsTableDataMiddleAlignCenter, .wpsTableDataEndAlignCenter {
    text-align: center;
    border-width: 1px 0px 0px 0px ! important;
    border-style: solid ! important;
    border-color: #aaaaaa ! important;
}



.wpsTableDataStartNumeric, .wpsTableDataMiddleNumeric, .wpsTableDataEndNumeric {
    text-align: right;
    border-width: 1px 0px 0px 0px ! important;
    border-style: solid ! important;
    border-color: #aaaaaa ! important;
}


.wpsPagingTable, .wpsPagingTableHeader, .wpsPagingTableFooter, .wpsPagingTableBody {
    border: 0px;
}


.wpsPagingTableHeaderIcon, .wpsPagingTableFooterIcon {
    width: 16px;
    height: 16px;
}


.wpsPagingTableHeaderStart {
    background-color: #F0F0F0;
    border-top: 1px solid #aaaaaa;
    border-right: 0px none #aaaaaa;
    border-bottom: 0px none #aaaaaa;
    border-left: 1px solid #aaaaaa;
}


.wpsPagingTableHeaderMiddle {
    background-color: #F0F0F0;
    border-top: 1px solid #aaaaaa;
    border-right: 0px none #aaaaaa;
    border-bottom: 0px none #aaaaaa;
    border-left: 0px none #aaaaaa;
}


.wpsPagingTableHeaderEnd {
    background-image: url("./colors/default/PagingTableTopRight.gif");
    background-repeat: no-repeat;
    background-position: right top;
    background-color: transparent;
}


.wpsPagingTableFooterStart {
    background-color: #F0F0F0;
    border-top: 0px none #aaaaaa;
    border-right: 0px none #aaaaaa;
    border-bottom: 1px solid #aaaaaa;
    border-left: 1px solid #aaaaaa;
}


.wpsPagingTableFooterMiddle {
    background-color: #F0F0F0;
    border-top: 0px none #aaaaaa;
    border-right: 0px none #aaaaaa;
    border-bottom: 1px solid #aaaaaa;
    border-left: 0px none #aaaaaa;
}


.wpsPagingTableFooterEnd {
    background-image: url("./colors/default/PagingTableBottomRight.gif");
    background-repeat: no-repeat;
    background-position: right bottom; 
    background-color: transparent;
}


.wpsPagingTableHeaderEmpty {
	height:7px;
	width:7px;
	line-height:1px;
}


.wpsTableRowDetail td {
	border-width:0px;
   	text-align: left;
   	border-width: 0px ! important;
	padding:2px 3px 5px 3px;
}


.wpsTableSectionHead {
    font-weight: bold;
    color: #000000;
    text-align: left;
}


.wpsTableSectionHead th {
    border-width: 1px 0px 0px 0px;
    border-style: solid;
    border-color: #aaaaaa;
    padding: 3px 0 3px 5px;
}


.wpsTableTopRow td {
    border-color: #aaaaaa ! important;
}


.wpsPagingTableHeaderEmpty {
	height: 7px;
	width: 7px;
	line-height: 1px;
}


.wpsTableRowDetail td {
	border-width: 0px;
   	text-align: left;
   	border-width: 0px ! important;
	padding: 2px 3px 5px 3px;
}




.wpsCompactCheckBox, .wpsCompactRadioButton {
   height: 16px;
   margin-top: 0px;
   margin-bottom: 0px;
}


.wpsEditField{
    border: 1px solid #999999;
}


.wpsButtonText{ 
    font-weight: bold;
    color: #000000;
    background-color: #DDDDDD;
    background-image: url("./colors/default/ButtonBackground.gif");
    background-repeat: repeat-x;
    background-position: left center; 
    border: 1px solid #919191;
    padding: 2px 4px;
    margin: 0px;
    text-align: center;
}


.wpsButtonDisabledText { 
    font-weight: bold;
    color: #888888;
    background-color: #DDDDDD; 
    background-image: url("./colors/default/ButtonBackground.gif");
    background-repeat: repeat-x;
    background-position: left center; 
    border: 1px solid #919191;
    padding: 2px 4px;
    margin: 0px;
    text-align: center;
}


.wpsBrowseButton {
}



.wpsLabelText, wpsRequiredLabelText {
    color: #333333;
}


.wpsRequiredLabelText strong {
    color: #ff0000;
}


.wpsDescriptionText {
    color: #808080;
}




.wpsFieldErrorText {
    color: #000000;
}


.wpsFieldWarningText {
    color: #000000;
}


.wpsFieldSuccessText {
    color: #000000;
}


.wpsFieldInfoText {
    color: #000000;
}


.wpsInlineHelpText {
    color: #666666;
}


.wpsFieldMonospaced {
    font-family: monospace;
    font-size: x-small;
}


.wpsFlagText {
   font-size: xx-small;
   color: #FF0000;
}




.wpsPortletTabBar { 
}


.wpsPortletTabBarSeparator {
    background: url("./colors/default/portletTabSeparator.gif");
	background-repeat: repeat-x;
    background-color: #95a5b9;
    margin: 0px;
    padding: 0px;
    height: 3px;
}


.wpsPortletTabSet {
    border: 0px;
    background-color: transparent;
}


.wpsPortletTab {
    border: 0px;
    background-color: transparent;
}


.wpsPortletSelectedTab {
    border: 0px;
    background-color: transparent;
}


.wpsPortletTabTopStart {
	background-image: url("./colors/default/PortletTabTopLeft.jpg");
    background-repeat: no-repeat;
    background-position: bottom left;
    padding: 0px 2px 0px 2px;
    width: 5px;
    height: 5px;
}


.wpsPortletTabTopCenter {
    background-image: url("./colors/default/PortletTabTopMiddle.jpg");
	background-repeat: repeat-x;
	background-position: bottom;
}


.wpsPortletTabTopEnd {
    background-image: url("./colors/default/PortletTabTopRight.jpg");
    background-repeat: no-repeat;
    background-position: bottom right;
    border-style: none;
    background-color: transparent;
    padding: 0px 2px 0px 2px;
    width: 5px;
    height: 5px;
}


.wpsPortletTabMiddleStart {
    background-image: url("./colors/default/PortletTabCenter.jpg");
    background-repeat: repeat-x;
    background-color: #FFFFFF;
    border-top: 0px none #C0C0C0;
    border-right: 0px none #C0C0C0;
    border-bottom: 0px none #C0C0C0;
    border-left: 1px solid #C0C0C0;
}


.wpsPortletTabMiddleCenter {
    background-image: url("./colors/default/PortletTabCenter.jpg");
    background-repeat: repeat-x;
    background-color: #FFFFFF;
    white-space: nowrap;
    border-style: none;
}


.wpsPortletTabMiddleEnd {
    background-image: url("./colors/default/PortletTabCenter.jpg");
    background-repeat: repeat-x;
    background-color: #FFFFFF;
    border-top: 0px none #C0C0C0;
    border-right: 1px solid #C0C0C0;
    border-bottom: 0px none #C0C0C0;
    border-left: 0px none #C0C0C0;
}


.wpsPortletTabBottomStart {
    background-color: #FFFFFF;
    border-top: 0px none #C0C0C0;
    border-right: 0px none #C0C0C0;
    border-bottom: 0px none #C0C0C0;
    border-left: 1px solid #C0C0C0;
    width: 5px;
    height: 5px;
}


.wpsPortletTabBottomCenter {
    background-color: #FFFFFF;
    border-style: none;
}


.wpsPortletTabBottomEnd {
    background-color: #FFFFFF;
    border-top: 0px none #C0C0C0;
    border-right: 1px solid #C0C0C0;
    border-bottom: 0px none #C0C0C0;
    border-left: 0px none #C0C0C0;
    width: 5px;
    height: 5px;
}



.wpsPortletSelectedTabTopStart {
    background-image: url("./colors/default/PortletSelectedTabTopLeft.jpg");
    background-repeat: no-repeat;
    background-position: bottom left;
    padding: 0px 2px 0px 2px;
    width: 5px;
    height: 5px;
}


.wpsPortletSelectedTabTopCenter {
    background-image: url("./colors/default/PortletSelectedTabTopMiddle.jpg");
    background-repeat: repeat-x;
    background-position: bottom;
    border-top: 0px solid #AAC2E6;
    border-right: 0px none #AAC2E6;
    border-bottom: 0px none #AAC2E6;
    border-left: 0px none #AAC2E6;
}


.wpsPortletSelectedTabTopEnd {
    background-image: url("./colors/default/PortletSelectedTabTopRight.jpg");
    background-repeat: no-repeat;
    background-position: bottom right;
    border-style: none;
    background-color: transparent;
    padding: 0px 2px 0px 2px;
    width: 5px;
    height: 5px;
}


.wpsPortletSelectedTabMiddleStart {
    background-image: url("./colors/default/portletSelectedTabCenterMid.jpg");
    background-repeat: repeat-x;
    border-top: 0px none #AAC2E6;
    border-right: 0px none #AAC2E6;
    border-bottom: 0px none #AAC2E6;
    border-left: 1px solid #AAC2E6;
}


.wpsPortletSelectedTabMiddleCenter {
    background-image: url("./colors/default/portletSelectedTabCenterMid.jpg");
    background-repeat: repeat-x;
    border-style: none;
    white-space: nowrap;
}


.wpsPortletSelectedTabMiddleEnd {
    background-image: url("./colors/default/portletSelectedTabCenterMid.jpg");
    background-repeat: repeat-x;
    border-top: 0px none #AAC2E6;
    border-right: 1px solid #AAC2E6;
    border-bottom: 0px none #AAC2E6;
    border-left: 0px solid #AAC2E6;
}


.wpsPortletSelectedTabBottomStart {
    background-color: #FFFFFF;
    border-top: 0px none #AAC2E6;
    border-right: 0px none #AAC2E6;
    border-bottom: 0px none #AAC2E6;
    border-left: 1px solid #AAC2E6;
    width: 5px;
    height: 5px;
}


.wpsPortletSelectedTabBottomCenter {
    background-color:  #FFFFFF;
    border-style: none;
}


.wpsPortletSelectedTabBottomEnd {
    background-color:  #FFFFFF;
    border-top: 0px none #AAC2E6;
    border-right: 1px solid #AAC2E6;
    border-bottom: 0px none #AAC2E6;
    border-left: 0px none #AAC2E6;
    width: 5px;
    height: 5px;
}


.wpsPortletTabLink, .wpsPortletTabLink:visited, .wpsPortletTabLink:active, .wpsPortletTabLink:hover {
    color: #333333;
}


.wpsPortletSelectedTabLink, .wpsPortletSelectedTabLink:hover, .wpsPortletSelectedTabLink:visited, .wpsPortletSelectedTabLink:active {
    color: #2056A0;
	font-weight: bold;
}




.wpsPortletToolbar {
    background-color: #c5d1de;
    border-top: 1px solid #e4edf5;
    border-right: 1px solid #95a5b9;
    border-bottom: 1px solid #95a5b9;
    border-left: 1px solid #e4edf5;
}


.wpsPortletToolbarSection {
   border-width: 0px;
}


.wpsPortletToolbarSet {
}


.wpsPortletToolbarButton {    
    background-color: #c5d1de;
    padding: 3px;
    border-width: 1px;
    border-style: solid;
    border-color: #c5d1de;
}


.wpsPortletToolbarButtonRollover {
    background-color: #c5d1de;
    padding: 3px;
    border-top: 1px solid #e4edf5;
    border-right: 1px solid #95a5b9;
    border-bottom: 1px solid #95a5b9;
    border-left: 1px solid #e4edf5;
}


.wpsPortletToolbarButtonPressed {
    background-color: #dadfe5;
    padding: 3px;
    border-top: 1px solid #95a5b9;
    border-right: 1px solid #e4edf5;
    border-bottom: 1px solid #e4edf5;
    border-left: 1px solid #95a5b9;
}


.wpsPortletToolbarButtonSelected {
    background-color: #aeb8c4;
    padding: 3px;
    border-top: 1px solid #95a5b9;
    border-right: 1px solid #e4edf5;
    border-bottom: 1px solid #e4edf5;
    border-left: 1px solid #95a5b9;
}


.wpsPortletToolbarButtonSelectedRollover {
    background-color: #aeb8c4;
    padding: 3px;
    border-top: 1px solid #e4edf5;
    border-right: 1px solid #95a5b9;
    border-bottom: 1px solid #95a5b9;
    border-left: 1px solid #e4edf5;
}


.wpsPortletToolbarButtonIcon {
    width: 16px;
    height: 16px;
}


.wpsPortletToolbarControl {
    padding: 3px;
}


.wpsPortletToolbarText {
    color: #333333;
}


.wpsPortletToolbarDisabledText {
    color: #999999;
}


.wpsPortletToolbarLink, .wpsPortletToolbarLink:hover, .wpsPortletToolbarLink:visited, .wpsPortletToolbarLink:active {
    color: #333333;
}



.wpsPortletToolbarSeparator {
    background-color: #95a5b9;
    width: 1px;
    margin: 0px;
    padding: 0px;
    border-top: 0px none #95a5b9;
    border-right: 1px solid #e4edf5;
    border-bottom: 0px none #e4edf5;
    border-left: 0px none #95a5b9;
}


.wpsPortletToolbarSpacer {
    padding: 0px 2px 0px 2px; 
}


.wpsPortletToolbarHandle {
    background-color: #c5d1de;
    padding: 0px;
    margin: 0px;
    width: 1px;
    border-top: 1px solid #e4edf5;
    border-right: 1px solid #95a5b9;
    border-bottom: 1px solid #95a5b9;
    border-left: 1px solid #e4edf5;
}





.wpsBreadcrumbTrail {
    font-weight: bold;
}


.wpsBreadcrumbTrailLink, .wpsBreadcrumbTrailLink:hover, .wpsBreadcrumbTrailLink:visited, .wpsBreadcrumbTrailLink:active {
    font-weight: bold;
    color: #3366CC;
    text-decoration: underline;
}












.wpsPortletAccentArea {
    background-color: #c5d1de;
    color: #333333;
}


.wpsPortletAccentArea3DHighlight {
    background-color: #e4edf5;
    color: #333333;
}


.wpsPortletAccentArea3DShadow {
    background-color: #95a5b9;
    color: #333333;
}





.wpsWizardTitle {
    font-weight: bold;
    background-color: #c1c1c1;
    color: black;
    padding-left: 5px;
    padding-top: 5px;
    padding-bottom: 5px;
}


.wpsWizardStepNotification {
    background-color: #dfdfdf;
    color: black;
    padding-left: 5px;
    padding-top: 5px;
    padding-bottom: 5px;
}


.wpsWizardBottomSubmit {
    background-color: #c1c1c1;
    color: black;
    padding-left: 5px;
    padding-top: 5px;
    padding-bottom: 25px;
}





.wpsCursorPointer {
	cursor: pointer;
}








.weekday_header {
    font-size: x-small;
    background-color: #999999;
    color: #333333;
}


.other_month_header {
    background-color: #E4E3E3;
    color: #7E7001;
    height: 20px;
}


.current_month_header {
    background-color: #CBDBF3;
    color: #333333;
    height: 20px;
}


.other_month_cell {
    background-color: #F0F0F0;
}


.current_month_cell {
    background-color: #FFFFFF;
    color: Black;
}


.current_day_header {
    font-size: x-small;
    background-color: #92B5E6;
    color: #333333;
    height: 20px;
}


a.current_day_header:link {
    background-color: transparent;
    color: #333333;
}


a.other_month_header:link {
    background-color: transparent;
    color: #0000ff;
}


a.current_month_header:link {
    background-color: transparent;
    color: #0050C9;
}









a.wpsPersonName {
	text-decoration: none;
	white-space: nowrap;
	color: #3366CC;
}

a.wpsPersonName:visited {
	text-decoration: none;
	white-space: nowrap;
	color: #666699;
}

a.wpsPersonName:hover {
	text-decoration: underline;
	white-space: nowrap;
	color: #666699;
}







.wpsGettingStartedTitle
{
    font-size: small;
	font-weight: normal;
    color: #2055A3;
}

.wpsGettingStartedHeader
{
    font-size: x-small;
	font-weight: normal;
    color: #2055A3;
}

.wpsGettingStartedBody
{
    font-size: xx-small;
	color: #616161;
    padding-top: 10px;
}

.gsTableOutside
{
    background-color: #E0EDFC;
    vertical-align : top;
}

.gsTableInside
{
    background-color: #E0EDFC;
    padding-top: 5px;
    padding-left: 5px;
    padding-right: 5px;
    vertical-align : top;
}

.gsTableEnd
{
    background-image: url("./colors/default/gs_end.gif");
    background-repeat: repeat-x;
}









.wpsSearchInfoBar{
    font-family: Verdana, Arial, Helvetica, sans-serif;
    font-size: x-small;
    color: #333333;
	background-color: #c7d9f1;
}

.wpsSearchUrl, a.wpsSearchUrl {
	font-weight: bold;
}

.wpsSearchUrlAddressText{
	color: #008000;
	font-style: italic;
}

.wpsSearchAttributeText{
	color: #c1c1c1;
	font-style: italic;
}














.lwp-teamSpace-title, .lwp-webConference-title {
    font-weight: bold;
    background-color: #5C5C5C;
    color: #FFFFFF;
}


.popup-background {
	background-color: #eeeeee;
}


.lwp-middleToolbar {
    font-size: x-small;
    color: #737373; 
    background-color: #FFFFFF;
    border-bottom: 0px solid #D8D8E0;
    padding: 4px 4px;
    margin: 0px;
}


.lwpAdminButton {
    font-size: x-small;
    color: #FFFFFF; 
    background-color: #A0A0A0;
	text-decoration: none;
	padding: 0px 5px;
    margin: 0px;
}


.lwpAdminButtonLink, .lwpAdminButtonLink:hover, .lwpAdminButtonLink:active, .lwpAdminButtonLink:visited {
    font-size: x-small;
    font-weight: normal;
    color: #FFFFFF; 
    background-color: #A0A0A0;
    margin: 0px;
    text-decoration: none;
}


.lwpNavButton {
    color: #FFFFFF; 
    background-color: #70A8F0;
    margin: 0px;
	text-decoration: none;
	padding: 0px 5px;       
}


.lwpNavButtonLink, .lwpNavButtonLink:hover, .lwpNavButtonLink:active, .lwpNavButtonLink:visited {
    font-weight: normal;
    color: #FFFFFF; 
    background-color: #70A8F0;
    margin: 0px;
    text-decoration: none;
}


.button-link, a.button-link, a.button-link:hover, a.button-link:visited {
	text-decoration: none;
	color: #000000;
}



.lwpButtonGroup{
	margin: .25em 4px;
}


.lwpIconOnly, .lwpIconOnlyDisabled {
	border:0px;
	background-color:white;
}


.lwpDialogIconBackground {
	text-decoration: none;
	text-align: center;
	vertical-align: top;
	background-color: #DDDDDD;
	background-image: url("./colors/default/DialogIconTextBackground.gif");
	background-repeat: repeat-x;
	border: 1px solid #919191;
    padding: 0px 2px;
	margin: 0px;
	overflow: visible;
	font-weight: normal;
	color: #000000;
	cursor: pointer;
}


.lwpDialogDisabledIconBackground, .lwpDialogIconBackgroundDisabled {
	text-decoration: none;
	text-align: center;
	vertical-align: top;
	background-color: #DDDDDD;
	background-image: url("./colors/default/DialogIconTextBackground.gif");
	background-repeat: repeat-x;
	background-position: left center;
	border: 1px solid #919191;
    padding: 0px 2px;
	margin: 0px;
	overflow: visible;
	font-weight: normal;
	color: #888888;
}


.lwpButtonText { 
    font-weight: bold;
    text-decoration: none;
	color: #000000;
	vertical-align: middle;
    background-color: #DDDDDD; 
    background-image: url("./colors/default/ButtonBackground.gif");
    background-repeat: repeat-x;
    background-position: left center; 
    border-top: 1px solid #919191;
    border-bottom: 1px solid #919191;
    border-right: 1px solid #919191;
    border-left: 1px solid #919191;
    padding: 0px 2px;
	overflow: visible;
    margin: 0px;
    text-align: center;
}



.lwpButtonTextDisabled {
	text-decoration: none;
	text-align: center;
	vertical-align: middle;
	background-color: #DDDDDD;
	background-image: url("./colors/default/ButtonBackground.gif");
	background-repeat: repeat-x;
	background-position: left center;
	border-top: 1px solid #919191;
    border-bottom: 1px solid #919191;
    border-right: 1px solid #919191;
    border-left: 1px solid #919191;
    padding: 0px 2px;
	margin: 0px;
	overflow: visible;
	font-weight: bold;
	color: #888888;
}


.lwpButtonSpacer {
	margin-right: 2px;
}








.lwpSeparatorBg {
    background-color: #999999;
    height: 1px;
}

div.lwpSeparatorBg {
    background-color: #999999;
	margin: 2px 0 2px 0;
}


.borderNone {
	border-width: 0 ! important;
}


.lwpPortletTitleBorder {
   background-image: url("./colors/default/skin_border.gif");
   background-position: bottom;
   background-repeat: repeat-x;
}


.lwpAlignRight {
	text-align: right; 
}


.lwpBorderAll {
	border-right: 1px solid #DCDCDC;
	border-left: 1px solid #DCDCDC;	
	border-top: 1px solid #DCDCDC;	
	border-bottom: 1px solid #DCDCDC;	
}


.lwpShadowBorder {
	border-right: 1px solid #888888;
	border-bottom: 1px solid #888888;	
}


.lwpSearchBar{
	margin: 5px 0;
	background-color: #ECECEC;			
	text-align: right;
}	
	
.lwpSearchBar table{
	margin-right: 0;
	margin-left: auto;
}

.lwpSearchBar td{		
	padding: 5px 3px 5px 2px;
}

.lwpSearchBar .portlet-form-field-label{
	padding-left: 10px;
}


.lwpInlineHelp td{
	padding: 5px 10px 5px 1px;
	vertical-align: top;
}


.lwpMenuHeader, a.lwpMenuHeader, a.lwpMenuHeader:visited, a.lwpMenuHeader:hover {
	background-color: #F0F0F0;
	color: #000000;
	text-decoration: none;
	font-weight: normal;
	cursor: pointer;
}


.lwpMenuBackground {
	background-color: #ffffff;
}


.lwpMenuItem, a.lwpMenuItem, a.lwpMenuItem:visited, a.lwpMenuItem:hover  a.lwpMenuItem:active {
	color: #000000;
	text-decoration: none;
	background-color: #ffffff;
}


.lwpSelectedMenuItem, a.lwpSelectedMenuItem:visited, a.lwpSelectedMenuItem:hover, a.lwpSelectedMenuItem:active{
	background-color: #284888;
	color: #ffffff;
	text-decoration: none;
	cursor: pointer;
}


.lwpMenuItemDisabled, a.lwpMenuItemDisabled, a.lwpMenuItemDisabled:visited, a.lwpMenuItemDisabled:hover, a.lwpMenuItemDisabled:active {
	color: #888888;
	text-decoration: none;
	background-color: #ffffff;
}


.unreadMailText, a.unreadMailText {
    font-weight: bold;
	text-decoration: underline;
	color: #3366CC;
}


.lwpLastReadMark {
	font-weight: bold;
	color: #FFFFFF;
	background-color: #666666;
	text-align: center;
	padding: 3px 0;
}


.lwpDateStampMark {
	font-weight: bold;
	color: #666666;
	background-color: #999999;
	text-align: center;
	padding: 3px 0px;
}





.lwpCalFsizeX {
	font-size: small;
}

.lwpCalViewMenuPosition {
	padding-left: 2px;
	padding-top: 8px;
	padding-bottom: 8px; 
}

a.lwpCalLinkText {
	text-decoration: none;
}

a.lwpCalLinkText:hover {
	text-decoration: underline;
}

a.lwpCalDateLinkText, a.lwpCalDateLinkText:visited {
	text-decoration: none;
	color: #000000;
}

a.lwpCalDateLinkText:hover {
	text-decoration: underline;
	color: #666699;
}

a.lwpCalInactiveDateLinkText, a.lwpCalInactiveDateLinkText:visited {
	text-decoration: none;
	color: #a0a0a0;
}

a.lwpCalInactiveDateLinkText:hover {
	text-decoration: underline;
	color: #666699;
}

.lwpCal1WeekCellRow {
	height: 6em;
	font-weight: normal;
}

.lwpCalCellRow {
	height: 2.2em;
	font-weight: normal;
}

.lwpCalLDivider {
	border-left: solid 1px #aaaaaa;
}

.lwpCalTDivider {
	border-top: solid 1px #aaaaaa;
}

.lwpCalNoBottom {
	border-bottom: none;
}

.lwpCalHeader {
	color: #3366CC;
    font-weight: bold;
	vertical-align: top;
}

.lwpCalHeaderImage {
   padding: 12px 3px 2px 0px; 
   margin-bottom: 5px;
}

.lwpCalAttendeeHeading { 
	color: #898989; 
}

.lwpCalSectionHeader {
   font-weight: bold;
   color: black;
   padding-top: 12px;
   padding-bottom: 2px;
   margin-bottom: 5px;
   display: block;
}

.lwpCalInviteeSection {
   padding-left:2px;   
}

.lwpCalWeekNumber {
	color: #808080;
}

.lwpCalEntryHoverDetail {
	border : solid 1px #000000;
	position: absolute; 
	visibility: hidden; 
	width: 400px;
	overflow: hidden;
}

.lwpCalEventField { 
	padding:5px 0px 3px 0px; 
}

.lwpCalEntryHoverPosition {
	padding-left: 5px;
}

.lwpCalBgMeeting, .lwpCalBgWebConf {
	background-color: #C3D3E6;
}

.lwpCalBgAppointment{
	background-color: #D8F8D8;
}

.lwpCalBgAnniversary{
	background-color: #F8E8D0;
}

.lwpCalBgReminder{
	background-color: #F8F8D0;
}

.lwpCalBgAllDayEvent{
	background-color: #F8E0E0;
}

.lwpCalTodayCell {
	border: solid 1px #000000;
}

.lwpCalMonthDayCell {
	border-top: solid 1px #AAAAAA;
	height: 6.4em;
	width: 14%;
}

.lwpCalInactiveDayCell {
	background-color: #efefef;
}

.lwpCalInactiveDay {
	color: #a0a0a0;
}

.lwpCalSeperator {
	border-bottom: solid 1px #ffffff;
}

.lwpCalConflict {
	border-left: solid 2px #000000;
}

.lwpCalTimeText {
	text-align: right;
}

.lwpCalEntryPosition {
	padding-top: 2px;
}

.lwpCalBDivider {
	border-bottom: solid 1px #aaaaaa;
}







.lwpPpkList {
    width: 250px;
    height: 200px;
    padding-left: 2px;
    border-right: 1px solid #c0c0c0;
    border-bottom: 1px solid #c0c0c0;
    border-left: 1px solid black;
    border-top: 1px solid black;
    overflow: auto;
}

.lwpPpkListBorder {
    width: 250px;
    height: 200px;
    border-left: 1px solid #a0a0a0;
    border-top: 1px solid #a0a0a0;
}

.lwpPpkNormalText {
    background-color: white; 
    color: black;
}

.lwpPpkSelectedText {
    background-color: #284888;
    color: white;
}








.lwpMailboxRecipientAnchor, a.lwpMailboxRecipientAnchor {	
	color: black;
	text-decoration: underline;
	cursor: pointer;
}

.lwpMailboxRecipientAnchor:hover, a.lwpMailboxRecipientAnchor:hover {
	color: black;
	text-decoration: underline;
	cursor: pointer;
}

.lwpMailboxRecipientAnchor:visited, a.lwpMailboxRecipientAnchor:visited {
	color:black;
}







.chat_background {
    background-color: #FFFFFF;
}

.chat_partner_presence {
	border-top : 1px solid #AAAAAA;
	border-left : 1px solid #AAAAAA;
	border-color : #AAAAAA;
	padding: 3px;
    background-color: #EEEEEE;
}

.chat_partner_presence_corner {

    background-image: url("./colors/default/chat_presence_corner.gif");
    background-repeat: no-repeat;
    background-position: top;
    background-color: transparent;
    background-color: #FFFFFF;
}

.chat_partner_alert {
	border-top : 1px solid #AAAAAA;
	border-left : 1px solid #AAAAAA;
	border-right : 1px solid #AAAAAA;
	border-color : #AAAAAA;
	padding: 3px;
    background-color: #FFFFFF;
	color: #666666;
}

.chat_transcript {
	border-left : 1px solid #AAAAAA;
	border-right : 1px solid #AAAAAA;
	border-bottom : 1px solid #AAAAAA;
	border-top : 1px solid #AAAAAA;
	border-color : #AAAAAA;
}

.chat_transcript_nway {
	border-top : 1px solid #456A8B;
	border-left : 1px solid #456A8B;
	border-right : 1px solid #456A8B;
	border-bottom : 1px solid #456A8B;
	border-color : #456A8B;
}

.chat_message_input {
	border-top : 1px solid #AAAAAA;
	border-left : 1px solid #AAAAAA;
	border-right : 1px solid #AAAAAA;
	border-bottom : 1px solid #AAAAAA;
	border-color : #AAAAAA;
    background-color: #FFFFFF;
}

.chat_statusbar {
	border-top : 1px solid #AAAAAA;
	border-color : #AAAAAA;
	background-color: #EEEEEE;
	color: #AAAAAA;
}

.chat_participants {
	border-bottom : 1px solid #D8D8D8;
	border-color : #D8D8D8;
}












.lwp-agendaItemDocument {
	color: #585858;
	padding-top: 3px;
	padding-bottom: 3px;
}


.lwp-agendaItem-ul {
	padding-top: 3px;
	list-style-type: none;
	margin-left: 0px;
	margin-right: 20px;
	padding-bottom: 0px;
}


.lwp-agendaItem-li {
	padding-top: 0px;
	padding-bottom: 0px;
}


.lwp-agendaItem, .lwp-agendaItem:visited, a.lwp-agendaItem, a.lwp-agendaItem:active, a.lwp-agendaItem:visited, .lwp-agendaItemPage, a.lwp-agendaItemPage, .lwp-agendaItemSlide, .lwp-agendaItemPage:visited, .lwp-agendaItemSlide:visited {
	background-color: rgb(246,246,246);
	text-decoration: none;
	color: #7080A8;
	font-weight: normal;
	padding-top: 1px;
	padding-bottom: 1px;
}


a.lwp-agendaItem:hover, .lwp-agendaItemPage:hover, .lwp-agendaItemSlide:hover {
	text-decoration: underline;
	color: #639ACE;
	font-weight: normal;
}


.lwp-selectedAgendaItem, a.lwp-selectedAgendaItem {
    background-color: rgb(49, 106, 197);
	padding-top: 1px;
	padding-bottom: 1px;
	color:#FFFFFF;
	line-height: 150%;
	text-decoration: none;
	font-weight: bold;
}

.lwp-selectedAgendaItem:visited, a.lwp-selectedAgendaItem:visited {
	color: #FFFFFF;
}

a.lwp-selectedAgendaItem:hover {
    background-color: rgb(49, 106, 197);
	padding-top: 1px;
	padding-bottom: 1px;
	color:#FFFFFF;
	line-height: 150%;
	text-decoration: underline;
	font-weight: bold;
}


.lwpProjectorHeaderStart { 
	background-color: #70A8F0; 
	border-top: 1px solid #777777;
	border-right: 0px none #777777;
	border-bottom: 0px none #777777;
	border-left: 1px solid #777777;	
}


.lwpProjectorHeaderMiddle {
	background-color: #70A8F0;
	border-top: 1px solid #777777;
	border-right: 0px none #777777;
	border-bottom: 0px none #777777;
	border-left: 0px none #777777;	
	color: #343434;
    font-weight: bold;
}


.lwpProjectorHeaderEnd {
	background-image: url("./colors/default/projectorTableTopRight.gif");
	background-repeat: no-repeat;
	background-position: right top;
	background-color: transparent;
}


.lwpSlideTable {
	border-width: 1px;
	border-style: solid;
	border-color: #000000;
}



.lwpSlideTableHeadStart, .lwpSlideTableHeadMiddle, .lwpSlideTableHeadEnd {
    font-weight: bold;
	color: #989898;
	text-align: left;
	background-color: #ffffff;
	border-width: 0px 0px 0px 0px;
	border-style: solid;
	border-color: #000000;
}


.lwpSlideBorder
{
	border-color: #b0b0c0;
	border-style: solid;
	border-width: 1px 1px 1px 1px;
}


.lwpAgendaFrameDiv
{
	position:absolute;
	width:100%;
	visibility:hidden;
	bottom:0;
	border:1px solid rgb(233, 233, 233);
	background-color: rgb(246, 246, 246);
	top:80px;
}


.lwpAttendeesFrameDiv
{
	width:100%;
	position:absolute;
	bottom:0;
	border:1px solid rgb(233, 233, 233);
	background-color: rgb(246, 246, 246);
	visibility:hidden;
	overflow:auto;
	top:26px;
}


.lwpDownloadsFrameDiv
{
	width:100%;
	position:absolute;
	bottom:2px;
	visibility:hidden;
	top:26px;
	
}

.lwpHostingStarted {
	font-size: small;
	font-weight: bold;
	color: #FFFFFF;
}

.lwpHostingStartedLarge {
	font-size: small; 
	font-weight: bold;
	color: #FFFFFF;
}










.lwp_labelNormalStyle, a.lwp_labelNormalStyle, a.lwp_labelNormalStyle:visited, a.lwp_labelNormalStyle:active {
    color: #000000; 
	text-decoration: none;
}

.lwp_tdStyle {
	white-space:nowrap; 
	padding:0px; 
}

.lwp_linkTextStyle {
	text-decoration:none;
}

.lwp_nodeStyle {
	border-collapse: collapse; 
	border-spacing:0px;
}


.lwp_nodeImageStyle {
	border-top: 0px; 
	border-right: 0px; 
	border-left: 0px; 
	border-bottom: 0px; 
}


.lwp_labelHighlightStyle, a.lwp_labelHighlightStyle, a.lwp_labelHighlightStyle:active, a.lwp_labelHighlightStyle:visited { 
	font-weight: bold;
    text-decoration: none;
	color: #FFFFFF; 
	background-color: #A0A0A0; 
	padding-right: 5px;
}


.lwp_labelMouseoverStyle, a.lwp_labelMouseoverStyle:hover, a.lwp_labelMouseoverStyle:active {
	font-weight: normal;
    text-decoration: underline;
	color: #000000; 
}


.lwp_labelDragoverStyle{
	font-weight: normal;
	text-decoration: underline;
	color: #000000; 
}


.lwpFldNodeLableSpacing, .lwpFldNodeLabelSpacing {
	padding-left: 5px;
}


.lwpTreePanel {
	overflow: auto;
	height: 100%;
	width: 18em;
}


.lwpTreePanelBody {
	border-left: 1px solid #aaaaaa;
	border-right: 0px;
	border-top: 0px;
	border-bottom: 0px;
}


.lwpTreePanelHeader {
	background-color: #F0F0F0;
	border-left: 1px solid #aaaaaa;
	border-right: 0px;
	border-top: 1px solid #aaaaaa;
	border-bottom: 1px solid #aaaaaa;
}


.lwpTreePanelFooter {
	background-color: #F0F0F0;
	border-left: 1px solid #aaaaaa;
	border-right: 0px;
	border-top: 1px solid #aaaaaa;
	border-bottom: 1px solid #aaaaaa;
}










.lwpPeopleFlyoutExpanded {
	background-color: #DEDEDE;
	border-left: 1px solid #9A9A9A;
	border-right: 0px;
	border-top: 0px;
	border-bottom: 1px solid #DEDEDE;
}


.lwpPeopleFlyoutCollapsed {
	background-color: #DEDEDE;
	border-left: 1px solid #686868;
	border-right: 0px;
	border-top: 0px;
	border-bottom: 1px solid #DEDEDE;
}


.lwpPeopleFlyoutFrame {
	background-color: #DEDEDE;
	border-left: 1px solid #686868;
	border-right: 1px solid #686868;
	border-top: 1px solid #686868;
	border-bottom: 1px solid #686868;
}









.lwpTimeDateBorder {
	border:0px;
}
 
.lwpTimeDateCalBorder { 
	background-color: white;
	border-top: 1px none #aaaaaa;
	border-right: 1px solid #aaaaaa;
	border-bottom: 1px solid #aaaaaa;
	border-left: 1px solid #aaaaaa;
}

.lwpTimeDateCalText { 
	font-weight: bold; 
}

.lwpTimeDateDayName { 
	text-align: center;
	font-weight: normal;
	vertical-align: middle;
	background-color: white;
	border-top: 1px none #aaaaaa;
	border-right: 1px none #aaaaaa;
	border-bottom: 1px solid #aaaaaa;
	border-left: 1px none #aaaaaa;
}

.lwpTimeDateDay { 
	text-align: center;
	vertical-align: middle;
	background-color: white;
	border-width: 0px 0px 0px 0px;
	border-style: solid;
	border-color: #aaaaaa;
}

.lwpTimeDateWeekendDay { 
	text-align: center;
	vertical-align: middle;
	background-color: white;
	border-width: 0px 0px 0px 0px;
	border-style: solid;
	border-color: #aaaaaa;
}

.lwpTimeDateDayLink { 
	text-decoration:none;
}

.lwpTimeDateCalTop {
	border: 1px solid #aaaaaa;
	background-color: #eeeeee;
}

.lwpTimeDateSelectedCalTop { 
	border: 1px solid #606098;
	background-color: #d0d0d0;
}

.lwpTimeDateSelectedDay { 
	text-align: center;
	vertical-align: middle;
	background-color: #ffffff;
}

.lwpTimeDateSelectedDayLink { 
	text-decoration:none;
	text-align: center;
	vertical-align: middle;
	background-color: #d0d0d0;
}

.lwpTimeDateSelectedWeek { 
	text-decoration:none;
	text-align: center;
	vertical-align: middle;
	background-color: #d0d0d0;
}

.lwpTimeDateSelectedAllWeeks { 
	text-decoration:none;
	text-align: center;
	vertical-align: middle;
	background-color: #e8e8e8;
}

.lwpTimeDateWeek { 
	text-decoration:none;
	text-align: center;
	vertical-align: middle;
	background-color: #ffffff;
	border: 1px solid #aaaaaa;
}

.lwpTimeDateMonthRadio { 
	text-decoration:none;
	text-align: center;
	vertical-align: middle;
	width:15px;
	border-right: 1px solid #aaaaaa;
}

.lwpTimeDateWeekRadioOn { 
	text-decoration:none;
	text-align: center;
	vertical-align: middle;
	background-color: #d0d0d0;
	width:15px;
	border-color: #aaaaaa;
	border-right: 1px solid #aaaaaa;
	border-left: 1px solid #aaaaaa;
}

.lwpTimeDateWeekRadioOff { 
	text-decoration:none;
	text-align: center;
	vertical-align: middle;
	background-color: #ffffff;
	width:15px;
	border-color: #aaaaaa;
	border-right: 1px solid #aaaaaa;
	border-left: 1px solid #aaaaaa;
}

.lwpTimeDateEmptyDayName { 
	font-weight: normal;
	text-align: center;
	vertical-align: middle;
	background-color: #ffffff;
	width:15px;
	border-right: 1px solid #aaaaaa;
	border-left: 1px none #aaaaaa;
	border-bottom: 1px solid #aaaaaa;
}











.outerTreeStyle{
	color: WindowText;
	border-width: 0px;
	border-style: none;
	padding:0px;
	font-weight: 400;
}


.nodeStyle{
	padding: 0px;
	letter-spacing: 0;
	border-collapse: collapse;
}


.scrollStyle{
 	overflow: auto;
 	width: 200px;
}


.tdStyle{
	padding: 0px;
	width: 200px;	
}



.labelDragoverStyle{
	font-size: 11px;
	color: #000000;
	font-family: Tahoma, Verdana, Geneva, Arial, Helvetica, sans-serif;
	font-style: italic;
}

.linkTextStyle{
	text-decoration: none
}


.classForTreeSysIcons {
	
	
}


.tdTreeTabStyle{
	padding: 0px;
	width: 200px;
	margin:0px
}


.tdTableStyle{
	width: 200px;
	padding:0px;
	margin:0px
}


.headerStyle{
	width: 200px;
	background-color: ThreeDFace;
	color: WindowText;
	border-width: 1px;
	border-style: solid;
	border-color: ThreeDShadow;
	margin:0px;
	padding:0px;
}



.tree{
}


.tree_outerTreeStyle
{
	color: WindowText;
	border-width: 0px;
	border-style: none;
	padding: 0px;
	font-weight: 400;
}


.tree_nodeStyle {
	padding: 0px;
	letter-spacing: 0;
	border-collapse: collapse;
	margin: 0px;
}


.tree_scrollStyle{
 	overflow: auto;
 	width: 200px;
}


.tree_tdStyle{
	padding: 0px;
	width: 200px;	
}


.tree_labelNormalStyle {
	font-size: 11px;
	color: #000000;
	font-family: Tahoma, Verdana, Geneva, Arial, Helvetica, sans-serif; 
}


.tree_nodeImageStyle {
	border-right: 0px;
	border-top: 0px;
	border-left: 0px;
	width: 19px;
	border-bottom: 0px;
	height: 16px
}


.tree_labelHighlightStyle{
	font-size: 11px;
	color: #000000;
	font-family: Tahoma, Verdana, Geneva, Arial, Helvetica, sans-serif;
	font-weight: bold;
}

.tree_labelMouseoverStyle{
	font-size: 11px;
	color: #000000;
	font-family: Tahoma, Verdana, Geneva, Arial, Helvetica, sans-serif;
	font-style: italic;
}


.tree_labelDragoverStyle{
	font-size: 11px;
	color: #000000;
	background-color: #bbbbbb;
	font-family: Tahoma, Verdana, Geneva, Arial, Helvetica, sans-serif;
	font-style: italic;
}


.tree_linkTextStyle{
	text-decoration: none
}


.tree_classForTreeSysIcons {
	
	
}


.tree_tdTreeTabStyle{
	padding: 0px;
	width: 200px;
	margin:0px
}


.tree_tdTableStyle{
	width: 200px;
	padding:0px;
	margin:0px
}


.tree_headerStyle{
	width: 200px;
	background-color: ThreeDFace;
	color: WindowText;
	border-width: 1px;
	border-style: solid;
	border-color: ThreeDShadow;
	margin:0px;
	padding:0px;
}

/* Header */
.palette h5
{
    color: #FFFFFF !important;
    background-color: #B7CBE7;
    background: url(./colors/default/palette_header_background.gif) repeat-x;
    font-size: medium;
    border: 1px solid;
    border-right: 0px;
    border-color: #97A9C1;
	height: 48px;
    margin-top: 0px; 
    margin-bottom: 0px;
}

.palette h5 div
{
	margin-top: 18px;
	margin-left: 10px;
}

/* Hidden forms cause extra whitespace if display is not set to inline */
.palette form
{
    display: inline;
}

/* Search box */
.contentTypeSearch
{
    background-color: #E8EBF1;
    color: #7A93BB;
    margin-top: 0px;
    margin-bottom: 0px;
} 

.contentTypeSearch table
{
	margin-left: 10px;
}	

/* Selected category title */
.categoryTitleExpanded
{
    background: url(./colors/default/palette_selected_cat.gif ) repeat-x;
	background-position: top;
	background-color: #E8EBF1;
	font-size: xx-small;
    font-family: arial;
    padding: 5px 10px;
	color: #7A93BB;
    margin-bottom: 0px;
}

/* Unselected category title */
.categoryTitleCollapsed
{
    background: url(./colors/default/palette_unselected_cat.gif ) repeat-x;
    background-position: top;
    background-color: #E8EBF1;
    font-family: arial;
    font-size: xx-small;
    color: #7A93BB;
    padding: 5px 10px;
    margin-bottom: 0px;
}

/* hide the contents of a category when unselected */
.contentItemListCollapsed
{
    display: none;
}

/* An Item in a category */
.contentItem
{
    font-weight: normal;
    font-family: arial;
    font-size: xx-small;
    color: #4E4E4E;
}

/* An Item in a category */
.contentItemGrayed
{
    font-weight: normal;
    font-family: arial;
    font-size: xx-small;
    color: #C6C6C6;
}


.contentItemHover
{
    font-weight: normal;
    font-family: arial;
    font-size: xx-small;
    color: #4E4E4E;
}

.contentItemGrayedHover
{
    font-weight: normal;
    font-family: arial;
    font-size: xx-small;
    color: #C6C6C6;
}


/* the icon associated with the item */
.contentItemIcon
{
    vertical-align: middle; 
    border: 0px;
}

/* Only display the item context menu when hovering over the item */ 
.contentItem button
{
    visibility: hidden;
}

.contentItemHover button
{
    visibility: visible;
}

.contextMenu
{
	border: 0px; 
	background-color: transparent;
}	

.actionMainArea
{
    margin: 4px;
}

.actionFooter
{
    margin-top: 4px;
}

 



  
        
                                 