package pack;
import java.sql.*;
import javax.servlet.jsp.*;

public class BuyBean
{

private String location,table,code,moq,name,price,deletecode,quantity,temptable;
JspWriter out;



public JspWriter getOut()
{
return out;
}
public void setOut(JspWriter out)
{
this.out=out;
}


public String getQuantity()
{
return quantity;
}
public void setQuantity(String quantity)
{
this.quantity=quantity;
}


public String getTemptable()
{
return temptable;
}
public void setTemptable(String temptable)
{
this.temptable=temptable;
}


public String getTable()
{
return table;
}
public void setTable(String table)
{
this.table=table;
}

public String getLocation()
{
return location;
}
public void setLocation(String location)
{
this.location=location;
}

public String getCode()
{
return code;
}
public void setCode(String code)
{
this.code=code;
}

	
public String getDeletecode()
{
return deletecode;
}
public void setDeletecode(String deletecode)
{
this.deletecode=deletecode;
}

		
				
		public boolean buy()
		{
		try
		{
		int i=0;
		Connection con=(Connection)pack.Connect.getCon();
		Statement s=con.createStatement();
		ResultSet rs=s.executeQuery("select * from "+table+" where Code='"+code+"'");
		
		while(rs.next())
		{
		moq=rs.getString(8);
		name=rs.getString(2);
		int price1=rs.getInt(5);
		price=price1+"";
		
		}
		
		return true;
		}catch(Exception ee){System.out.println(ee);}
		return false;
		}

		public boolean create()
		{
		try
		{
		Connection con=(Connection)pack.Connect.getCon();
		Statement s2=con.createStatement();
		s2.executeUpdate("CREATE TABLE "+temptable+"(name varchar(20),quantity varchar(10),code varchar(20),price varchar(20),location varchar(20),tables varchar(20))");
		return true;
		}catch(Exception e4){}return false;
		}
		
		public boolean insert()
		{
		try
		{
		Connection con=(Connection)pack.Connect.getCon();
		
		PreparedStatement stmt=con.prepareStatement("insert into "+temptable+"(name,quantity,code,price,location,tables) values(?,?,?,?,?,?)" );

		stmt.setString(1,name);
		stmt.setString(2,quantity);
		stmt.setString(3,code);
		stmt.setString(4,price);
		stmt.setString(5,location);
		stmt.setString(6,table);
		stmt.executeUpdate();
		con.commit();
		stmt.close();
		con.close();
		return true;
		}catch(Exception e4){System.out.println(e4);}return false;
		}



		public boolean show()
		{
		try
			{
			Connection con=(Connection)pack.Connect.getCon();
		Statement ss=con.createStatement();
                              
		ResultSet rs1=ss.executeQuery("select * from "+temptable);
				out.print("<table width='485' border='1' cellpadding='0' cellspacing='0' bordercolor='#999999'><tr><td><div align='center'>Product</div></td><td><div align='center'>Name</div></td><td><div align='center'>Order Quantity </div></td><td><div align='center'>Code</div></td><td><div align='center'>Price</div></td><td><div align='center'>Delete</div></td></tr>");
			
			while(rs1.next())
			{
			String name1=rs1.getString(1);
			String quantity1=rs1.getString(2);
			String code1=rs1.getString(3);
			String price1=rs1.getString(4);
			String location1=rs1.getString(5);
			String table1=rs1.getString(6);
			int row=rs1.getRow();
			String row1=row+"";
		System.out.println(name1+quantity1+code1+price1+location1+table1+row1);
			out.print("<tr><td width='135' height='85'><div align='center'><img src='smallphoto/"+location1+".jpg' width='115' height='110'></div></td><td width='100'><div align='center'>"+name1+"</div></td><td width='48'><div align='center'>"+quantity1+"</div></td><td width='61'><div align='center'>"+price1+" Rs.</div></td><td width='65'><div align='center'>"+code1+"</div></td><td width='109' align='center'><form name='form1' method='post' action='buy.jsp?title=delete&deletecode="+row1+"'><input type='submit' name='delete' value='Delete'></form></td></tr>");
			}
			out.println("</table>");
			return true;
			}
			catch(Exception e){}return false;

		}


		public boolean delete()
		{
		try
		{
		System.out.println("delete");
		Connection con=(Connection)pack.Connect.getCon();
		Statement ss=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                                      ResultSet.CONCUR_UPDATABLE);

		int del=Integer.parseInt(deletecode);
		ResultSet rs=ss.executeQuery("select * from "+temptable);
		rs.absolute(del);
		rs.deleteRow();
		return true;	
		}
		catch(Exception e2){System.out.println(e2);}
		return false;
		}


}