<jsp:useBean id="data" class="pack.ValidationBean"/>
<jsp:setProperty name="data" property="*"/>


<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<table width="350" align="center"    border="1" cellspacing="2" cellpadding="2">
  <tr>
  <%
String id=data.getId();

if(data.validation())
%>
 	<td> User The User id and Password<br>And Click On User Login Button..... </td>
   </tr>

   <%
   else
   %>
    <td align="center">Please Enter The Right Password.....<br> Login Fail....?<br><a href="Login.jsp">Back<<</a> </td>
   
</table>

</body>
</html>
