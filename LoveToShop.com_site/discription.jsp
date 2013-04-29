<jsp:useBean id="data" class="pack.DiscriptionBean"/>
<jsp:setProperty name="data" property="*"/> 




<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">


<link rel="stylesheet" href="lightbox.css" type="text/css" media="screen" />
<script type="text/javascript" src="lightbox.js"></script>

<script type="text/javascript" src="imageNavigator.js"></script>

<SCRIPT LANGUAGE="JavaScript">

<!-- This script and many more are available free online at -->
<!-- The JavaScript Source!! http://javascript.internet.com -->

<!-- Begin
function showtip2(current,e,text){
  if (document.all&&document.readyState=="complete"){
    document.all.tooltip2.innerHTML='<marquee style="border:1px solid black">'+text+'</marquee>'
    document.all.tooltip2.style.pixelLeft=event.clientX+document.body.scrollLeft+10
    document.all.tooltip2.style.pixelTop=event.clientY+document.body.scrollTop+10
    document.all.tooltip2.style.visibility="visible"
}
  else if (document.layers){
    document.tooltip2.document.nstip.document.write('<b>'+text+'</b>')
    document.tooltip2.document.nstip.document.close()
    document.tooltip2.document.nstip.left=0
    currentscroll=setInterval("scrolltip()",100)
    document.tooltip2.left=e.pageX+10
    document.tooltip2.top=e.pageY+10
    document.tooltip2.visibility="show"
}
}
function hidetip2(){
  if (document.all)
    document.all.tooltip2.style.visibility="hidden"
    else if (document.layers){
    clearInterval(currentscroll)
    document.tooltip2.visibility="hidden"
}
}


function showtip3(current,e,text){
  if (document.all&&document.readyState=="complete"){
    document.all.tooltip3.innerHTML='<marquee style="border:1px solid black">'+text+'</marquee>'
    document.all.tooltip3.style.pixelLeft=event.clientX+document.body.scrollLeft+10
    document.all.tooltip3.style.pixelTop=event.clientY+document.body.scrollTop+10
    document.all.tooltip3.style.visibility="visible"
}
  else if (document.layers){
    document.tooltip3.document.nstip.document.write('<b>'+text+'</b>')
    document.tooltip3.document.nstip.document.close()
    document.tooltip3.document.nstip.left=0
    currentscroll=setInterval("scrolltip()",100)
    document.tooltip3.left=e.pageX+10
    document.tooltip3.top=e.pageY+10
    document.tooltip3.visibility="show"
}
}
function hidetip3(){
  if (document.all)
    document.all.tooltip3.style.visibility="hidden"
    else if (document.layers){
    clearInterval(currentscroll)
    document.tooltip3.visibility="hidden"
}
}
//  End -->
</script>
<style type="text/css">
<!--
.style2 {color: #666666}
.style3 {font-family: Arial, Helvetica, sans-serif}
.style4 {color: #990000}
.style6 {font-family: Arial, Helvetica, sans-serif; font-size: 12px;
	font-weight: bold;
		color: gray;}
.style8 {
	font-family: Arial, Helvetica, sans-serif;
	color: #660000;
	font-weight: bold;
}



-->
</style>




</head>

<body>

<%
String name=request.getParameter("table");
data.setTable(name);
String type=request.getParameter("type");
String location=request.getParameter("title");
data.setLocation(location);
String code=request.getParameter("code");
data.setCode(code);
data.detail();
%>
<table width="200" border="0" cellpadding="0" cellspacing="0">


  <tr>
    <td><img src="pic/head1.gif" width="986" height="146"></td>
  </tr>
  <tr>
    <td><jsp:include page="category.jsp"/></td>
  </tr>
  <tr>
    <td height="2" colspan="8" bgcolor="ff6600"></td>
  </tr>
  <tr>
    <td><jsp:include page="hindex.html"/></td>
  </tr>
</table>

  <table width="983" border="0" cellpadding="0" cellspacing="0">
  <style type="text/css">
<!--
#largeImage {
	position:relative;
	width:100px;
	height:92px;
	border:1px solid #000000;
	background-image:url("photograph/<%=location%>.jpg");
	background-repeat:no-repeat;
	background-position:0px 0px;
}

#smallImage {
	position:relative;
	border:1px solid #000000;
	margin-top:10px;
	width:200px;
	height:155px;
}

#marker {
	position:absolute;
	top:5px;
	border:1px solid #FF0000;
	width:70px;
	height:55px;
	cursor:pointer;
	background-image:url("tp.gif");
}


.style1 {
	font-size: 14px;
	font-weight: bold;
		color:#990000
}

