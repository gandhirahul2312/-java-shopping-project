<jsp:useBean id="data" class="pack.SearchBean"/>
<jsp:setProperty name="data" property="*"/>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.style3 {
	color: #CC3399;
	font-weight: bold;
}
.style4 {color: #660066}
-->
</style>
</head>

<body>
<table width="986" height="25" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="98" rowspan="2" valign="bottom" bgcolor="99cc33" style="font-size:9; ">&nbsp; &nbsp;<a href="index.jsp?home=home1"><img src="pic/link.gif" border="0" align="bottom"></a>&nbsp;<a href="index.jsp?home=home1">Home</a></td>
<form name="form1" action="search.jsp?logo=go" method="post">
<%
String amount=request.getParameter("amount");
String category=request.getParameter("category");
String name="";
%>


		<td width="251" rowspan="2" bgcolor="99cc33" valign="bottom" style="font-size:12px; "><strong> Amount</strong>   
		   <% name=data.getAmount();if(name==null){name="Select Amount";}%>
		  	 <select name="amount" style="width:200px; font-size:12px;">
           <option value="Select Amount">Select Amount </option>
          <option <%if(name.equals("Less Then 500")){out.println("selected");}%> value="Less Then 500">Less Then 500</option>
          <option <%if(name.equals("500 - 1000")){out.println("selected");}%> value="500 - 1000">500 - 1000</option>
          <option <%if(name.equals("1000 - 2000")){out.println("selected");}%> value="1000 - 2000">1000 - 2000</option>
          <option <%if(name.equals("More Then 2000")){out.println("selected");}%> value="More Then 2000">More Then 2000</option>
        </select></td>
    <td width="62" rowspan="2"  align="right" valign="bottom" bgcolor="#99cc33" style="font-size:12px ">
    <strong>Category&nbsp;</strong></td>
    <td width="242" rowspan="2" bgcolor="#99cc33" valign="bottom" ><strong>
	   <% name=data.getCategory();if(name==null){name="All Categories";}%>
      <select name="category" style="width:200px; font-size:12px;">
	   <option selected value="All Categories">All Categories </option>
		<option value="latest" <%if(name.equals("latest")){out.println("selected");}%>>Latest Gifts</option>
        <option value="cameranframe" <%if(name.equals("cameranframe")){out.println("selected");}%>>Camera &amp; Frame</option>
        <option value="Computer Accessories">Computer Accessories</option>
        <option value="Cell Phone">Cell Phone</option>
        <option value="Crafts">Crafts</option>
        <option value="Electronic">Electronic</option>
        <option value="Health / Fitness">Health / Fitness</option>
        <option value="Desk Gadgets">Desk Gadgets</option>
        <option value="Home Appliances">Home Appliances</option>
        <option value="Beauty / Personal Care">Beauty / Personal Care</option>
        <option value="Stationary">Stationary</option>
        <option value="Promotional Products">Promotional Products</option>
        <option value="Bags">Bags</option>
        <option value="Watches">Watches</option>
        <option value="Regional Artifacts">Regional Artifacts</option>
        <option value="Kitchen">Kitchen</option>
        <option value="Gifts Ideas">Gifts Ideas</option>
      </select></strong>


&nbsp;<input name="go" type="submit" value="Go"  style="background-color:#FFCC99; border-bottom-color:#FFCC99; border-left-color:#FFCC99; border-right-color:#FFCC99; border-top-color:#FFCC99;">
   
	</td>
 </form>

    <td width="136" rowspan="2" align="right" valign="bottom" bgcolor="#99cc33"  style="font-size:12px; ">Welcome&nbsp;:&nbsp;
	<font color="#990033">
	<% String user=(String)session.getAttribute("user");
	if(user==null)
	out.println("Unknown");
	else
	out.println(user);
		%></font>&nbsp; &nbsp; &nbsp;
	</td>
    <td width="27" height="9" align="right" valign="bottom" bgcolor="#99cc33"></td>
    <td width="98" rowspan="2" align="right" valign="bottom" bgcolor="#99cc33" style="font-size:12px; ">
<a href="mycart.jsp">	Shopping Cart</a> &nbsp;&nbsp;</td>
    <td width="72" rowspan="2" align="center" valign="bottom" bgcolor="#99cc33" style="font-size:12px; ">
	<%String got=(String)session.getAttribute("user");
	if(got==null)
	{
	%>Logout
	<%} else {%>
	<a href="logout.jsp?name=out">Logout</a>
	<%}%></td>
  </tr>
  <tr>
    <td width="27" height="16" align="right" valign="bottom" bgcolor="#99cc33"><img src="pic/walk1.gif" width="20" height="17" align="middle"></td>
  </tr>
 
</table>

</body>
</html>
