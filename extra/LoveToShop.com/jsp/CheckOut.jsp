<%
  String base = (String) application.getAttribute("base");
%>
<HTML>
<HEAD>
<TITLE>Check Out</TITLE>
</HEAD>
<BODY>
<TABLE>
<TR bgcolor="#66CCFF">
  <TD COLSPAN=2><jsp:include page="Header.jsp" flush="true"/></TD>
</TR>
<TR bgcolor="#66CCFF">
  <TD><jsp:include page="Menu.jsp" flush="true"/></TD>
  <TD VALIGN="TOP">
    <FORM>
    <INPUT TYPE="HIDDEN" NAME="action" VALUE="order">
        <TABLE>
          <TR bgcolor="#66CCFF"> 
            <TD COLSPAN="2"><I><B>Delivery Details</B></I></TD>
          </TR>
          <TR bgcolor="#66CCFF"> 
            <TD><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Contact 
              Name:</font></TD>
            <TD><INPUT TYPE="TEXT" NAME="contactName"></TD>
          </TR>
          <TR bgcolor="#66CCFF"> 
            <TD><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Delivery 
              Address:</font></TD>
            <TD><INPUT TYPE="TEXT" NAME="deliveryAddress"</TD>
          </TR>
          <TR bgcolor="#66CCFF"> 
            <TD COLSPAN="2"><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><I><B>Credit 
              Card Details</B></I></font></TD>
          </TR>
          <TR bgcolor="#66CCFF"> 
            <TD><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Name 
              on Credit Card:</font></TD>
            <TD><INPUT TYPE="TEXT" NAME="ccName"</TD>
          </TR>
          <TR bgcolor="#66CCFF"> 
            <TD><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Credit 
              Card Number:</font></TD>
            <TD><INPUT TYPE="TEXT" NAME="ccNumber"></TD>
          </TR>
          <TR bgcolor="#66CCFF"> 
            <TD><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Credit 
              Card Expiry Date:</font></TD>
            <TD><INPUT TYPE="TEXT" NAME="ccExpiryDate"</TD>
          </TR>
          <TR bgcolor="#66CCFF"> 
            <TD><font size="2" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;</font></TD>
            <TD><INPUT TYPE="SUBMIT" VALUE="Check Out"></TD>
          </TR>
        </TABLE>
    </FORM>
  </TD>
</TR>
</TABLE>
</BODY>
</HTML>
