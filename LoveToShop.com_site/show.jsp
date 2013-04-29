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

<%
String temptable=(String)session.getAttribute("temptable1");
//data.setTemptable(temptable);
%>

<jsp:useBean id="data" class="pack.OrderBean"/>
<jsp:setProperty name="data" property="out" value="<%=out%>"/>
<jsp:setProperty name="data" property="temptable" value="<%=temptable%>"/>
<jsp:setProperty name="data" property="*"/> 


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
    <td width="164" rowspan="7"><jsp:include page="sideindex.html"/></td>
    <td width="35" rowspan="7">
	  <img src="pic/product_header.jpg" width="29" height="193"> <p>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	 </p>  <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<p>
	 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	  <br>
	 </p>  </td>
    <td width="787" height="12"></td>
  </tr>
  <tr>
    <td height="21"><div class="style1">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Your Order </div></td>
  </tr>
  <tr>
    <td height="1" colspan="4" bgcolor="#FF0000"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="163" align="center"><% data.order();%></td>
	
  </tr>
  <tr>
    <td height="77" align="center"><div align="center">
      <form name="form1" method="post" action="logout.jsp">
<input name="order" title="order" type="submit" id="buy" value="Order Now"  >     
&nbsp; &nbsp; &nbsp; &nbsp;
		  <input name="cancel" title="cancel" type="submit" id="continue" value="Cancel">
      </form>
    </div></td>
  </tr>
  <tr>
    <td height="129"  align="center">&nbsp;</td>
  </tr>
  <tr>
    <td height="19" colspan="3">&nbsp;</td>
  </tr>
</table>
</body>

</html>
