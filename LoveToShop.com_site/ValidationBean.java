package pack;
import java.sql.*;
public class ValidationBean
{
private String name,password,id;


public void setName(String name)
{
this.name=name;
System.out.println("....................."+name);
}
public String getName()
{
return name;
}


public String getPassword()
{
return password;
}
public void setPassword(String password)
{
this.password=password;
}


public String getId()
{
return id;
}


	public boolean validation()
	{
	try
	{
	Connection con=(Connection)pack.Connect.getCon();
	Statement stm=con.createStatement();
	ResultSet rs=stm.executeQuery("select * from register");
	
	while(rs.next())
	{
	if((rs.getString(2).equals(name)) && (rs.getString(3).equals(password)))
	{
	id=rs.getString(5);
	System.out.println(id);
	return true;
	}
	}
con.close();
	}
	catch(Exception ee)
	{System.out.println(ee);}
	return false;	
	}

}

