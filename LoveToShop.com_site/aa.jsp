


<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%

String get=(String)session.getAttribute("user");
String h="none";
Enumeration e=request.getParameterNames();
while(e.hasMoreElements())
{
h=(String)e.nextElement();
}
if(h.equals("continue"))
{
%>
<jsp:forward page="index.jsp?home=home1"/>
<%
}
else if(h.equals("buy"))
{
if(get==null)
{
%>
<jsp:forward page="login.jsp?title=login&value=buy"></jsp:forward>
<%}else
{
%>
<jsp:forward page="show.jsp"></jsp:forward>
<%}
}%>
</body>
</html>
