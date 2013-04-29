

<html>

<body>
<jsp:useBean id="data" class="pack.RegistrationBean"/>
<jsp:setProperty name="data" property="*"/> 
<%
String email1=request.getParameter("email");
out.println(email1);
String fname1=request.getParameter("fname");
String lname1=request.getParameter("lname");
String add1=request.getParameter("address");
String state1=request.getParameter("state");
String country1=request.getParameter("country");
String age1=request.getParameter("age");
String mobile1=request.getParameter("mobile");
out.println(mobile1);
String attention1="This Is is Allready Exists";
%><p>
</p>
<table width="515" align="center"    border="1" cellspacing="2" cellpadding="2">
  <tr>
  <%

if(data.Registration())
{
%>
  <td width="503"  align="center" >Sorry For The Intruption But This Profile Id Is Allready Exist.So Please Select Any One Option In Below Given Option</td>
  </tr>
   <tr>
 	<td align="center"><a href="register.jsp?email=<%=email1%>&fname=<%=fname1%>&lname=<%=lname1%>&address=<%=add1%>&state=<%=state1%>&country=<%=country1%>&age=<%=age1%>&mobile=<%=mobile1%>&attention=<%=attention1%>">Prevoius Page</a></td>
  </tr><tr>
 	<td align="center"><a href="index.jsp?home=home1">Home Page</a></td>
   </tr>
 
<% }
else
{
%>
     <td  align="center" >You are secessfully registered. So Please Select Any One Option In Given Below For Continue Surfing On Site </td>
  </tr>
  <tr>
 	<td align="center"><a href="login.jsp?title=login&value=ss">Login Page</a></td>
  </tr><tr>
	<td align="center"><a href="index.jsp?home=home1">Home Page</a></td>
   
</tr>
   <%
 }
   %>
</table>
</body>
</html>
