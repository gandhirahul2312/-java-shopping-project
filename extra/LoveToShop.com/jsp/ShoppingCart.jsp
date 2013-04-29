<%@ page import="ducat.emart.Product" %>
<%@ page import="ducat.emart.ShoppingItem" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="dbBean" scope="application" class="ducat.emart.DbBean"/>
<%
  String base = (String) application.getAttribute("base");
  Hashtable shoppingCart = (Hashtable) session.getAttribute("shoppingCart");
  if (shoppingCart==null)
    shoppingCart = new Hashtable(10);

  String action = request.getParameter("action");
  if (action!=null && action.equals("addShoppingItem")) {
    try {
      int productId = Integer.parseInt(request.getParameter("productId"));
      Product product = dbBean.getProductDetails(productId);
      if (product!=null) {
        ShoppingItem item = new ShoppingItem();
        item.productId = productId;
        item.quantity = 1;
        item.price = product.price;
        item.name = product.name;
        item.description = product.description;

        shoppingCart.remove(Integer.toString(productId));
        shoppingCart.put(Integer.toString(productId), item);
        session.setAttribute("shoppingCart", shoppingCart);
      }
    }
    catch (Exception e) {
      out.println("Error adding the selected product to the shopping cart");
    }
  }

  if (action!=null && action.equals("updateShoppingItem")) {
    try {
      int productId = Integer.parseInt(request.getParameter("productId"));
      int quantity = Integer.parseInt(request.getParameter("quantity"));
      ShoppingItem item = (ShoppingItem) shoppingCart.get(Integer.toString(productId));
      if (item!=null) {
        item.quantity = quantity;
      }
    }
    catch (Exception e) {
      out.println("Error updating shopping cart");
    }
  }

  if (action!=null && action.equals("deleteShoppingItem")) {
    try {
      int productId = Integer.parseInt(request.getParameter("productId"));
      shoppingCart.remove(Integer.toString(productId));
    }
    catch (Exception e) {
      out.println("Error deleting the selected item from the shopping cart");
    }
  }

%>
<HTML>
<HEAD>
<TITLE>Shopping Cart</TITLE>
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
%>
      </font> <TABLE>
        <TR> 
          <TD><FONT color="#003300" SIZE="3" FACE="Verdana"><B>Name</B></FONT></TD>
          <TD><FONT color="#003300" SIZE="3" FACE="Verdana"><B>Description</B></FONT></TD>
          <TD><FONT color="#003300" SIZE="3" FACE="Verdana"><B>Price</B></FONT></TD>
          <TD><FONT color="#003300" SIZE="3" FACE="Verdana"><B>Quantity</B></FONT></TD>
          <TD><FONT color="#003300" SIZE="3" FACE="Verdana"><B>Subtotal</B></FONT></TD>
          <TD><FONT color="#003300" SIZE="3" FACE="Verdana"><B>Update</B></FONT></TD>
          <TD><FONT color="#003300" SIZE="3" FACE="Verdana"><B>Delete</B></FONT></TD>
        </TR>
        <%

    Enumeration enum1 = shoppingCart.elements();
    while (enum1.hasMoreElements()) {
      ShoppingItem item = (ShoppingItem) enum1.nextElement();
%>
        <TR> 
          <TD><FONT color="#000000" SIZE="2" FACE="Verdana"><%=item.name%></FONT></TD>
          <TD><FONT color="#000000" SIZE="2" FACE="Verdana"><%=item.description%></FONT></TD>
          <TD><FONT color="#000000" SIZE="2" FACE="Verdana"><%=item.price%></FONT></TD>
          <FORM>
            <font color="#000000"> 
            <INPUT TYPE="HIDDEN" NAME="action" VALUE="updateShoppingItem">
            <INPUT TYPE="HIDDEN" NAME="productId" VALUE="<%=item.productId%>">
            <font color="#66CCFF"> 
            <TD><font color="#000000"> 
              <INPUT TYPE="TEXT" Size="2" NAME="quantity" VALUE="<%=item.quantity%>">
              </font></TD>
            </font></font> 
            <TD><FONT color="#000000" SIZE="2" FACE="Verdana"><%=item.quantity*item.price%></FONT></TD>
            <TD><font color="#000000"> 
              <INPUT TYPE="SUBMIT" VALUE="Update">
              </font></TD>
          </FORM>
          <FORM>
            <font color="#000000"> 
            <INPUT TYPE="HIDDEN" NAME="action" VALUE="deleteShoppingItem">
            <INPUT TYPE="HIDDEN" NAME="productId" VALUE="<%=item.productId%>">
            <font color="#66CCFF"> 
            <TD><font color="#000000"> 
              <INPUT TYPE="SUBMIT" VALUE="Delete">
              </font></TD>
            </font></font> 
          </FORM>
        </TR>
        <%
    }
%>
        <TR> 
          <TD COLSPAN="7"><font color="#000000"><A HREF="<%=base%>?action=checkOut">Check 
            Out</A></font></TD>
        </TR>
      </TABLE></TD>
  </TR>
</TABLE>
</BODY>
</HTML>
