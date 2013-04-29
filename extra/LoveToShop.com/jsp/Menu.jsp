<%@ page import="java.util.*" %>
<jsp:useBean id="dbBean" scope="application" class="ducat.emart.DbBean"/>
<%
  String base = (String) application.getAttribute("base");
%>
<TABLE CELLSPACING="0" CELLPADDING="5" WIDTH="150" BORDER="0">
  <TR> 
    <TD BGCOLOR="#CCCCCC"> <strong><FONT color="#330000" FACE="Verdana">Search 
      Items </FONT></strong> 
      <FORM>
        <strong><font color="#330000"> 
        <INPUT TYPE="HIDDEN" NAME="action" VALUE="search">
        <INPUT TYPE="TEXT" NAME="keyword" SIZE="10">
        <INPUT type="SUBMIT" VALUE="Go">
        </font></strong></FORM></TD>
  </TR>
  <TR> 
    <TD BGCOLOR="#CCCCCC"><strong><FONT color="#330000" FACE="Verdana">Categories:</FONT></strong></TD>
  </TR>
  <TR VALIGN="TOP"> 
    <TD BGCOLOR="#CCCCCC"> <strong><font color="#330000"> 
      <%
  Hashtable categories = dbBean.getCategories();
  Enumeration categoryIds = categories.keys();
  while (categoryIds.hasMoreElements()) {
    Object categoryId = categoryIds.nextElement();
    out.println("<A HREF=" + base + "?action=browseCatalog&categoryId=" +
      categoryId.toString() + ">" +
      categories.get(categoryId) +
      "</A><BR>");
  }
%>
      </font></strong></TD>
  </TR>
</TABLE>
