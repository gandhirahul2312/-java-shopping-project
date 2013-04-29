package pack;
import java.sql.*;
import java.util.*;


public class Select
{
private String table,type,name1,name2,name3,name4,name5,name6,name7,name8,name9,name10,name11,name12,location1,location2,location3,location4,location5,location6,location7,location8,location9,location10,location11,location12,code1,code2,code3,code4,code5,code6,code7,code8,code9,code10,code11,code12;


public String getTable()
{
return table;
}
public void setTable(String table)
{
this.table=table;
System.out.println(table);
}

public String getType()
{
return type;
}
public void setType(String type)
{
this.type=type;
}

public String getName1()
{
return name1;
}
public void setName1(String name1)
{
this.name1=name1;
}

public String getName2()
{
return name2;
}
public void setName2(String name2)
{
this.name2=name2;
}

public String getName3()
{
return name3;
}
public void setName3(String name3)
{
this.name3=name3;
}

public String getName4()
{
return name4;
}
public void setName4(String name4)
{
this.name4=name4;
}

public String getName5()
{
return name5;
}
public void setName5(String name5)
{
this.name5=name5;
}


public String getName6()
{
return name6;
}
public void setName6(String name6)
{
this.name6=name6;
}
public String getName7()
{
return name7;
}
public void setName7(String name7)
{
this.name7=name7;
}
public String getName8()
{
return name8;
}
public void setName8(String name8)
{
this.name8=name8;
}
public String getName9()
{
return name9;
}
public void setName9(String name9)
{
this.name9=name9;
}
public String getName10()
{
return name10;
}
public void setName10(String name10)
{
this.name10=name10;
}
public String getName11()
{
return name11;
}
public void setName11(String name11)
{
this.name11=name11;
}
public String getName12()
{
return name12;
}
public void setName12(String name12)
{
this.name12=name12;
}


public String getLocation1()
{
return location1;
}
public void setLocation1(String location1)
{
this.location1=location1;
}

public String getLocation2()
{
return location2;
}
public void setLocation2(String location2)
{
this.location2=location2;
}
public String getLocation3()
{
return location3;
}
public void setLocation3(String location3)
{
this.location3=location3;
}
public String getLocation4()
{
return location4;
}
public void setLocation4(String location4)
{
this.location4=location4;
}
public String getLocation5()
{
return location5;
}
public void setLocation5(String location5)
{
this.location5=location5;
}
public String getLocation6()
{
return location6;
}
public void setLocation6(String location6)
{
this.location6=location6;
}
public String getLocation7()
{
return location7;
}
public void setLocation7(String location7)
{
this.location7=location7;
}
public String getLocation8()
{
return location8;
}
public void setLocation8(String location8)
{
this.location8=location8;
}
public String getLocation9()
{
return location9;
}
public void setLocation9(String location9)
{
this.location9=location9;
}
public String getLocation10()
{
return location10;
}
public void setLocation10(String location10)
{
this.location10=location10;
}
public String getLocation11()
{
return location11;
}
public void setLocation11(String location11)
{
this.location11=location11;
}
public String getLocation12()
{
return location12;
}
public void setLocation12(String location12)
{
this.location12=location12;
}

public String getCode1()
{
return code1;
}
public void setCode1(String code1)
{
this.code1=code1;
}
public String getCode2()
{
return code2;
}
public void setCode2(String code2)
{
this.code2=code2;
}
public String getCode3()
{
return code3;
}
public void setCode3(String code3)
{
this.code3=code3;
}
public String getCode4()
{
return code4;
}
public void setCode4(String code4)
{
this.code4=code4;
}
public String getCode5()
{
return code5;
}
public void setCode5(String code5)
{
this.code5=code5;
}
public String getCode6()
{
return code6;
}
public void setCode6(String code6)
{
this.code6=code6;
}
public String getCode7()
{
return code7;
}
public void setCode7(String code7)
{
this.code7=code7;
}
public String getCode8()
{
return code8;
}
public void setCode8(String code8)
{
this.code8=code8;
}
public String getCode9()
{
return code9;
}
public void setCode9(String code9)
{
this.code9=code9;
}
public String getCode10()
{
return code10;
}
public void setCode10(String code10)
{
this.code10=code10;
}
public String getCode11()
{
return code11;
}
public void setCode11(String code11)
{
this.code11=code11;
}
public String getCode12()
{
return code12;
}
public void setCode12(String code12)
{
this.code12=code12;
}




		public boolean picture()
		{
		try
		{
		int i=0;
		Connection con=(Connection)pack.Connect.getCon();
		Statement s=con.createStatement();
		ResultSet rs=s.executeQuery("select * from "+table+" where type='"+type+"'");
		
		while(rs.next())
		{
		if(rs.getRow()==1)
		{name1=rs.getString(2);location1=rs.getString(3);code1=rs.getString(4);}
		else
		if(rs.getRow()==2)
		{name2=rs.getString(2);location2=rs.getString(3);code2=rs.getString(4);}
		else
		if(rs.getRow()==3)
		{name3=rs.getString(2);location3=rs.getString(3);code3=rs.getString(4);}
		else
		if(rs.getRow()==4)
		{name4=rs.getString(2);location4=rs.getString(3);code4=rs.getString(4);}
		else
		if(rs.getRow()==5)
		{name5=rs.getString(2);location5=rs.getString(3);code5=rs.getString(4);}
		
		else
		if(rs.getRow()==6)
		{name6=rs.getString(2);location6=rs.getString(3);code6=rs.getString(4);}
		
		else
		if(rs.getRow()==7)
		{name7=rs.getString(2);location7=rs.getString(3);code7=rs.getString(4);}
		
		else
		if(rs.getRow()==8)
		{name8=rs.getString(2);location8=rs.getString(3);code8=rs.getString(4);}
		
		else
		if(rs.getRow()==9)
		{name9=rs.getString(2);location9=rs.getString(3);code9=rs.getString(4);}
		
		else
		if(rs.getRow()==10)
		{name10=rs.getString(2);location10=rs.getString(3);code10=rs.getString(4);;}
		
		else
		if(rs.getRow()==11)
		{name11=rs.getString(2);location11=rs.getString(3);code11=rs.getString(4);}
		
		else
		if(rs.getRow()==12)
		{name12=rs.getString(2);
		location12=rs.getString(3);code12=rs.getString(4);
		if(name12==null)
		{
		name12=" ";
		location12=" ";
		code12=" ";
		}
		}
		}
		

		return true;
		}
		catch(Exception e)
		{System.out.println(e);}
		return false;

		}



}