<%@ page import="com.dbhandler.fetchdataServlet" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Shop Nest</title>
    <link rel="stylesheet" href="home.css">
</head>
<body>
    <% 
        List productList = fetchdataServlet.fetchProductInfo();
    %>
    <header>
        <h1>ShopNest</h1>
        <nav>
            <ul>
                <li>
                    <a href="#" class="view-cart">
                        <i class="fas fa-shopping-cart"></i>
                        <span>
                            <a href="cart.jsp">
                                <button class="add-to-cart">View Cart</button>
                            </a>
                        </span>
                    </a>
                </li>
            </ul>
        </nav>
    </header>
    <main>
        <div class="products">
            <% for (int i = 0; i < productList.size(); i++) {
                String[] prodArr = ((String) productList.get(i)).split(":");
            %>
            <section class="Product">
                <img src="productImg/<%= prodArr[4] %>" alt="product 1">
                <h2><%= prodArr[1] %></h2>
                <p><%= prodArr[2] %></p>
                <span class="price"><%= prodArr[3] %></span>
                <form method="post" action="add-to-cart">
                    <input type="hidden" name="productId" value="<%= Integer.parseInt(prodArr[0]) %>">
                    <input type="submit" value="Add to Cart" class="add-to-cart-button">
                </form>
            </section>
            <% } %>
        </div>
    </main>
</body>
</html>
