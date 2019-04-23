<!DOCTYPE html>
<html lang="en">
<head>
  <title>Online Mobile Shop</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid" style="font-size:17px;">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">MobileWorld</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="AddCategory.jsp">Add Category</a></li>
          <li><a href="viewAllCategories">View All Categories</a></li>
          <li><a href="AddProduct_FetchData">Add Product</a></li>
          <li><a href="viewAllProducts">View All Products</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Brand<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="AddBrand.jsp">Add Brand</a></li>
          <li><a href="viewAllBrands">View All Brand</a></li>
        </ul>
      </li>
      <li><a href="#">About Us</a></li>
      <li><a href="#">Contact Us</a></li>
    </ul>
    
    <div class="container">
   		<div class="dark">
   			<form role="Product Search" style="width:250px; margin-top:10px; margin-left:650px;">
  			 <div class ="input-group">
   			<input type="text" class="form-control" placeholder="Search"/>
   			<div class="input-group-btn">
   		<button type="submit" class="btn btn-default">
   			<span class="glyphicon glyphicon-search"></span>
   		</button>
   			</div>
   			</div>
   		</form>
   	</div>
   </div>
   <div>
      <ul class="nav navbar-nav navbar-right">
    <li class="dropdown" style="margin-top:-50px;"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Welcome : ${sessionScope.user1.firstName} ${sessionScope.user1.lastName}<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="ViewProfile.jsp">View Profile</a></li>
          <li><a href="UpdateProfile.jsp">Update Profile</a></li>
          <li><a href="ChangePassword.jsp">Change Password</a></li>
        <li><a href="HomePage.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li> 
        </ul>
      </li>
    </ul>
    </div>
  </div>
</nav>

 