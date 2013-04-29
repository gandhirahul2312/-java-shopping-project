package pack;
import java.sql.*;

public class DiscriptionBean
{

private String location,table,code,moq,name,size,feature,price;

public String getTable()
{
return table;
}
public void setTable(String table)
{
this.table=table;
System.out.println(table);
}

public String getMoq()
{
return moq;
}
public void setMoq(String moq)
{
this.moq=moq;
}

public String getPrice()
{
return price;
}
public void setPrice(String price)
{
this.price=price;
}

public String getFeature()
{
return feature;
}
public void setFeature(String feature)
{
this.feature=feature;
}

public String getSize()
{
return size;
}
public void setSize(String size)
{
this.size=size;
}

public String getName()
{
return name;
}
public void setName(String name)
{
this.name=name;
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



		
		public boolean detail()
		{
		try
		{
	
		Connection con=(Connection)pack.Connect.getCon();
		Statement s=con.createStatement();
		ResultSet rs=s.executeQuery("select * from "+table+" where 				Code='"+code+"'");
		while(rs.next())
		{
		moq=rs.getString(8);
		name=rs.getString(2);
		size=rs.getString(6);
		feature=rs.getString(7);
		int price1=rs.getInt(5);
		price=price1+"";
		
		}
		}
		catch(Exception e){}
		return false;
		
		}



}		