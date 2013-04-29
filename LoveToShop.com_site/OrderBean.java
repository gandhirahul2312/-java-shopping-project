package pack;
import java.sql.*;
import java.util.*;
import javax.servlet.jsp.*;

public class OrderBean
{
private String name,location,code,price,user,temptable;
JspWriter out;


public JspWriter getOut()
{
return out;
}
public void setOut(JspWriter out)
{
this.out=out;
}

public String getTemptable()
{
return temptable;
}
public void setTemptable(String temptable)
{
this.temptable=temptable;
}

public String getUser()
{
return user;
}
public void setUser(String user)
{
this.user=user;
}



		public boolean order()
		{
		try{
		Connection con=(Connection)pack.Connect.getCon();
		Statement s=con.createStatement();
		ResultSet rs1=s.executeQuery("select * from "+temptable);
		System.out.println(temptable);
		out.println("<table width='490' border='1' cellpadding='0' cellspacing='0'><tr><font color='#999999' size='8'><td height='36' width='115' align='center'><div align='center'>Product</div></td><td width='75'>Name</td><td width='70' align='center'>Order Quantity</td><td width='66'>Price</td><td width='70' align='center'><div align='center'>Code</div></td></font></tr>");
		while(rs1.next())
		{
		String name1=rs1.getString(1);
		String quantity1=rs1.getString(2);
		String code1=rs1.getString(3);
		String price1=rs1.getString(4);
		String location1=rs1.getString(5);
		out.println("<tr><td width='115' height='85' align='right'><img src='smallphoto/"+location1+".jpg' width='115' height='110'></td><td width='75' align='center'>"+name1+"</td><td width='70' align='center'><div align='center'>"+quantity1+"</div></td><td width='66' align='center'><div align='center'>"+price1+"</div></td><td width='70' align='center'><div align='center'>"+code1+"</div></td></tr>");
		}	out.println("</table>");return true;		
		}catch(Exception e){System.out.println(e);}return false;
		}




		public boolean log()
		{
		try
		{
		Connection con=(Connection)pack.Connect.getCon();
		Statement s=con.createStatement();
		s.executeUpdate("CREATE TABLE "+user+"(name varchar(20),orderquan varchar(10),code varchar(20),price varchar(20))");
		ResultSet rs1=s.executeQuery("select * from "+temptable);
		PreparedStatement stmt=con.prepareStatement("insert into "+user+"(name,orderquan,code,price) values(?,?,?,?)" );
System.out.println("...............");
		
		while(rs1.next())
		{
		String name1=rs1.getString(1);
		String quantity1=rs1.getString(2);
		String code1=rs1.getString(3);
		String price1=rs1.getString(4);
					
		stmt.setString(1,name1);
		stmt.setString(2,quantity1);
		stmt.setString(3,code1);
		stmt.setString(4,price1);
		stmt.executeUpdate();
		con.commit();
		
		}
		s.executeUpdate("drop table "+temptable);
		return true;
		
		}catch(Exception e){System.out.println(e);}return false;
		}

}