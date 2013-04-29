package pack;
import java.sql.*;
import javax.servlet.jsp.*;

public class CartBean
{

private String temptable;
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


			public boolean cart()
			{
			try
			{
			Connection con=(Connection)pack.Connect.getCon();
		Statement ss=con.createStatement();
                              
		ResultSet rs1=ss.executeQuery("select * from "+temptable);
				out.print("<table width='485' border='1' cellpadding='0' cellspacing='0' bordercolor='#999999'><tr><td><div align='center'>Product</div></td><td><div align='center'>Name</div></td><td><div align='center'>Order Quantity </div></td><td><div align='center'>Code</div></td><td><div align='center'>Price</div></td></tr>");
			
			while(rs1.next())
			{
			String name1=rs1.getString(1);
			String quantity1=rs1.getString(2);
			String code1=rs1.getString(3);
			String price1=rs1.getString(4);
			String location1=rs1.getString(5);
			String table1=rs1.getString(6);
			out.print("<tr><td width='135'><div align='center'><img src='smallphoto/"+location1+".jpg' width='115' height='110'></div></td><td width='97'><div align='center'>"+name1+"</div></td><td width='93'><div align='center'>"+quantity1+"</div></td><td width='62'><div align='center'>"+code1+"</div></td><td width='64'><div align='center'>"+price1+"</div></td></tr>");
			}
			out.println("</table>");
			return true;
			}
			catch(Exception e){}return false;
			}

}








