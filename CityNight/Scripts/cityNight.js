//
// Script inspired by Asual theme for Blojsom
//
//

function setActiveStyleSheet(title) {
	var i, a, main;
	for(i=0; (a = document.getElementsByTagName("link")[i]); i++) {
		if(a.getAttribute("rel").indexOf("style") != -1 && a.getAttribute("title")) {
			a.disabled = true;
			if(a.getAttribute("title") == title) a.disabled = false;
		}
	}
}

function getActiveStyleSheet() {
	var i, a;
	for(i=0; (a = document.getElementsByTagName("link")[i]); i++) {
		if(a.getAttribute("rel").indexOf("style") != -1 && a.getAttribute("title") && !a.disabled) return a.getAttribute("title");
	}
	return null;
}

function getPreferredStyleSheet() {
	var i, a;
	for(i=0; (a = document.getElementsByTagName("link")[i]); i++) {
		if(a.getAttribute("rel").indexOf("style") != -1
		&& a.getAttribute("rel").indexOf("alt") == -1
		&& a.getAttribute("title")
		) return a.getAttribute("title");
	}
	return null;
}

function createCookie(name,value,days) {
	if (days) {
		var date = new Date();
		date.setTime(date.getTime()+(days*24*60*60*1000));
		var expires = "; expires="+date.toGMTString();
	}
	else expires = "";
	document.cookie = name+"="+value+expires+"; path=/";
}

function readCookie(name) {
	var nameEQ = name + "=";
	var ca = document.cookie.split(';');
	for(var i=0;i < ca.length;i++) {
		var c = ca[i];
		while (c.charAt(0)==' ') c = c.substring(1,c.length);
		if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
	}
	return null;
}

function writeSwitcher() {
	var switcher = (getActiveStyleSheet() == "elastic") ? "Switch to Fixed Layout" : "Switch to Elastic Layout";
	document.write('<a id="switchlink" href="#" onclick="switchLayout(); return false;" title="Click here to change the content width"><span>' + switcher + '</span></a>');
}

//var cookie = readCookie("style");
//var title = cookie ? cookie : getPreferredStyleSheet();
//setActiveStyleSheet(title);

function switchLayout() {
	var title = (getActiveStyleSheet() == "elastic") ? "fixed" : "elastic";
	setActiveStyleSheet(title);
	document.getElementById("switchlink").firstChild.firstChild.nodeValue = (getActiveStyleSheet() == "elastic") ? "Switch to Fixed Layout" : "Switch to Elastic Layout";
	createCookie("style", title, 365);
	
	// We want to re-init the slider when switching stylesheets
	var activeLI_tmp = activeLI;
	activeLI = -1;
	
	initSlide(activeLI_tmp);
}

/******************************************************
	Comment Preview methods
******************************************************/
function reloadPreviewDiv() {
	var previewString = document.getElementById("PostComment.ascx_tbComment").value;
	if (previewString.length > 0)
	{
		previewString = htmlUnencode(previewString);
		previewString = previewString.replace(new RegExp("(.*)\n\n([^#\*\n\n].*)","g"), "<p>$1</p><p>$2</p>");
		previewString = previewString.replace(new RegExp("(.*)\n([^#\*\n].*)","g"), "$1<br />$2");
	}
	document.getElementById("commentPreview").innerHTML = previewString;
}

function htmlUnencode(s)
{
	return s.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
}


/******************************************************
	Focus Slide
	version 1.0
	last revision: 12.17.2004
	steve@slayeroffice.com

	Should you improve upon or
	modify this code, please let me know
	so that I can update the version hosted
	at slayeroffice.

	PLEASE LEAVE THIS NOTICE INTACT!

******************************************************/

var d=document;		// shortcut reference to the document object
var activeLI = 0;		// the currently "active" list element - value represents its index in the liObj array
var zInterval = null;	// interval variable

var SLIDE_STEP = 10;	// how many pixels to move the sliding div at a time
var SLIDER_WIDTH = 50;	// the width of the sliding div. used to calculate its left based on the width and left of the active LI element


function initSlider() {
	// bail out if this is an older browser or Opera which gets the offsets wrong
	// the opera issue is fixable by subtracting the container UL's width from the offsetLefts...but I dont care enough to do it
	// this does NOT break opera, it just wont get the sliding thing

	if(!document.getElementById || window.opera)return;

	// create references to the LI's
	mObj = d.getElementById("navheader");
	liObj = mObj.getElementsByTagName("li");

	// set up the mouse over events
	for(i=0;i<liObj.length;i++) {
		liObj[i].xid = i;
		liObj[i].onmouseover = function() { initSlide(this.xid); }
	}

	// create the slider object
	slideObj = mObj.appendChild(d.createElement("div"));
	slideObj.id = "slider";

	// position the slider over the first LI
	x = liObj[activeLI].offsetLeft + (liObj[activeLI].offsetWidth/3 - SLIDER_WIDTH/3)-5;
	y = liObj[activeLI].offsetTop;
	slideObj.style.top = y + "px";
	slideObj.style.left = x + "px";
}


function initSlide(objIndex) {
	// return if the user is mousing over the currently active LI
	if(objIndex == activeLI)return;
	// clear the interval so we can start it over in a few lines to avoid doubling up on intervals
	clearInterval(zInterval);

	// set the active list item to the object index argument
	activeLI = objIndex;
	// figure out the destination for the sliding div element
	destinationX = Math.floor(liObj[activeLI].offsetLeft + (liObj[activeLI].offsetWidth/3 - SLIDER_WIDTH/3))-5;
	// start the interval
	intervalMethod = function() { doSlide(destinationX); }
	zInterval = setInterval(intervalMethod,10);
}

function doSlide(dX) {
	// get the current left of the sliding div
	x = slideObj.offsetLeft;
	if(x+SLIDE_STEP<dX) {
		// div is less than its destination, move it to the right
		x+=SLIDE_STEP;
		slideObj.style.left = x + "px";
	} else if (x-SLIDE_STEP>dX) {
		// div is more than its destination, move to the left
		x-=SLIDE_STEP;
		slideObj.style.left = x + "px";
	} else  {
		// div is within the boundaries of its destination. put it where its supposed to be
		// and clear the interval
		slideObj.style.left = dX + "px";
		clearInterval(zInterval);
		zInterval = null;
	}
}