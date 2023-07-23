<%@ page import="com.dbhandler.fetchdataServlet" %>
<%@ page import="java.util.List" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<link rel="stylesheet" href="admin.css"/>
<style>
/* CSS Styles */
</style>
<script>
// JavaScript code
function openTab(tabName) {
  // Hide all tab content
  var tabContent = document.getElementsByClassName("tab");
  for (var i = 0; i < tabContent.length; i++) {
    tabContent[i].style.display = "none";
  }
  
  // Show the selected tab content
  document.getElementById(tabName).style.display = "block";
}
</script>
</head>
<body>
<%
List userList = fetchdataServlet.fetchUserInfo();
List productList = fetchdataServlet.fetchProductInfo();
%>

<div class="panel">
  <div class="button-container">
    <button class="active" onclick="openTab('tab1')">View customer Info</button>
    <button onclick="openTab('tab2')">Product Details</button>
    <button onclick="openTab('tab3')">Add Products</button>
  </div>
  <div class="content-container">
    <div class="tab" id="tab1">
      <table border>
        <thead>
          <tr>
            <th>UserName</th>
            <th>Email</th>
            <th>Gender</th>
            <th>Address</th>
          </tr>
        </thead>
        <tbody>
          <% for (int i = 0; i < userList.size(); i++) {
              String[] custArr = ((String)userList.get(i)).split(":");
          %>
          <tr>
            <td><%= custArr[0] %></td>
            <td><%= custArr[1] %></td>
            <td><%= custArr[2] %></td>
            <td><%= custArr[3] %></td>
          </tr>
          <% } %>
        </tbody>
      </table>
    </div>
    <div class="tab" id="tab2">
      <table border>
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Image</th>
          </tr>
        </thead>
        <tbody>
          <% for (int i = 0; i < productList.size(); i++) {
              String[] productArr = ((String)productList.get(i)).split(":");
          %>
          <tr>
            <td><%= productArr[0] %></td>
            <td><%= productArr[1] %></td>
            <td><%= productArr[2] %></td>
            <td><%= productArr[3] %></td>
            <td><img src="productImg/<%= productArr[4] %>" alt="product 1"></td>
          </tr>
          <% } %>
        </tbody>
      </table>
    </div>
    <div class="tab" id="tab3">
      <form action="addp" method="post">
        <div class="form-group">
          <label for="product-id">Product ID:</label>
          <input type="text" id="product-id" name="product-id"/>
        </div>
        <br><br>
        <div class="form-group">
          <label for="product-name">Product Name:</label>
          <input type="text" id="product-name" name="product-name"/>
        </div>
        <br><br>
        <div class="form-group">
          <label for="product-description">Product Desc</label>
          <input type="text" id="product-description" name="product-description"/>
        </div>
        <br><br>
        <div class="form-group">
          <label for="product-price">Product price</label>
          <input type="text" id="product-price" name="product-price"/>
        </div>
        <br><br>
        <div class="form-group">
          <label for="product-image">Product Image</label>
          <input type="text" id="product-image" name="product-image"/>
        </div>
        <br><br>
        <button type="submit">Submit</button>
      </form>
    </div>
  </div>
</div>

<script>
// Show the default selected tab on page load
openTab('tab1');
</script>

</body>
</html>
