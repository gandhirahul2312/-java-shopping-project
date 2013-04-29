


<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<style type="text/css">
<!--
.style2 {color: #666666}
.style1 {
	font-size: 14px;
	font-weight: bold;
		color:#990000
}
-->
</style>

</head>

<body>
<jsp:useBean id="data" class="pack.BuyBean"/>
<jsp:setProperty name="data" property="out" value="<%=out%>"/>
<jsp:setProperty name="data" property="*"/> 
<%
String table=request.getParameter("table");
out.println(table);
//String temptable=(String)session.getAttribute("temptable");
//data.setTemptable(temptable);
String location=request.getParameter("location");
String temptable=(String)session.getAttribute("temptable1");
data.setTemptable(temptable);
String code=request.getParameter("code");
out.print(request.getParameter("title"));
if((request.getParameter("title"))==null)
{
//data.create();
data.buy();

data.insert();
}
else if((request.getParameter("title")).equals("delete"))
{
String deletecode=request.getParameter("deletecode");
data.setDeletecode(deletecode);
data.delete();
}
%>

<table width="893" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3"><img src="pic/head1.gif" width="986" height="146"></td>
  </tr>
  <tr>
    <td colspan="3"><jsp:include page="category.jsp"/></td>
  </tr>
  <tr>
     <td height="2" colspan="8" bgcolor="ff6600"></td>
  </tr>
  <tr>
    <td colspan="3"><jsp:include page="hindex.html"/></td>
  </tr>
  <tr>
    <td colspan="3">
	
	<MARQUEE onmouseover=this.stop() 
                                onmouseout=this.start() scrollDelay=100>
	<span class="style2"> Call us to place your orders : 
                                +91 - 11 -23536722.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                Timings: Monday to Saturday 10:00 am to 05:30 pm 
                                (Except Holidays). 
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please 
                                confirm the Delivery Time for your 
                                orders.</span>
	</MARQUEE></td>
  </tr>
  <tr>
    <td width="164" rowspan="6"><jsp:include page="sideindex.html"/></td>
    <td width="35" rowspan="6">
	  <img src="pic/product_header.jpg" width="29" height="193"> <p>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	 </p>  <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<p>
	 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	  <br>
	 </p>  </td>
    <td width="787" height="12"></td>
  </tr>
  <tr>
    <td height="21"><div class="style1">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Your shopping Cart </div></td>
  </tr>
  <tr>
    <td height="1" colspan="4" bgcolor="#FF0000"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr><meta http-equiv="refresh">
    <td height="178" align="center"><% data.show();%></td>
  </tr>
  <tr>
    <td height="42" align="center"><div align="center">
      <form name="form1" method="post" action="aa.jsp">
<input name="buy" title="buy" type="submit" id="buy" value="     Buy     "  >     
&nbsp; &nbsp; &nbsp; &nbsp;
		  <input name="continue" title="con" type="submit" id="continue" value=" Continue ">
      </form>
    </div></td>
  </tr>
  <tr>
    <td height="19" colspan="3">&nbsp;</td>
  </tr>
</table>
</body>
</html>
