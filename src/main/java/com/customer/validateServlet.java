package com.customer;
import com.dbhandler.fetchdataServlet;

public class validateServlet {
	public static boolean isvalid(String uname,String pass)
	{
		String dbpass=fetchdataServlet.fetchpassword(uname);
		if(pass.equals(dbpass))
		{
			return true;
		}
		else {
			return false;
		}
	}

}
