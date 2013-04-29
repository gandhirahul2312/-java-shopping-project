<%@ page import="ducat.emart.Product" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="dbBean" scope="application" class="ducat.emart.DbBean"/>
<%
  String base = (String) application.getAttribute("base");
%>
  <HTML>
<HEAD>
<TITLE>Search Results</TITLE>
</HEAD>
<BODY>
<TABLE>
<TR>
  <TD COLSPAN=2><jsp:include page="Header.jsp" flush="true"/></TD>
</TR>
<TR>
  <TD><jsp:include page="Menu.jsp" flush="true"/></TD>
  <TD VALIGN="TOP">
<%
  String keyword = request.getParameter("keyword");
  if (keyword!=null && !keyword.trim().equals("")) {
%>
    
<TABLE>
  <TR bgcolor="#66CCFF"> 
    <TD><FONT color="#003300" SIZE="3" FACE="Verdana"><B>Name</B></FONT></TD>
    <TD><FONT color="#003300" SIZE="3" FACE="Verdana"><B>Description</B></FONT></TD>
    <TD><FONT color="#003300" SIZE="3" FACE="Verdana"><B>Price</B></FONT></TD>
    <TD><FONT color="#003300" SIZE="3" FACE="Verdana"><B>Details</B></FONT></TD>
  </TR>
  <%
    ArrayList products = dbBean.getSearchResults(keyword);
    Iterator iterator = products.iterator();
    while (iterator.hasNext()) {
      Product product = (Product) iterator.next();
%>
  <TR bgcolor="#66CCFF"> 
    <TD><FONT color="#000000" SIZE="2" FACE="Verdana"><%=product.name%></FONT></TD>
    <TD><FONT color="#000000" SIZE="2" FACE="Verdana"><%=product.description%></FONT></TD>
    <TD><FONT color="#000000" SIZE="2" FACE="Verdana"><%=product.price%></FONT></TD>
    <TD><A HREF="<%=base%>?action=productDetails&productId=<%=product.id%>"> <FONT color="#000000" SIZE="2" FACE="Verdana">Details</FONT></A></TD>
  </TR>
  <%
    }
  }
  else
    out.println("Please enter a search keyword.");


%></TD></TR>
</TABLE>
</BODY>
</HTML>
