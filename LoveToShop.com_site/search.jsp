



<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--

.style1 {
	font-size: 14px;
	font-weight: bold;
		color:#990000
}
.style2 {font-family: Arial, Helvetica, sans-serif;
font-size:10px;
	font-weight: bold;
}
-->
</style>


</head>

<body>
<jsp:useBean id="data" class="pack.SearchBean"/>
<jsp:setProperty name="data" property="out" value="<%=out%>"/>
<jsp:setProperty name="data" property="*"/> 

<%
out.println("ddd");
out.print(request.getParameter("category"));
out.print(request.getParameter("amount"));
String logo=request.getParameter("logo");

%>

<table width="200" border="0" cellpadding="0" cellspacing="0" >
  <tr>
    <td colspan="2"><img src="pic/head1.gif" width="986" height="146"></td>
  </tr>
  <tr>
    <td colspan="2"><jsp:include page="category.jsp"/></td>
  </tr>
  <tr>
    <td colspan="4"  height="2" bgcolor="ff6600"></td>
  </tr>
  <tr>
    <td colspan="2"><jsp:include page="hindex.html"/></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td width="177" rowspan="6"><jsp:include page="sideindex.html"/></td>
    <td height="10"><div align="right"><a href="index.jsp?home=home1">Back...</a>&nbsp; &nbsp; &nbsp; &nbsp; </div></td>
  </tr>
  <tr>
    <td height="10"><span class="style1">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Result Of Search </span></td>
  </tr>
  <tr>
    <td height="1" colspan="4" bgcolor="#FF0000"></td>
  </tr>
  <tr>
    <td width="809" height="10"> </td>
  </tr>
  <tr>
    <td height="18" align="center" valign="top" ><%if(logo==null){data.selectcat();}else{ data.order();}%></td>
  </tr>
  <tr>
    <td height="18" align="center">&nbsp;</td>
  </tr>
</table>

</body>
</html>
