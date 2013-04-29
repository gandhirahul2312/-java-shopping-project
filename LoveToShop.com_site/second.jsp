<jsp:useBean id="data" class="pack.Select"/>
<jsp:setProperty name="data" property="*"/> 


<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.style1 {	font-family: Arial, Helvetica, sans-serif;
font-size:10px;
	font-weight: bold;
}
-->
</style>
</head>

<body>

<%
data.setTable(request.getParameter("name"));
data.setType(request.getParameter("type"));

data.picture();
System.out.println(data.getLocation1());

%>


<table width="621" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="156" height="174" align="center" ><table width="134" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="156" height="101"><a href="discription.jsp?title=<%=data.getLocation1()%>&table=<%=data.getTable()%>&type=<%=data.getType()%>&code=<%=data.getCode1()%>"><img src="smallphoto/<%=data.getLocation1() %>.jpg" width="130" height="129" border="1" style="border-color:#cccccc "></a></td>
        </tr>
        <tr>
          <td height="32" align="center"><span class="style1"><%=data.getName1() %><br>&nbsp;
          
            </span></td>
        </tr>
    </table></td>
    <td width="155" align="center">	  <%if(data.getLocation2()==null) {%> &nbsp;
	  <% } else {%>
	  <table width="134" border="0" cellpadding="0" cellspacing="0">
        <tr>
         <td width="156" height="101"><a href="discription.jsp?title=<%=data.getLocation2()%>&table=<%=data.getTable()%>&type=<%=data.getType()%>&code=<%=data.getCode2()%>"><img src="smallphoto/<%=data.getLocation2() %>.jpg" width="130" height="129" border="1" style="border-color:#cccccc "></a></td>
      </tr>
        <tr>
          <td height="32" align="center" class="style1"><%=data.getName2() %> <br>
&nbsp;</td>
        </tr>
    </table>
	  <%}%></td>
    <td width="153" align="center">	  <%if(data.getLocation3()==null) {%> &nbsp;
	  <% } else {%>
	  <table width="134" border="0" cellpadding="0" cellspacing="0">
        <tr>
         <td width="156" height="101"><a href="discription.jsp?title=<%=data.getLocation3()%>&table=<%=data.getTable()%>&type=<%=data.getType()%>&code=<%=data.getCode3()%>"><img src="smallphoto/<%=data.getLocation3() %>.jpg"  border="1" style="border-color:#cccccc "></a></td>
      </tr>
        <tr>
          <td height="32" align="center" class="style1"><%=data.getName3() %> <br>
&nbsp;</td>
        </tr>
    </table>
	  <%}%></td>
    <td width="157" align="center">	  <%if(data.getLocation4()==null) {%> &nbsp;
	  <% } else {%>
	  <table width="134" border="0" cellpadding="0" cellspacing="0">
        <tr>
         <td width="156" height="101"><a href="discription.jsp?title=<%=data.getLocation4()%>&table=<%=data.getTable()%>&type=<%=data.getType()%>&code=<%=data.getCode4()%>"><img src="smallphoto/<%=data.getLocation4() %>.jpg" width="130" height="129" border="1" style="border-color:#cccccc "></a></td>
      </tr>
        <tr>
          <td height="32" align="center" class="style1"><%=data.getName4() %> <br>
&nbsp;</td>
        </tr>
    </table>
	  <%}%></td>
  </tr>
  <tr>
    <td height="174" align="center">	  <%if(data.getLocation5()==null) {%> &nbsp;
	  <% } else {%>
	  <table width="134" border="0" cellpadding="0" cellspacing="0">
        <tr>
         <td width="156" height="101"><a href="discription.jsp?title=<%=data.getLocation5()%>&table=<%=data.getTable()%>&type=<%=data.getType()%>&code=<%=data.getCode5()%>"><img src="smallphoto/<%=data.getLocation5() %>.jpg" width="130" height="129" border="1" style="border-color:#cccccc "></a></td>
      </tr>
        <tr>
          <td height="32" align="center" class="style1"><%=data.getName5() %> <br>
&nbsp;</td>
        </tr>
    </table>
	  <%}%></td>
    <td align="center">	  <%if(data.getLocation6()==null) {%> &nbsp;
	  <% } else {%>
	  <table width="134" border="0" cellpadding="0" cellspacing="0">
        <tr>
         <td width="156" height="101"><a href="discription.jsp?title=<%=data.getLocation6()%>&table=<%=data.getTable()%>&type=<%=data.getType()%>&code=<%=data.getCode6()%>"><img src="smallphoto/<%=data.getLocation6() %>.jpg" width="130" height="129" border="1" style="border-color:#cccccc "></a></td>
      </tr>
        <tr>
          <td height="32" align="center" class="style1"><%=data.getName6() %> <br>
&nbsp;</td>
        </tr>
    </table>
	  <%}%></td>
    <td align="center">	  <%if(data.getLocation7()==null) {%> &nbsp;
	  <% } else {%>
	  <table width="134" border="0" cellpadding="0" cellspacing="0">
        <tr>
         <td width="156" height="101"><a href="discription.jsp?title=<%=data.getLocation7()%>&table=<%=data.getTable()%>&type=<%=data.getType()%>&code=<%=data.getCode7()%>"><img src="smallphoto/<%=data.getLocation7() %>.jpg" width="130" height="129" border="1" style="border-color:#cccccc "></a></td>
      </tr>
        <tr>
          <td height="32" align="center" class="style1"><%=data.getName7() %> <br>
&nbsp;</td>
        </tr>
    </table>
	  <%}%></td>
    <td align="center">	  <%if(data.getLocation8()==null) {%> &nbsp;
	  <% } else {%>
	  <table width="134" border="0" cellpadding="0" cellspacing="0">
        <tr>
         <td width="156" height="101"><a href="discription.jsp?title=<%=data.getLocation8()%>&table=<%=data.getTable()%>&type=<%=data.getType()%>&code=<%=data.getCode8()%>"><img src="smallphoto/<%=data.getLocation8() %>.jpg" width="130" height="129" border="1" style="border-color:#cccccc "></a></td>
      </tr>
        <tr>
          <td height="32" align="center" class="style1"><%=data.getName8() %> <br>
&nbsp;</td>
        </tr>
    </table>
	  <%}%></td>
  </tr>
  <tr>
    <td height="158" align="center">
	<%if(data.getLocation9()==null) {%> &nbsp;
	  <% } else {%>
	  <table width="134" border="0" cellpadding="0" cellspacing="0">
        <tr>
         <td width="156" height="101"><a href="discription.jsp?title=<%=data.getLocation9()%>&table=<%=data.getTable()%>&type=<%=data.getType()%>&code=<%=data.getCode9()%>"><img src="smallphoto/<%=data.getLocation9() %>.jpg" width="130" height="129" border="1" style="border-color:#cccccc "></a></td>
      </tr>
        <tr>
          <td height="32" align="center" class="style1"><%=data.getName9() %> <br>
&nbsp;</td>
        </tr>
    </table>
	  <%}%></td>
    <td align="center">	  <%if(data.getLocation10()==null) {%> &nbsp;
	  <% } else {%>
	  <table width="134" border="0" cellpadding="0" cellspacing="0">
        <tr>
         <td width="156" height="101"><a href="discription.jsp?title=<%=data.getLocation10()%>&table=<%=data.getTable()%>&type=<%=data.getType()%>&code=<%=data.getCode10()%>"><img src="smallphoto/<%=data.getLocation10() %>.jpg" width="130" height="129" border="1" style="border-color:#cccccc "></a></td>
      </tr>
        <tr>
          <td height="32" align="center" class="style1"><%=data.getName10() %> <br>
&nbsp;</td>
        </tr>
    </table>
	  <%}%></td>
    <td align="center">	  <%if(data.getLocation11()==null) {%> &nbsp;
	  <% } else {%>
	  <table width="134" border="0" cellpadding="0" cellspacing="0">
        <tr>
         <td width="156" height="101"><a href="discription.jsp?title=<%=data.getLocation11()%>&table=<%=data.getTable()%>&type=<%=data.getType()%>&code=<%=data.getCode11()%>"><img src="smallphoto/<%=data.getLocation11() %>.jpg" width="130" height="129" border="1" style="border-color:#cccccc "></a></td>
      </tr>
        <tr>
          <td height="32" align="center" class="style1"><%=data.getName11() %> <br>
&nbsp;</td>
        </tr>
    </table>
	  <%}%></td>
    <td align="center">
	  <%if(data.getLocation12()==null) {%> &nbsp;
	  <% } else {%>
	  <table width="134" border="0" cellpadding="0" cellspacing="0">
        <tr>
         <td width="156" height="101"><a href="discription.jsp?title=<%=data.getLocation12()%>&table=<%=data.getTable()%>&type=<%=data.getType()%>&code=<%=data.getCode12()%>"><img src="smallphoto/<%=data.getLocation12() %>.jpg" width="130" height="129" border="1" style="border-color:#cccccc "></a></td>
      </tr>
        <tr>
          <td height="32" align="center" class="style1"><%=data.getName12() %> <br>
&nbsp;</td>
        </tr>
    </table>
	  <%}%></td>
  </tr>
</table>
</body>
</html>
