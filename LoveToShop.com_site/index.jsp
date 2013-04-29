<jsp:useBean id="data" class="pack.BuyBean"/>
<jsp:setProperty name="data" property="*"/> 


<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.style1 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size:16px;
}



.hhstyle
{

border-top: 1px solid #cccccc;
border-bottom: 1px solid #cccccc;
border-right: 1px solid #cccccc;
border-left:1px solid #cccccc;
}

-->
</style>

<script type="text/javascript" src="jquery.min.js"></script>
<script type="text/javascript" src="fadeslideshow.js">

/***********************************************
* Ultimate Fade In Slideshow v2.0- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
***********************************************/

</script>

<script type="text/javascript">

var mygallery=new fadeSlideShow({
	wrapperid: "fadeshow1", //ID of blank DIV on page to house Slideshow
	dimensions: [600, 139], //width/height of gallery in pixels. Should reflect dimensions of largest image
	imagearray: [
		["pic/usb1.jpg", "", "", ""],
		["pic/usb2.jpg", "", ""],
		["pic/usb3.jpg"],
		["pic/usb4.jpg", "", "", ""],
		["pic/usb5.jpg", "", "", ""] //<--no trailing comma after very last image element!
	],
	displaymode: {type:'auto', pause:2500, cycles:0, wraparound:false},
	persist: false, //remember last viewed slide and recall within same session?
	fadeduration: 2000, //transition duration (milliseconds)
	descreveal: "ondemand",
	togglerid: ""
})


</script>
</head>

<body>
<%
Integer count=(Integer)pageContext.getAttribute("count",pageContext.APPLICATION_SCOPE);
if(count==null)
{
count=new Integer(0);
}
String home=(String)request.getParameter("home");
//out.println(home);
if(home==null)
{
count=new Integer(count.intValue()+1);
}
pageContext.setAttribute("count",count,PageContext.APPLICATION_SCOPE);
String temptable1="temp"+count;
//out.println(temptable1);
session.setAttribute("temptable1",temptable1);
String temptable=(String)session.getAttribute("temptable1");
data.setTemptable(temptable);
data.create();
%>

<%
String get=request.getParameter("title");
if(get==null)
{
get="first";
}
get=get+".jsp";

%>

<table width="980" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="970"><img src="pic/head1.gif" width="986" height="146"></td>
  </tr>
  <tr>
    <td><jsp:include page="category.jsp"/></td>
  </tr>
  <tr>
    <td height="2" bgcolor="ff6600"></td>
  </tr>
  <tr>
    <td height="23"><jsp:include page="hindex.html"/></td>
  </tr>
  <tr>
    <td height="38"><table width="979" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="170" rowspan="3"><jsp:include page="sideindex.html"/></td>
        <td width="620" height="160" align="center">
		<table border="0" cellpadding="0" cellspacing="0" align="center">
<tr>
<td  height=150 width=600 align="center">
<div id="fadeshow1"></div>
</td>
</tr>
</table>

		</td>
        <td width="184" rowspan="3"><jsp:include page="slide.html"/></td>
      </tr>
      <tr>
        <td height="19" bgcolor="#FFFFFF"><jsp:include page="<%=get%>"/></td>
      </tr>
      <tr>
        <td height="11" bgcolor="#FFFFFF"></td>
      </tr>
    </table>
	
	</td>
  <tr>
    <td height="133" bgcolor="#FFFFFF" align="left"><table width="981" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="980" height="136" valign="top" class="hhstyle">
       <script type="text/javascript">

