<jsp:useBean id="data" class="pack.ValidationBean"/>
<jsp:setProperty name="data" property="*"/>

<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.style14 {color: #D7D7D7; font-weight: bold; }
.style16 {color: #80FFFF}
.style1 {	font-size: 12px;
	color: #990033;
}
.style2 {font-size: 12px}
.style21 {color: #000000}
.style23 {
font-size: 14px;
	font-weight: bold;
		color:#990000
	}
-->
</style>
</head>

<body>
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
    <td width="130" rowspan="10" background="beauty/index_07-081.jpg">&nbsp;</td>
    <td width="721"><div align="right"><SPAN class=header><SPAN 
                                class=linker> </SPAN></SPAN></div></td>
    <td width="135" rowspan="10" background="beauty/index_07-081.jpg">&nbsp;</td>
  </tr>

  <tr>
    <td height="29">&nbsp;&nbsp;&nbsp;&nbsp;
	<span class="style23">Login</span></td>
  </tr>
  <tr>
    <td><div align="center"> </div></td>
  </tr>
  <tr>
    <td><div align="center">
      <p><img src="pic/index1_11.jpg" width="730" height="4"></p>
      </div></td>
  </tr>
  <tr>
    <td height="32" align="center"><strong>Please provide the below required information. Please enter accurate data.
    All the fields are mandatory.</strong></td>
  </tr>
  <tr>
    <td height="225"><div align="center">
     
      <table width="313" border="0">
	  
 		 <FORM name="form1" action=login.jsp  onsubmit="javascript: return validate(this);" method=post>
		 
		 <SCRIPT language=javascript type=text/javascript>
<!--
var v1;
function isBlank(s) {
	for (i=0;i<s.length;i++) {
		if (s.charAt(i) !=" ") {
			return false;
		}
	}
	return true;
}

function validate(f) {

	if (isBlank(f.name.value)) {
		alert("Please enter Name !!");
		f.name.select();
		f.name.focus();
		return false;
	}
	
	
	if (isBlank(f.password.value)) {
		alert("Please enter Password!!");
		f.password.select();
		f.password.focus();
		return false;
	}
	}
	
	</script>
		 
        <tr>
          <td width="75" height="35"><div align="right">User Id </div></td>
          <td colspan="2"><input name="name" id="name" type="name" size="30"></td>
        </tr>
        <tr>
          <td height="36"><div align="right">Password</div></td>
          <td colspan="2"><input name="password" id="password" type="password" size="30"></td>
        </tr>
        <tr>
          <td height="38" valign="top"><p> <a href="ch"> <span class="style16"> </span></a></p></td>
          <td colspan="2"><span class="style14"><a href="ch"><span class="style16">
       
          <input name="login" title="login" type="submit" id="login" value="User Login" width="20">
           </span></a> </span></td>
        </tr>
        <tr>
          <td height="35" ><div align="center" >
              <div align="right"><a href="register.jsp" >New Use</a></div>
          </div></td>
          <td width="8" background="beauty/stline.GIF"><div align="left">&nbsp; &nbsp;&nbsp;</div></td>
          <td width="220"><div align="left"><a href="confirm.jsp?title=getpassword" >Forget Password?</a></div></td>
        </tr>
        <tr>
		</form>
          <td class="style21">&nbsp;</td>
          <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
          <td class="style21">&nbsp;</td>
          <td colspan="2">&nbsp;</td>
        </tr>
      </table>
     
    </div></td>
  </tr>
  <tr>
    <td height="31">
	<table width="350" align="center"    border="0" cellspacing="0" cellpadding="0">
  <tr align="center">
  <%
  String value=request.getParameter("value");
  if(value!=null)
  {
  session.setAttribute("value",value);
 }
 
  String value1=(String)session.getAttribute("value");
String get=request.getParameter("title");
System.out.print(get);
if(get==null)
{
if(data.validation())
{
String user=data.getId();
String name=data.getName();
session.setAttribute("name",name);
System.out.println(user+">>>>>>>>>>>>>>...");
session.setAttribute("user",user); 
if(value1.equals("buy"))
{
%><jsp:forward page="show.jsp"></jsp:forward>
<%
}else if(value1.equals("ss"))
{%>
 	<td align="center"><jsp:forward page="index.jsp?home=home1"></jsp:forward> </td>
   </tr>

   <%
   } }
   else
   {
   %>
    <td align="center">Please Enter The Right Password.....<br> Login Fail....?<br></td>
   <%}}
   %>
</table>
	</td>
  </tr>
  <tr>
    <td><div align="center"><img src="pic/index1_11.jpg" width="730" height="4"></div></td>
  </tr>
  <tr>
    <td height="19">&nbsp;</td>
  </tr>
</table>
<div align="center"><SPAN class=header></SPAN>
</div>
</body>
</html>
