package com.dbhandler;
import java.sql.*;
import java.util.Properties;
public class DataInjector {
	
	@SuppressWarnings("finally")
	public static String addcustomer(String uname,String mail,String pass,String gender,String address)
	{
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="system";
		String sql="INSERT INTO CUSTOMERS VALUES(?,?,?,?,?)";
		String regstatus="";
		
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url,user,password);
			PreparedStatement ps=con.prepareStatement(sql);
			
			
			ps.setString(1, uname);
			ps.setString(2,mail);
			ps.setString(3, pass);
			ps.setString(4, gender);
			ps.setString(5, address);
			
			ps.executeUpdate();
			regstatus="success";
		
			
		}catch(Exception ex) {
			System.out.println("adding customer fail"+ex);
			ex.printStackTrace();
			regstatus="fail";
			
		}
		finally{
			return regstatus;
		}
		
		
	
	}
	
	public static boolean addproduct(int pid,String pname,String pdesc,String pprice,String pimage)
	{
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="system";
		String sql="INSERT INTO PRODUCT VALUES(?,?,?,?,?)";
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url,user,password);
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, pid);
			ps.setString(2, pname);
			ps.setString(3, pdesc);
			ps.setString(4, pprice);
			ps.setString(5, pimage);
			ps.executeUpdate();
			
			
			
		}catch(Exception e)
		{
			System.out.println("Problem in adding products"+e);
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
}