-->
</style>
  <tr>
    <td colspan="6" height="10">
	
	<MARQUEE onmouseover=this.stop() 
                                onmouseout=this.start() scrollDelay=100>
	<span class="style2"> Call us to place your orders : 
                                +91 - 11 -23536722.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                Timings: Monday to Saturday 10:00 am to 05:30 pm 
                                (Except Holidays). 
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please 
                                confirm the Delivery Time for your 
                                orders.</span>
	</MARQUEE>
	
	</td>
  </tr>
  <form action="buy.jsp?table=<%=name%>&code=<%=code%>&location=<%=location%>"  method="post" name="form7">
  <tr>
    <td width="118" height="191" rowspan="14"><jsp:include page="sideindex.html"/></td>
    <td width="33" rowspan="14"><img src="pic/product_header.jpg" align="top">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	<br>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <p>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp;  </p>
	                                       
	             	
	</td>
    <td height="12" colspan="4"></td>
  </tr>
  <tr>
    <td height="27" colspan="3"><div class="style1">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Product Information</div></td>
    <td height="27"><div align="right">&nbsp; &nbsp; &nbsp;</div></td>
  </tr>
 
  <tr>
    <td height="1" colspan="4" bgcolor="#FF0000"></td>
  </tr>
  <tr>
    <td height="19" colspan="3">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="43" height="157">&nbsp;</td>
    <td width="202" align="center">
	
	<div id="largeImage"></div>
<div id="smallImage" style="width:200px; height:155; ">
<!--  This image must actually be double the size listed below  -->
 <img src="photograph/<%=location %>.jpg" width="200" height="155" border="1" style="border-bottom-color:#999999; border-left-color:#999999; border-right-color:#999999; border-top-color:#999999; ">
	<div id="marker"></div>
</div></td>
    <td width="45">&nbsp;</td>
    <td width="542">
	<p>&nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>  <br> &nbsp;
	<table width="474" height="114" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="105" height="19"><div id="tooltip2" style="position:absolute;visibility:hidden;clip:rect(0 20 20 0);width:100px;background-color:#cccccc;z-index:10"></div>
<div align="CENTER" name="divTest" onMouseover="showtip2(this,event,'Maximum Quantity Order');" onMouseout="hidetip2();" STYLE="cursor: hand">
<div align="center" class="style6" >&nbsp; MQO:-</div></div></td>
        <td width="113"><%=data.getMoq()%></td>
        <td width="34"></td>
        <td width="61"><div id="tooltip3" style="position:absolute;visibility:hidden;clip:rect(0 20 20 0);width:100px;background-color:#cccccc;z-index:10"></div>
<div align="CENTER" name="divTest" onMouseover="showtip3(this,event,'Your Quantity Order');" onMouseout="hidetip3();" STYLE="cursor: hand"><div align="center" class="style6" >YQO:-</div></div>
</td>
        <td width="161">
          <input name="quantity" type="text" value="1" size="7">
</td>
      </tr>
      <tr>
        <td  height="19"><div align="center" class="style6">&nbsp; Code:-</div></td>
        <td colspan="4"><%=code%></td>
      </tr>
      <tr>
        <td height="19"><div align="center" class="style6">&nbsp;Name:-</div></td>
        <td colspan="4"><%=data.getName()%></td>
      </tr>
      <tr>
        <td height="19"><div align="center" class="style6">&nbsp;&nbsp; Size:-</div></td>
        <td colspan="4"><%=data.getSize()%></td>
      </tr>
      <tr>
        <td height="19"><div align="center" class="style6">&nbsp; Color:-</div></td>
        <td colspan="4"><%=data.getFeature()%></td>
      </tr>
      <tr>
        <td height="19"><div align="center" class="style6">&nbsp; Price:-</div></td>
        <td colspan="4"><%=data.getPrice()%>&nbsp;Rs.</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="19" colspan="3" align="center"><a href="photograph/<%=location %>.jpg" rel="lightbox" >To View Full Size Of Image Click <br>...Here... </a></td>
    <td width="542">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input name="submit" type="submit"  class="style6" value="Add To Cart"></td>
  </tr>
  <tr>
    <td height="27" colspan="3">&nbsp;</td>
    <td width="542"><img src="pic/arw-grn-d.JPG" width="12" height="18"><span class="style8">&nbsp; Each Item Can Be Gift Wraped On Your Request. </span></td>
  </tr>
  <tr>
    <td height="26" colspan="3">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="19" colspan="3"><div align="left"><img src="pic/call-us.jpg" width="103" height="28"></div></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="26" colspan="3">Tele Phone No-: </td>
    <td height="26">&nbsp;</td>
  </tr>
  <tr>
    <td height="26" colspan="3">Fax No-: </td>
    <td height="26">&nbsp;</td>
  </tr>
  <tr>
    <td height="24" colspan="3">Contact Persone-: </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="35" colspan="3">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="35" colspan="3">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="6">&nbsp;</td>
  </tr>
  </form>

</table>

</body>
</html>
