// JavaScript Document
/* This script and many more are available free online at
The JavaScript Source!! http://javascript.internet.com
Created by: Steve Chipman | http://slayeroffice */

var mDown = false;
var offsetX=0;
var offsetY=0;
function init() {
	document.onmousedown = captureMouseDown;
	document.onmousemove = captureMouseMove;
	document.onmouseup = captureMouseUp;
	document.getElementById("marker").onmousedown = captureOffset;
	document.getElementById("marker").style.top = "0px";
	document.getElementById("marker").style.left = "0px";
}

function captureOffset(e) {
	x = parseInt(document.getElementById("marker").style.left);
	y = parseInt(document.getElementById("marker").style.top);
	if(document.all) {
		offsetX=window.event.clientX - x;
		offsetY=window.event.clientY - y;
	} else {
		offsetX = e.pageX - x;
		offsetY = e.pageY - y;
	}
}

function captureMouseDown() {
	mDown=true;
}

function captureMouseUp() {
	mDown = false;
}

function captureMouseMove(e) {
	if(!mDown)return;
	x = document.all?window.event.clientX - offsetX:e.pageX - offsetX;
	y = document.all?window.event.clientY - offsetY:e.pageY - offsetY;
	
	if(x<=-1 || x>=130 || y<=-1 || y >= 100)return;
	document.getElementById("marker").style.left = x + "px";	
	document.getElementById("marker").style.top = y + "px";

	x2 = parseInt(document.getElementById("marker").style.left);
	y2 = parseInt(document.getElementById("marker").style.top);
	x2 = (x2 - (x2*2))*2; 
	y2 = (y2 - (y2*2))*2;
	document.getElementById("largeImage").style.backgroundPosition = x2 + "px " + y2 + "px";
}

// Multiple onload function created by: Simon Willison
// http://simonwillison.net/2004/May/26/addLoadEvent/
function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload != 'function') {
    window.onload = func;
  } else {
    window.onload = function() {
      if (oldonload) {
        oldonload();
      }
      func();
    }
  }
}

addLoadEvent(function() {
  init();
});

