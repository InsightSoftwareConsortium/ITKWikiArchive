<!DOCTYPE html>
<html lang="en" dir="ltr" class="client-nojs">
<head>
<meta charset="UTF-8" />
<title>ITK/Release 4/Modularization/Add a module/itk-module.cmake - KitwarePublic</title>
<meta http-equiv="X-UA-Compatible" content="IE=EDGE" />
<meta name="generator" content="MediaWiki 1.23.8" />
<link rel="shortcut icon" href="/favicon.ico" />
<link rel="search" type="application/opensearchdescription+xml" href="/Wiki/opensearch_desc.php" title="KitwarePublic (en)" />
<link rel="EditURI" type="application/rsd+xml" href="http://www.itk.org/Wiki/api.php?action=rsd" />
<link rel="copyright" href="https://creativecommons.org/licenses/by/2.5/" />
<link rel="alternate" type="application/atom+xml" title="KitwarePublic Atom feed" href="/Wiki/index.php?title=Special:RecentChanges&amp;feed=atom" />
<link rel="canonical" href="/ITKWikiArchive/Wiki/ITK/Release_4/Modularization/Add_a_module/itk-module.cmake" />
<link rel="stylesheet" href="http://www.itk.org/Wiki/load.php?debug=false&amp;lang=en&amp;modules=mediawiki.legacy.commonPrint%2Cshared%7Cmediawiki.skinning.interface%7Cmediawiki.ui.button%7Cskins.monobook.styles&amp;only=styles&amp;skin=monobook&amp;*" />
<!--[if IE 6]><link rel="stylesheet" href="/Wiki/skins/monobook/IE60Fixes.css?303" media="screen" /><![endif]-->
<!--[if IE 7]><link rel="stylesheet" href="/Wiki/skins/monobook/IE70Fixes.css?303" media="screen" /><![endif]--><meta name="ResourceLoaderDynamicStyles" content="" />
<style>a:lang(ar),a:lang(kk-arab),a:lang(mzn),a:lang(ps),a:lang(ur){text-decoration:none}
/* cache key: KitwarePublicWikiDB:resourceloader:filter:minify-css:7:f67a91830b2c06c30170e182d61a9a1b */</style>
<script src="http://www.itk.org/Wiki/load.php?debug=false&amp;lang=en&amp;modules=startup&amp;only=scripts&amp;skin=monobook&amp;*"></script>
<script>if(window.mw){
mw.config.set({"wgCanonicalNamespace":"","wgCanonicalSpecialPageName":false,"wgNamespaceNumber":0,"wgPageName":"ITK/Release_4/Modularization/Add_a_module/itk-module.cmake","wgTitle":"ITK/Release 4/Modularization/Add a module/itk-module.cmake","wgCurRevisionId":48357,"wgRevisionId":48357,"wgArticleId":9034,"wgIsArticle":true,"wgIsRedirect":false,"wgAction":"view","wgUserName":null,"wgUserGroups":["*"],"wgCategories":[],"wgBreakFrames":false,"wgPageContentLanguage":"en","wgPageContentModel":"wikitext","wgSeparatorTransformTable":["",""],"wgDigitTransformTable":["",""],"wgDefaultDateFormat":"dmy","wgMonthNames":["","January","February","March","April","May","June","July","August","September","October","November","December"],"wgMonthNamesShort":["","Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"wgRelevantPageName":"ITK/Release_4/Modularization/Add_a_module/itk-module.cmake","wgIsProbablyEditable":false,"wgRestrictionEdit":[],"wgRestrictionMove":[],"wgRedirectedFrom":"ITK_Release_4/Modularization/Add_a_module/itk-module.cmake"});
}</script><script>if(window.mw){
mw.loader.implement("user.options",function($,jQuery){mw.user.options.set({"ccmeonemails":0,"cols":80,"date":"default","diffonly":0,"disablemail":0,"editfont":"default","editondblclick":0,"editsectiononrightclick":0,"enotifminoredits":0,"enotifrevealaddr":0,"enotifusertalkpages":1,"enotifwatchlistpages":1,"extendwatchlist":0,"fancysig":0,"forceeditsummary":0,"gender":"unknown","hideminor":0,"hidepatrolled":0,"imagesize":2,"math":0,"minordefault":0,"newpageshidepatrolled":0,"nickname":"","norollbackdiff":0,"numberheadings":0,"previewonfirst":0,"previewontop":1,"rcdays":7,"rclimit":50,"rows":25,"showhiddencats":0,"shownumberswatching":1,"showtoolbar":1,"skin":"monobook","stubthreshold":0,"thumbsize":2,"underline":2,"uselivepreview":0,"usenewrc":0,"watchcreations":1,"watchdefault":1,"watchdeletion":0,"watchlistdays":3,"watchlisthideanons":0,"watchlisthidebots":0,"watchlisthideliu":0,"watchlisthideminor":0,"watchlisthideown":0,"watchlisthidepatrolled":0,"watchmoves":0,"wllimit":250,
"useeditwarning":1,"prefershttps":1,"language":"en","variant-gan":"gan","variant-iu":"iu","variant-kk":"kk","variant-ku":"ku","variant-shi":"shi","variant-sr":"sr","variant-tg":"tg","variant-uz":"uz","variant-zh":"zh","searchNs0":true,"searchNs1":false,"searchNs2":false,"searchNs3":false,"searchNs4":false,"searchNs5":false,"searchNs6":false,"searchNs7":false,"searchNs8":false,"searchNs9":false,"searchNs10":false,"searchNs11":false,"searchNs12":false,"searchNs13":false,"searchNs14":false,"searchNs15":false,"variant":"en"});},{},{});mw.loader.implement("user.tokens",function($,jQuery){mw.user.tokens.set({"editToken":"+\\","patrolToken":false,"watchToken":false});},{},{});
/* cache key: KitwarePublicWikiDB:resourceloader:filter:minify-js:7:6fb34dd1cd86154205b858dd017713f7 */
}</script>
<script>if(window.mw){
mw.loader.load(["mediawiki.page.startup","mediawiki.legacy.wikibits","mediawiki.legacy.ajax"]);
}</script>
<style type="text/css">/*<![CDATA[*/
.source-cmake {line-height: normal;}
.source-cmake li, .source-cmake pre {
	line-height: normal; border: 0px none white;
}
/**
 * GeSHi Dynamically Generated Stylesheet
 * --------------------------------------
 * Dynamically generated stylesheet for cmake
 * CSS class: source-cmake, CSS id: 
 * GeSHi (C) 2004 - 2007 Nigel McNie, 2007 - 2008 Benny Baumann
 * (http://qbnz.com/highlighter/ and http://geshi.org/)
 * --------------------------------------
 */
.cmake.source-cmake .de1, .cmake.source-cmake .de2 {font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;font-family: monospace, monospace;}
.cmake.source-cmake  {font-family:monospace;}
.cmake.source-cmake .imp {font-weight: bold; color: red;}
.cmake.source-cmake li, .cmake.source-cmake .li1 {font-weight: normal; vertical-align:top;}
.cmake.source-cmake .ln {width:1px;text-align:right;margin:0;padding:0 2px;vertical-align:top;}
.cmake.source-cmake .li2 {font-weight: bold; vertical-align:top;}
.cmake.source-cmake .kw1 {color: #1f3f81; font-style: bold;}
.cmake.source-cmake .kw2 {color: #1f3f81;}
.cmake.source-cmake .kw3 {color: #077807; font-sytle: italic;}
.cmake.source-cmake .co1 {color: #666666; font-style: italic;}
.cmake.source-cmake .es0 {color: #000099; font-weight: bold;}
.cmake.source-cmake .es1 {color: #b08000;}
.cmake.source-cmake .es2 {color: #0000cd;}
.cmake.source-cmake .sy0 {color: #197d8b;}
.cmake.source-cmake .st0 {color: #912f11;}
.cmake.source-cmake .re0 {color: #b08000;}
.cmake.source-cmake .re1 {color: #0000cd;}
.cmake.source-cmake .ln-xtra, .cmake.source-cmake li.ln-xtra, .cmake.source-cmake div.ln-xtra {background-color: #ffc;}
.cmake.source-cmake span.xtra { display:block; }

/*]]>*/
</style></head>
<body class="mediawiki ltr sitedir-ltr ns-0 ns-subject page-ITK_Release_4_Modularization_Add_a_module_itk-module_cmake skin-monobook action-view">
<div id="globalWrapper">
<div id="column-content"><div id="content" class="mw-body-primary" role="main">
	<a id="top"></a>
	
	<h1 id="firstHeading" class="firstHeading" lang="en"><span dir="auto">ITK/Release 4/Modularization/Add a module/itk-module.cmake</span></h1>
	<div id="bodyContent" class="mw-body">
		<div id="siteSub">From KitwarePublic</div>
		<div id="contentSub"><span class="subpages">&lt; <a href="/Wiki/ITK" title="ITK">ITK</a>&lrm; | <a href="/ITKWikiArchive/Wiki/ITK/Release_4" title="ITK/Release 4">Release 4</a>&lrm; | <a href="/ITKWikiArchive/Wiki/ITK/Release_4/Modularization" title="ITK/Release 4/Modularization">Modularization</a></span>(Redirected from <a href="/Wiki/index.php?title=ITK_Release_4/Modularization/Add_a_module/itk-module.cmake&amp;redirect=no" title="ITK Release 4/Modularization/Add a module/itk-module.cmake">ITK Release 4/Modularization/Add a module/itk-module.cmake</a>)</div>
		<div id="jump-to-nav" class="mw-jump">Jump to: <a href="#column-one">navigation</a>, <a href="#searchInput">search</a></div>

		<!-- start content -->
<div id="mw-content-text" lang="en" dir="ltr" class="mw-content-ltr"><div dir="ltr" class="mw-geshi mw-code mw-content-ltr"><div class="cmake source-cmake"><pre class="de1"><span class="kw1">set</span><span class="sy0">(</span>DOCUMENTATION <span class="st0">&quot;This module contains the central classes of foo-related algorithms ...&quot;</span><span class="sy0">)</span>
&#160;
<span class="co1"># itk_module() defines the module dependencies in ITKFoo</span>
<span class="co1"># ITKFoo depends on ITKCommon</span>
<span class="co1"># The testing module in ITKFoo depends on ITKTestKernel and ITKStatistics(besides ITK-Foo)</span>
&#160;
itk_module<span class="sy0">(</span>ITKFoo
  <span class="kw3">DEPENDS</span>
    ITKCommon
  TEST_DEPENDS
    ITKTestKernel
    ITKStatistics
  DESCRIPTION
    <span class="st0">&quot;<span class="es1">${DOCUMENTATION}</span>&quot;</span>
<span class="sy0">)</span>
&#160;
<span class="co1"># Extra test dependency on ITKStatistics introduced by itkStatisticalFooTest.</span></pre></div></div>

<!-- 
NewPP limit report
CPU time usage: 0.016 seconds
Real time usage: 0.016 seconds
Preprocessor visited node count: 5/1000000
Preprocessor generated node count: 34/1000000
Post‐expand include size: 52/2097152 bytes
Template argument size: 0/2097152 bytes
Highest expansion depth: 2/40
Expensive parser function count: 0/100
-->

<!-- Saved in parser cache with key KitwarePublicWikiDB:pcache:idhash:9034-0!*!*!*!*!*!* and timestamp 20151013170725 and revision id 48357
 -->
</div><div class="printfooter">
Retrieved from "<a href="http://www.itk.org/Wiki/index.php?title=ITK/Release_4/Modularization/Add_a_module/itk-module.cmake&amp;oldid=48357">http://www.itk.org/Wiki/index.php?title=ITK/Release_4/Modularization/Add_a_module/itk-module.cmake&amp;oldid=48357</a>"</div>
		<div id='catlinks' class='catlinks catlinks-allhidden'></div>		<!-- end content -->
				<div class="visualClear"></div>
	</div>
</div></div>
<div id="column-one">
	<h2>Navigation menu</h2>
	<div id="p-cactions" class="portlet" role="navigation">
		<h3>Views</h3>
		<div class="pBody">
			<ul>
				<li id="ca-nstab-main" class="selected"><a href="/ITKWikiArchive/Wiki/ITK/Release_4/Modularization/Add_a_module/itk-module.cmake" title="View the content page [c]" accesskey="c">Page</a></li>
				<li id="ca-talk" class="new"><a href="/Wiki/index.php?title=Talk:ITK/Release_4/Modularization/Add_a_module/itk-module.cmake&amp;action=edit&amp;redlink=1" title="Discussion about the content page [t]" accesskey="t">Discussion</a></li>
				<li id="ca-viewsource"><a href="/Wiki/index.php?title=ITK/Release_4/Modularization/Add_a_module/itk-module.cmake&amp;action=edit" title="This page is protected.&#10;You can view its source [e]" accesskey="e">View source</a></li>
				<li id="ca-history"><a href="/Wiki/index.php?title=ITK/Release_4/Modularization/Add_a_module/itk-module.cmake&amp;action=history" rel="archives" title="Past revisions of this page [h]" accesskey="h">History</a></li>
			</ul>
		</div>
	</div>
	<div class="portlet" id="p-personal" role="navigation">
		<h3>Personal tools</h3>
		<div class="pBody">
			<ul>
				<li id="pt-anonuserpage"><a href="/Wiki/User:207.241.237.227" class="new" title="The user page for the IP address you are editing as [.]" accesskey=".">207.241.237.227</a></li>
				<li id="pt-anontalk"><a href="/Wiki/User_talk:207.241.237.227" class="new" title="Discussion about edits from this IP address [n]" accesskey="n">Talk for this IP address</a></li>
				<li id="pt-login"><a href="/Wiki/index.php?title=Special:UserLogin&amp;returnto=ITK%2FRelease+4%2FModularization%2FAdd+a+module%2Fitk-module.cmake" title="You are encouraged to log in; however, it is not mandatory [o]" accesskey="o">Log in</a></li>
				<li id="pt-createaccount"><a href="/Wiki/Special:RequestAccount">Request account</a></li>
			</ul>
		</div>
	</div>
	<div class="portlet" id="p-logo" role="banner">
<a href="/Wiki/Main_Page" style="background-image: url(/Wiki/images/KWLogo.png);" title="Visit the main page"></a>
	</div>
	<div class="generated-sidebar portlet" id="p-navigation" role="navigation">
		<h3>Navigation</h3>
		<div class='pBody'>
			<ul>
				<li id="n-mainpage-description"><a href="/Wiki/Main_Page" title="Visit the main page [z]" accesskey="z">Main page</a></li>
				<li id="n-recentchanges"><a href="/Wiki/Special:RecentChanges" title="A list of recent changes in the wiki [r]" accesskey="r">Recent changes</a></li>
				<li id="n-randompage"><a href="/Wiki/Special:Random" title="Load a random page [x]" accesskey="x">Random page</a></li>
				<li id="n-help"><a href="https://www.mediawiki.org/wiki/Special:MyLanguage/Help:Contents" title="The place to find out">Help</a></li>
			</ul>
		</div>
	</div>
	<div id="p-search" class="portlet" role="search">
		<h3><label for="searchInput">Search</label></h3>
		<div id="searchBody" class="pBody">
			<form action="/Wiki/index.php" id="searchform">
				<input type='hidden' name="title" value="Special:Search"/>
				<input type="search" name="search" placeholder="Search" title="Search KitwarePublic [f]" accesskey="f" id="searchInput" />
				<input type="submit" name="go" value="Go" title="Go to a page with this exact name if exists" id="searchGoButton" class="searchButton" />&#160;
				<input type="submit" name="fulltext" value="Search" title="Search the pages for this text" id="mw-searchButton" class="searchButton" />
			</form>

					</div>
	</div>
	<div class="portlet" id="p-tb" role="navigation">
		<h3>Tools</h3>
		<div class="pBody">
			<ul>
				<li id="t-whatlinkshere"><a href="/Wiki/Special:WhatLinksHere/ITK/Release_4/Modularization/Add_a_module/itk-module.cmake" title="A list of all wiki pages that link here [j]" accesskey="j">What links here</a></li>
				<li id="t-recentchangeslinked"><a href="/Wiki/Special:RecentChangesLinked/ITK/Release_4/Modularization/Add_a_module/itk-module.cmake" title="Recent changes in pages linked from this page [k]" accesskey="k">Related changes</a></li>
				<li id="t-specialpages"><a href="/Wiki/Special:SpecialPages" title="A list of all special pages [q]" accesskey="q">Special pages</a></li>
				<li id="t-permalink"><a href="/Wiki/index.php?title=ITK/Release_4/Modularization/Add_a_module/itk-module.cmake&amp;oldid=48357" title="Permanent link to this revision of the page">Permanent link</a></li>
				<li id="t-info"><a href="/Wiki/index.php?title=ITK/Release_4/Modularization/Add_a_module/itk-module.cmake&amp;action=info">Page information</a></li>
			</ul>
		</div>
	</div>
	<div class="generated-sidebar portlet" id="p-coll-print_export" role="navigation">
		<h3>Print/export</h3>
		<div class='pBody'>
			<ul>
				<li id="coll-create_a_book"><a href="/Wiki/index.php?title=Special:Book&amp;bookcmd=book_creator&amp;referer=ITK%2FRelease+4%2FModularization%2FAdd+a+module%2Fitk-module.cmake">Create a book</a></li>
				<li id="coll-download-as-rl"><a href="/Wiki/index.php?title=Special:Book&amp;bookcmd=render_article&amp;arttitle=ITK%2FRelease+4%2FModularization%2FAdd+a+module%2Fitk-module.cmake&amp;oldid=48357&amp;writer=rl">Download as PDF</a></li>
				<li id="t-print"><a href="/Wiki/index.php?title=ITK/Release_4/Modularization/Add_a_module/itk-module.cmake&amp;printable=yes" title="Printable version of this page [p]" accesskey="p">Printable version</a></li>
			</ul>
		</div>
	</div>
</div><!-- end of the left (by default at least) column -->
<div class="visualClear"></div>
<div id="footer" role="contentinfo">
	<div id="f-copyrightico">
		<a href="https://creativecommons.org/licenses/by/2.5/"><img src="https://creativecommons.org/images/public/somerights20.png" alt="Attribution2.5" width="88" height="31" /></a>
	</div>
	<div id="f-poweredbyico">
		<a href="//www.mediawiki.org/"><img src="/Wiki/skins/common/images/poweredby_mediawiki_88x31.png" alt="Powered by MediaWiki" width="88" height="31" /></a>
	</div>
	<ul id="f-list">
		<li id="lastmod"> This page was last modified on 14 July 2012, at 12:31.</li>
		<li id="viewcount">This page has been accessed 1,905 times.</li>
		<li id="copyright">Content is available under <a class="external" rel="nofollow" href="https://creativecommons.org/licenses/by/2.5/">Attribution2.5</a> unless otherwise noted.</li>
		<li id="privacy"><a href="/Wiki/KitwarePublic:Privacy_policy" title="KitwarePublic:Privacy policy">Privacy policy</a></li>
		<li id="about"><a href="/Wiki/KitwarePublic:About" title="KitwarePublic:About">About KitwarePublic</a></li>
		<li id="disclaimer"><a href="/Wiki/KitwarePublic:General_disclaimer" title="KitwarePublic:General disclaimer">Disclaimers</a></li>
	</ul>
</div>
</div>
<script>/*<![CDATA[*/window.jQuery && jQuery.ready();/*]]>*/</script><script>if(window.mw){
mw.loader.state({"site":"ready","user":"ready","user.groups":"ready"});
}</script>
<script>if(window.mw){
mw.loader.load(["mediawiki.action.view.postEdit","mediawiki.user","mediawiki.hidpi","mediawiki.page.ready","mediawiki.searchSuggest"],null,true);
}</script>
<script>if(window.mw){
mw.config.set({"wgBackendResponseTime":304});
}</script></body></html>