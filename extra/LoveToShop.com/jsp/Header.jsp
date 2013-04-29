<%
  String base = (String) application.getAttribute("base");
  String imageUrl = (String) application.getAttribute("imageUrl");
%> 
<table width="740"
  height="86" border="0" cellpadding="0" cellspacing="0" bgcolor="#6666CC">
  <tr valign="middle" bgcolor="#3300FF"> 
    <td width="505" align="left" valign="middle"> <p><font color="#FFFFFF" size="7" face="Verdana">E-Mart</font></p>
      </td>
    <td width="235" rowspan="2" align="RIGHT"> <a href="<%=base%>?action=displayShoppingCart"><img 
      border="0" src="<%=(imageUrl + "cart.gif")%>"></a> &nbsp;&nbsp;&nbsp; </td>
  </tr>
  <tr valign="middle" bgcolor="#3300FF"> 
    <td height="19" align="left"><font color="#CCCC66"><strong>Online Shoping 
      Solution</strong></font></td>
  </tr>
</table>
