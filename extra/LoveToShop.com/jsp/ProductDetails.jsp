<%@ page import="ducat.emart.Product" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="dbBean" scope="application" class="ducat.emart.DbBean"/>
<%
  String base = (String) application.getAttribute("base");
  String imageUrl = (String) application.getAttribute("imageUrl");
%>
<HTML>
<HEAD>
<TITLE>Product Details</TITLE>
</HEAD>
<BODY>
<TABLE>
  <TR bgcolor="#66CCFF"> 
    <TD COLSPAN=2><font color="#000000"> 
      <jsp:include page="Header.jsp" flush="true"/>
      </font></TD>
  </TR>
  <TR bgcolor="#66CCFF"> 
    <TD><font color="#000000"> 
      <jsp:include page="Menu.jsp" flush="true"/>
      </font></TD>
    <TD VALIGN="TOP"> <font color="#000000"> 
      <%
  try {
    int productId = Integer.parseInt(request.getParameter("productId"));
    Product product = dbBean.getProductDetails(productId);
    if (product!=null) {
%>
      </font> <TABLE>
        <TR> 
          <TD><font color="#000000"><IMG BORDER="0" WIDTH="100" SRC="<%=(imageUrl + product.id)%>.gif"></font></TD>
          <TD><font color="#000000"><B><%=product.name%></B><BR>
            <%=product.description%><BR>
            Price : $<%=product.price%></font></TD>
        </TR>
        <TR> 
          <TD COLSPAN="2" ALIGN="RIGHT"> <font color="#003300"><A HREF="<%=base%>?action=addShoppingItem&productId=<%=product.id%>"> 
            Add To Cart</A> </font></TD>
        </TR>
      </TABLE>
      <font color="#000000"> 
      <%
    }
  }
  catch (Exception e) {
    out.println("Error: Invalid product identifier.");
  }
%>
      </font></TD>
  </TR>
</TABLE>
</BODY>
</HTML>