/***********************************************
* Conveyor belt slideshow script- &copy; Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/


//Specify the slider's width (in pixels)
var sliderwidth="980px"
//Specify the slider's height
var sliderheight="129px"
//Specify the slider's slide speed (larger is faster 1-10)
var slidespeed=1
//configure background color:
slidebgcolor="#ffffff"

//Specify the slider's images
var leftrightslide=new Array()
var finalslide=''
leftrightslide[0]='<img src="pic/pic13.jpg" border=0>'
leftrightslide[1]='<img src="pic/pic14.jpg" border=0>'
leftrightslide[2]='<img src="pic/pic15.jpg" border=0>'
leftrightslide[3]='<img src="pic/pic16.jpg" border=0>'
leftrightslide[4]='<img src="pic/pic17.jpg" border=0>'
leftrightslide[5]='<img src="pic/pic18.jpg" border=0>'
leftrightslide[6]='<img src="pic/pic19.jpg" border=0>'
leftrightslide[7]='<img src="pic/pic20.jpg" border=0>'
leftrightslide[8]='<img src="pic/pic21.jpg" border=0>'
leftrightslide[9]='<img src="pic/pic22.jpg" border=0>'
leftrightslide[10]='<img src="pic/pic23.jpg" border=0>'
leftrightslide[11]='<img src="pic/pic24.jpg" border=0>'
leftrightslide[12]='<img src="pic/pic25.jpg" border=0>'
leftrightslide[13]='<img src="pic/pic26.jpg" border=0>'



//Specify gap between each image (use HTML):
var imagegap="         "

//Specify pixels gap between each slideshow rotation (use integer):
var slideshowgap=6


////NO NEED TO EDIT BELOW THIS LINE////////////

var copyspeed=slidespeed
leftrightslide='<nobr>'+leftrightslide.join(imagegap)+'</nobr>'
var iedom=document.all||document.getElementById
if (iedom)
document.write('<span id="temp" style="visibility:hidden;position:absolute;top:-100px;left:-9000px">'+leftrightslide+'</span>')
var actualwidth=''
var cross_slide, ns_slide

function fillup(){
if (iedom){
cross_slide=document.getElementById? document.getElementById("test2") : document.all.test2
cross_slide2=document.getElementById? document.getElementById("test3") : document.all.test3
cross_slide.innerHTML=cross_slide2.innerHTML=leftrightslide
actualwidth=document.all? cross_slide.offsetWidth : document.getElementById("temp").offsetWidth
cross_slide2.style.left=actualwidth+slideshowgap+"px"
}
else if (document.layers){
ns_slide=document.ns_slidemenu.document.ns_slidemenu2
ns_slide2=document.ns_slidemenu.document.ns_slidemenu3
ns_slide.document.write(leftrightslide)
ns_slide.document.close()
actualwidth=ns_slide.document.width
ns_slide2.left=actualwidth+slideshowgap
ns_slide2.document.write(leftrightslide)
ns_slide2.document.close()
}
lefttime=setInterval("slideleft()",30)
}
window.onload=fillup

function slideleft(){
if (iedom){
if (parseInt(cross_slide.style.left)>(actualwidth*(-1)+8))
cross_slide.style.left=parseInt(cross_slide.style.left)-copyspeed+"px"
else
cross_slide.style.left=parseInt(cross_slide2.style.left)+actualwidth+slideshowgap+"px"

if (parseInt(cross_slide2.style.left)>(actualwidth*(-1)+8))
cross_slide2.style.left=parseInt(cross_slide2.style.left)-copyspeed+"px"
else
cross_slide2.style.left=parseInt(cross_slide.style.left)+actualwidth+slideshowgap+"px"

}
else if (document.layers){
if (ns_slide.left>(actualwidth*(-1)+8))
ns_slide.left-=copyspeed
else
ns_slide.left=ns_slide2.left+actualwidth+slideshowgap

if (ns_slide2.left>(actualwidth*(-1)+8))
ns_slide2.left-=copyspeed
else
ns_slide2.left=ns_slide.left+actualwidth+slideshowgap
}
}


if (iedom||document.layers){
with (document){
document.write('<table border="0" cellspacing="0" cellpadding="0"><td>')
if (iedom){
write('<div style="position:relative;width:'+sliderwidth+';height:'+sliderheight+';overflow:hidden">')
write('<div style="position:absolute;width:'+sliderwidth+';height:'+sliderheight+';background-color:'+slidebgcolor+'" onMouseover="copyspeed=0" onMouseout="copyspeed=slidespeed">')
write('<div id="test2" style="position:absolute;left:0px;top:0px"></div>')
write('<div id="test3" style="position:absolute;left:-1000px;top:0px"></div>')
write('</div></div>')
}
else if (document.layers){
write('<ilayer width='+sliderwidth+' height='+sliderheight+' name="ns_slidemenu" bgColor='+slidebgcolor+'>')
write('<layer name="ns_slidemenu2" left=0 top=0 onMouseover="copyspeed=0" onMouseout="copyspeed=slidespeed"></layer>')
write('<layer name="ns_slidemenu3" left=0 top=0 onMouseover="copyspeed=0" onMouseout="copyspeed=slidespeed"></layer>')
write('</ilayer>')
}
document.write('</td></table>')
}
}
    </script>


        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="19">&nbsp;</td>
  </tr>
  <tr>
    <td height="19" align="center"><img src="pic/add.jpg"></td>
  </tr>
  <tr>
    <td height="19">
	
  </tr>
  <tr>
    <td height="19"><div align="center"><a href="link.jsp">bbb</a></div></td>
  </tr>
</table>
</body>
</html>
