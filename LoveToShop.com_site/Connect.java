package pack;
import java.sql.*;

public class Connect
{
static Connection con;
public static Connection getCon()
{
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 con=DriverManager.getConnection("jdbc:odbc:buy");
	
return con;	
}catch(Exception e){}
return con;
}
}