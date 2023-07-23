package com.dbhandler;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;

import com.product.*;
public class fetchdataServlet {
	
	public static String fetchpassword(String uname)
	{
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="system";
	String password="system";
	String sql="SELECT PASSWORD FROM CUSTOMERS WHERE UNAME=?";
	String dbpass="";
	
	try {
		Class.forName(driver);
		Connection con=DriverManager.getConnection(url,user,password);
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, uname);
		ResultSet rs=ps.executeQuery();
		rs.next();
		dbpass=rs.getString(1);
		
	}catch(Exception ex)
	{
		System.out.println("login issues are there");
		ex.printStackTrace();
	}
	return dbpass;
	

}
	
	public static List fetchUserInfo()
	{
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="system";
		String sql="SELECT UNAME,MAIL,GENDER,ADDRESS FROM CUSTOMERS";
		List ulist=new ArrayList();
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url,user,password);
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next())
			{
				String temp=rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4);
				ulist.add(temp);
			}
			
			
		}catch(Exception e)
		{
			System.out.println("problem in login"+e);
		}
		return ulist;
		
		
	}
	
	public static List fetchProductInfo() {
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="system";
		String sql="SELECT PID,PNAME,PDESC,PPRICE,PIMAGE FROM PRODUCT";
		List ilist=new ArrayList();
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url,user,password);
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next())
			{
				String temp=""+rs.getInt(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getInt(4)+":"+rs.getString(5);
				ilist.add(temp);
				
			}
			
		}catch(Exception e)
		{
			System.out.println("problem in login"+e);
		}
		return ilist;
		
	}
	
	
	public static Product getProductById(int pid) {
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="system";
		String sql="SELECT PNAME,PPRICE FROM PRODUCT WHERE PID=?";
		Product p=null;
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url,user,password);
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, pid);
			ResultSet rs=ps.executeQuery();
			rs.next();
			String pname=rs.getString(1);
			int pprice=rs.getInt(2);
			
			p=new Product(pid,pname,pprice);
			
			
		}catch(Exception e)
		{
			System.out.println("probelm in fetching products");
			e.printStackTrace();
		}
		finally {
			return p;
		}
	
	
	
	}
	
	
	
	
}
