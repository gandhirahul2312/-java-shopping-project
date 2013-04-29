<jsp:useBean id="data" class="pack.OrderBean"/>
<jsp:setProperty name="data" property="*"/> 


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.style1 {
	font-family: "Courier New", Courier, mono;
	font-style: italic;
	font-weight: bold;
	font-size: 24px;
	color: #6C440D;
}
.style2 {
	color: #993300;
	font-weight: bold;
}
.style3 {
	font-size: 18px;
	color: #0000FF;
}
-->
</style>
</head>




<body>
<%
String temptable=(String)session.getAttribute("temptable1");
data.setTemptable(temptable);
%>

<% 
String h="none";
Enumeration e=request.getParameterNames();
while(e.hasMoreElements())
{
h=(String)e.nextElement();
}
out.println(h);
if(h.equals("order"))
{
String userid=(String)session.getAttribute("name");
data.setUser(userid);
data.log();
session.invalidate();
%>
<table width="811" height="151" border="1" align="center">
  <tr>
    <td width="801" background="pic/title04.JPG"><div align="center" class="style1">You are Successfully Buy Your Product And Logout..... </div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><p>&nbsp;</p>
      <p class="style2">Thanks for Registering and buying the products from our site.Now you are successfully log out.If you want agin surf the site Click on Here....... </p>      
    <p align="right" class="style3"><a href="index.jsp">Home Page </a></p></td>
  </tr>
</table>
<%
} 
else { 
session.invalidate();
%>
<table width="811" height="151" border="1" align="center">
  <tr>
    <td width="801" background="pic/title04.JPG"><div align="center" class="style1">You are Successfully Logout..... </div></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><p>&nbsp;</p>
      <p class="style2">Thanks for Registering on our site.Now you are successfully log out.If you want agin surf the site Click on Here....... </p>      
    <p align="right" class="style3"><a href="index.jsp">Home Page </a></p></td>
  </tr>
</table><%}%>
</body>
</html>
