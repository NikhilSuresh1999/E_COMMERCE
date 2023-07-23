package com.admin;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dbhandler.DataInjector;
@WebServlet("/addp")
public class productServlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse resp)throws IOException{
		int pid=Integer.parseInt(req.getParameter("product-id"));
		String pname=req.getParameter("product-name");
		String pdesc=req.getParameter("product-description");
		String pprice=req.getParameter("product-price");
		String pimage=req.getParameter("product-image");
		
		
		DataInjector.addproduct(pid,pname,pdesc,pprice,pimage);
		resp.sendRedirect("admin.jsp");
		
		
	}
	
	

}
