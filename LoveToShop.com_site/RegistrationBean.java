package pack;
import java.sql.*;
import java.util.*;

public class RegistrationBean
{
private String email,userid,password,cpassword,fname,lname,address,age,state,country,agree,mobile,email1;


public String getUserid()
{
return userid;
}
public void setUserid(String userid)
{
this.userid=userid;

}

public String getFname()
{
return fname;
}
public void setFname(String fname)
{
this.fname=fname;
}

public String getLname()
{
return lname;
}
public void setLname(String lname)
{
this.lname=lname;
}

public String getPassword()
{
return password;
}
public void setPassword(String password)
{
this.password=password;
}

public String getCpassword()
{
return cpassword;
}
public void setCpassword(String cpassword)
{
this.cpassword=cpassword;
}

public String getEmail()
{
return email;
}
public void setEmail(String email)
{

this.email=email;
}


public String getEmail1()
{
return email1;
}
public void setEmail1(String email1)
{

this.email1=email1;
}

public String getState()
{
return state;
}
public void setState(String state)
{
this.state=state;
}

public String getCountry()
{
return country;
}
public void setCountry(String country)
{
this.country=country;
}

public String getAgree()
{
return agree;
}
public void setAgree(String agree)
{
this.agree=agree;
}

public String getAddress()
{
return address;
}
public void setAddress(String address)
{
this.address=address;
}

public void setMobile(String mobile)
{
this.mobile=mobile;
}
public String getMobile()
{
return mobile;
}

public void setAge(String age)
{
this.age=age;
}
public String getAge()
{
return age;
}


	public boolean Registration()
	{
	try
	{
	int i=0;
	Connection con=(Connection)pack.Connect.getCon();
	Statement s=con.createStatement();
	ResultSet rs=s.executeQuery("select * from register");
	while(rs.next())
	{
	String user1=rs.getString(2);
	
	if(user1.equals(userid))
	i=i+1;
	System.out.println(i);
	}

	if(i==0)
	{
System.out.println(i);
	PreparedStatement stmt=con.prepareStatement("insert into register(email,userid,password,cpassword,fname,lname,address,age,state,country,agree,mobile) values(?,?,?,?,?,?,?,?,?,?,?,?)");
	stmt.setString(1,email);
	stmt.setString(2,userid);
	stmt.setString(3,password);
	stmt.setString(4,cpassword);
	stmt.setString(5,fname);
	stmt.setString(6,lname);
	stmt.setString(7,address);
	stmt.setString(8,age);
	stmt.setString(9,state);
	stmt.setString(10,country);
	stmt.setString(11,agree);
	stmt.setString(12,mobile);
	stmt.executeUpdate();
	con.commit();
	return false;
	}
	else
	{
	return true;
	}
	}
	catch(Exception ee){System.out.println(ee);}
	return true;
	}
	
	
	public String forget()
	{
	String show="no";
	int i=0;
	try
	{
	Connection con=(Connection)pack.Connect.getCon();
	Statement s=con.createStatement();
	ResultSet rs=s.executeQuery("select * from register");
	while(rs.next())
	{
	String email11=rs.getString(1);
	
	if(email11.equals(email1))
	i=i+1;
	System.out.println(i);
	}
	if(i==0)
	{
	return show;
	}
	else
	{
	Statement s1=con.createStatement();	
	ResultSet rs1=s1.executeQuery("select * from register where email='"+email1+"'");
	while(rs1.next())
	{
	
	show=rs1.getString(3);
	System.out.println(show);
	return show;
	}
	}
	
	}
	catch(Exception ee){System.out.println(ee);}
	return show;
	}
	
}



