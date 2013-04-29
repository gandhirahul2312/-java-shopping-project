package pack;
import java.sql.*;
import java.util.*;
import javax.servlet.jsp.*;

public class SearchBean
{
private String amount,category,table;
JspWriter out;


public JspWriter getOut()
{
return out;
}
public void setOut(JspWriter out)
{
this.out=out;
}

public String getTable()
{
return table;
}
public void setTable(String table)
{
this.table=table;
}

public String getAmount()
{
return amount;
}
public void setAmount(String amount)
{
this.amount=amount;
System.out.println(amount);
}


public String getCategory()
{
return category;
}
public void setCategory(String category)
{
this.category=category;
System.out.println(category);
}



			public boolean order()
			{
			
			try
			{
			ResultSet rs;
		Connection con=(Connection)pack.Connect.getCon();
		Statement s=con.createStatement();
			int i=0;
			if(category.equals("All Categories") && !amount.equals("Select Amount")){
			if(amount.equals("Less Then 500"))
			{
			rs=s.executeQuery("select * from latest where price<500 union select * from cameranframe where price<500 union select * from cellphone where price<500 union select * from crafts where price<500 union select * from electronic where price<500 union select * from healthnfitness where price<500 union select * from deskg where price<500 union select * from homeapplience where price<500 union select * from beautynpersonal where price<500 union select * from stationary where price<500 union select * from promotionalpro where price<500 union select * from bags where price<500 union select * from watches where price<500 union select * from regionalarti where price<500 union select * from kitchen where price<500 union select * from giftidea where price<500");}
			else if(amount.equals("500 - 1000"))
			{rs=s.executeQuery("select * from latest where price between 500 and 1000 union select * from cameranframe where price between 500 and 1000 union select * from cellphone where price between 500 and 1000 union select * from crafts where price between 500 and 1000 union select * from electronic where price between 500 and 1000 union select * from healthnfitness where price between 500 and 1000 union select * from deskg where price between 500 and 1000 union select * from homeapplience where price between 500 and 1000 union select * from beautynpersonal where price between 500 and 1000 union select * from stationary where price between 500 and 1000 union select * from promotionalpro where price between 500 and 1000 union select * from bags where price between 500 and 1000 union select * from watches where price between 500 and 1000 union select * from regionalarti where price between 500 and 1000 union select * from kitchen where price between 500 and 1000 union select * from giftidea where price between 500 and 1000");}
	
			else if(amount.equals("1000 - 2000"))
			{rs=s.executeQuery("select * from latest where price between 1000 and 2000 union select * from cameranframe where price between 1000 and 2000 union select * from cellphone where price between 1000 and 2000 union select * from crafts where price between 1000 and 2000 union select * from electronic where price between 1000 and 2000 union select * from healthnfitness where price between 1000 and 2000 union select * from deskg where price between 1000 and 2000 union select * from homeapplience where price between 1000 and 2000 union select * from beautynpersonal where price between 1000 and 2000 union select * from stationary where price between 1000 and 2000 union select * from promotionalpro where price between 1000 and 2000 union select * from bags where price between 1000 and 2000 union select * from watches where price between 1000 and 2000 union select * from regionalarti where price between 1000 and 2000 union select * from kitchen where price between 1000 and 2000 union select * from giftidea where price between 1000 and 2000");}

			
			else{rs=s.executeQuery("select * from latest where price>2000 union select * from cameranframe where price>2000 union select * from cellphone where price>2000 union select * from crafts where price>2000 union select * from electronic where price>2000 union select * from healthnfitness where price>2000 union select * from deskg where price>2000 union select * from homeapplience where price>2000 union select * from beautynpersonal where price>2000 union select * from stationary where price>2000 union select * from promotionalpro where price>2000 union select * from bags where price>2000 union select * from watches where price>2000 union select * from regionalarti where price>2000 union select * from kitchen where price>2000 union select * from giftidea where price>2000");}}
			
			else if(!category.equals("All Categories") && amount.equals("Select Amount"))
			{System.out.println("..aaa...."); rs=s.executeQuery("select * from "+category);}
			
			else{
			if(amount.equals("Less Then 500")){rs=s.executeQuery("select * from "+category+" where price<500");}
			
			else if(amount.equals("500 - 1000")){
			System.out.println("......");
			rs=s.executeQuery("select * from "+category+" where price between 500 and 1000");}
			else if(amount.equals("1000 - 2000")){rs=s.executeQuery("select * from "+category+" where price between 1000 and 2000");}	
			else {rs=s.executeQuery("select * from "+category+" where price>2000");}}
			
			out.print("<table  border='0' cellpadding='0' cellspacing='0'><tr>");
			
			while(rs.next())
			{i=i+1;
			 ResultSetMetaData rsmd = rs.getMetaData();
			String table1=rsmd.getTableName(5);
			String location=rs.getString(3);	
			String type=rs.getString(1);
			String name=rs.getString(2);
			String code=rs.getString(4);
			
		out.print("<td width='156' height='160' ><a href='discription.jsp?title="+location+"&table="+table1+"&type="+type+"&code="+code+"'><img src='smallphoto/"+location+".jpg' width='130' height='129' border='1' style='border-color:#cccccc '></a><br><font face='Arial, Helvetica, sans-serif' size='1' style='font-weight:bold;'>"+name+"</font></td>");
				if(i%5==0)
			{System.out.println(i);
			out.println("<br>");	
				
		out.print("<tr></tr>");
				}
			}out.print("</tr></table><blockquote></blockquote>");
					
			return true;
			}
			catch(Exception e){System.out.println(e);}return false;
			}




		
			public boolean selectcat()
			{
			int i=0;
			try
			{
			Connection con=(Connection)pack.Connect.getCon();
		Statement s=con.createStatement();
		ResultSet rs=s.executeQuery("select * from "+table);
			
			out.print("<table  border='0' cellpadding='0' cellspacing='0'><tr>");
			
			while(rs.next())
			{i=i+1;
			String location=rs.getString(3);	
			String type=rs.getString(1);
			String name=rs.getString(2);
			String code=rs.getString(4);
			
		out.print("<td width='156' height='160' ><a href='discription.jsp?title="+location+"&table="+table+"&type="+type+"&code="+code+"'><img src='smallphoto/"+location+".jpg' width='130' height='129' border='1' style='border-color:#cccccc '></a><br><font face='Arial, Helvetica, sans-serif' size='1' style='font-weight:bold;'>"+name+"</font></td>");
				if(i%5==0)
			{System.out.println(i);
			out.println("<br>");	
				
		out.print("<tr></tr>");
				}
			}out.print("</tr></table><blockquote></blockquote>");

			return true;
			}catch(Exception e){} return false;
			}



}