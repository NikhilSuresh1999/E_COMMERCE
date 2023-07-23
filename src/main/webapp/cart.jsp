<%@ page import="com.product.Cart" %>
<%@ page import="com.product.Product" %>

<%
   Cart cart = (Cart) session.getAttribute("cart");
   if (cart == null) {
      cart = new Cart();
      session.setAttribute("cart", cart);
   }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
<link rel="stylesheet" href="cart.css"/>
</head>
<body>
   <header>
      <h1>ShopNest</h1>
      <nav>
         <ul>
            <li>
               <a href="#" class="view-cart">
                  <i class="fas-fa-shopping-cart"></i>
                  <span>
                     <button class="add-to-cart">View Cart</button>
                  </span>
               </a>
            </li>
         </ul>
      </nav>
   </header>
   <main>
      <h2>Cart</h2>
      <table>
         <thead>
            <tr>
               <th>Product Name</th>
               <th>Price</th>
            </tr>
         </thead>
         <tbody>
            <% for (Product item : cart.getItems()) { %>
               <tr>
                  <td><%= item.getpname() %></td>
                  <td><%= item.getpprice() %></td>
               </tr>
            <% } %>
         </tbody>
      </table>
      <p>Total: <%= cart.getTotal() %></p>
      <a href="checkout.jsp">Checkout</a>
   </main>
</body>
</html>
