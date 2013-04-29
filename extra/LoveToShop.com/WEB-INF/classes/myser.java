import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import ducat.emart.DbBean;

public class myser extends HttpServlet {

 
  public void init(ServletConfig config) throws ServletException 
  {
    System.out.println("initializing controller servlet.");
  }


 
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
  {
   System.out.println("servlet doget called.");
    RequestDispatcher requestDispatcher = request.getRequestDispatcher("/hello.jsp");
System.out.println(requestDispatcher);

    requestDispatcher.forward(request, response);

  }

  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
  {
	System.out.println("servlet dopost called.");
	RequestDispatcher requestDispatcher = request.getRequestDispatcher("/hello.jsp");
     	 requestDispatcher.forward(request, response);


  }
}