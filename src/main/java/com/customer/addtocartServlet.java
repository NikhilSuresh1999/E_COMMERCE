package com.customer;
import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dbhandler.fetchdataServlet;
import com.product.*;

@WebServlet("/add-to-cart")
public class addtocartServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse resp)throws IOException{
		int productid=Integer.parseInt(req.getParameter("productId"));
		Product product=fetchdataServlet.getProductById(productid);
		HttpSession session=req.getSession();
		Cart cart=(Cart)session.getAttribute("cart");
		if(cart==null) {
			cart=new Cart();
			session.setAttribute("cart", cart);
		}
		
		cart.addItem(product);
		resp.sendRedirect("cart.jsp");
	}

}
