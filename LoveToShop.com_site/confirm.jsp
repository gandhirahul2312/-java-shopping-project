<jsp:useBean id="data" class="pack.RegistrationBean"/>
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
	color: #990033;
	font-weight: bold;
	font-size: 18px;
	font-style: italic;
}
-->
</style>
</head>

<body>
<form name="form1" method="post" action="confirm.jsp">
<table width="986" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3"><img src="pic/head1.gif" width="986" height="146"></td>
  </tr>
  <tr>
    <td colspan="3"><jsp:include page="category.jsp"/></td>
  </tr>
  <tr>
    <td colspan="3"  height="2" bgcolor="ff6600"></td>
  </tr>
  <tr>
    <td colspan="3"><jsp:include page="hindex.html"/></td>
  </tr>
  <tr>
    <td height="15">&nbsp;</td>
    <td>&nbsp;</td>
    <td >&nbsp;</td>
  </tr>
  <tr>
    <td height="39">&nbsp;</td>
    <td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="style1">Forget Password?</span></td>
    <td >&nbsp;</td>
  </tr>
  <tr>
    <td height="2" ></td>
    <td height="2" bgcolor="#FF6600" ></td>
    <td ></td>
  </tr>
  <tr>
    <td height="68" >&nbsp;</td>
    <td >&nbsp; &nbsp; &nbsp; Enter Your Valid E-Mail address &nbsp;
    <input name="email1" type="text"  size="50" maxlength="50"></td>
    <td >&nbsp;</td>
  </tr>
  <tr>
    <td height="55" >&nbsp;</td>
    <td align="center">
	
      <input type="submit" name="continue" title="continue" value="Continue">&nbsp;&nbsp;&nbsp;&nbsp;	</td>
    <td >&nbsp;</td>
  </tr>
  <tr>
    <td height="55" >&nbsp;</td>
    <td align="center"><font size="+1"><a href="login.jsp?title=login">Login Page</a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; <a href="register.jsp?title=register">Register.jsp</a></font></td>
    <td >&nbsp;</td>
  </tr>
  <tr>
    <td width="130" height="55" >&nbsp;</td>
    <td width="721" align="center"><font size="+1" face="Arial, Helvetica, sans-serif">
	  <%
	String get=request.getParameter("title");
	String show=data.forget();
	
	if(get==null)
	{
	if(show.equals("no"))
	{
	out.println("Please Enter The Valid E-Mail Id");
	}
	
	else
	{
	 out.println("Your Password Is -  "+show);
	}
	}
	else
	{
	out.println(".......");
	}
	%>
      </font></td>
    <td width="135" >&nbsp;</td>
	 
  </tr>
</table>
</form>
</body>
</html>
