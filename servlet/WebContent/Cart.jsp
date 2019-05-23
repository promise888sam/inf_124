<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML>
<html>
<head>
    <title>Purchase</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/carousel.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">

    
</head>
<body>

    <div class="container-fluid">
		<div class="row justify-content-start">
			<div class="col-4">
			    <img src="image/logo.jpg"  style="width:360px;height:100px;text-align:center;position:relative;left:2%"> 
			</div>
			<div class="col-8" style="padding-top: 50px;">
			    <form action="/gameAstray/Purchase" class="form-inline mr-auto">
				  <input class="form-control mr-sm-2" type="text" name="name" placeholder="Search" aria-label="Search" style="width:50%;">
				  <button class="btn btn-primary" type="submit">Search</button>
				</form>
			</div>
		</div>
	</div>
	<br>
    <nav class="navbar navbar-expand-md navbar-dark p-0">
        <ul class="navbar-nav mr-auto">
            <li><a href='index.html'>News</a></li>
            <li><a href='Browse'>Games</a></li>
            <li><a href='more.html'>About us</a></li>

        </ul>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" style="padding:16px 30px; color:white;">
                  View history
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <%@ page import="java.net.*" %>
                    <%
                        String[] history = (String[])request.getAttribute("history");
                        if(history[0] == null)
                            out.println("<a class=\"dropdown-item\">No history</a>");
                        for(int i = 0; i<5; i++){
                            if(history[i]!=null)
                            out.println("<a class=\"dropdown-item\" target=\"_blank\" href=Purchase?name="+URLEncoder.encode(history[i], "UTF-8")+">"+history[i]+"</a>");
                        }
                    %>
                </div>
            </li>
            <li class="nav-item"><a class="nav-link" href="#" id="account" style="color:white; padding:16px;">Account</a></li>
            <li class="nav-item"><a class="nav-link active" href="Cart" id="cart" style="color:white; padding:16px;">Cart</a></li>
        </ul>
    </nav>
    <div style="background-image: url('https://borderlands.com/images/home/footer-bg.jpg?eae91b1d47e12e7f0c62f5bfaf5bca65')">
    
    <div id="wrapper">
        <table class="lib">
            <%@ page import="java.sql.*" %>
            <%@ page import="java.util.ArrayList" %>
            <%
				Object cart = request.getAttribute("cart");
	            
	           	out.println(cart);
			%>
        </table>
        <span class="d-block p-5">
        <h5 style="text-align:right;">Total:
        <% Object total = request.getAttribute("total");
        out.println("$"+total); %></h5>
        </span>
        
      <div class="collapse" id="collapseExample">
	  <div class="card card-body">
	 <form action="Confirmation" method="POST">
	  <div class="form-row">
	    <div class="col-md-4 mb-3">
	      <label>First name</label>
	      <input type="text" class="form-control" name="firstName" placeholder="Peter" required>
	    </div>
	    <div class="col-md-4 mb-3">
	      <label>Last name</label>
	      <input type="text" class="form-control" name="lastName" placeholder="Anteater" required>
	    </div>
	  </div>
	  <div class="form-row">
	    <div class="col-md-4 mb-3">
	      <label>Card number</label>
	      <input type="number" class="form-control" name="cardNum" min="10000000" required>
	    </div>
	    <div class="col-md-4 mb-3">
	      <label>Phone number</label>
	      <input type="text" class="form-control" name="phoneNum" required>
	    </div>
	  </div>
	  <div class="form-row">
	  	<div class="col-md-5 mb-3">
	      <label>Address</label>
	      <input type="text" class="form-control" name="address" placeholder="Address" required>
	    </div>
	    <div class="col-md-3 mb-3">
	      <label>City</label>
	      <input type="text" class="form-control" name="city" placeholder="City" required>
	    </div>
	    <div class="col-md-1 mb-3">
	      <label>State</label>
	      <input type="text" class="form-control" name="state" placeholder="State" required>
	    </div>
	    <div class="col-md-3 mb-3">
	      <label>Zip</label>
	      <input type="number" class="form-control" name="zip" placeholder="Zip" required>
	    </div>
	  </div>
	  <div class="form-group">
	    <div class="form-check float-right">
	      <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
	      <label class="form-check-label">
	        I Agree to terms and conditions
	      </label>
	    </div>
	  </div><br>
	  <button class="btn btn-primary float-right disabled" id="submit" type="submit">Submit</button>
	</form>
	</div>
	</div>
	  <a class="btn btn-primary" id="checkOut" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false">
	    Check out
	  </a>
	  <a class="btn btn-primary" href="Cart?clear=true">
	    Clear cart
	  </a>
    </div><br><br><br>
    </div>
    
    <footer class="footer">
     	<ul class="mr-auto" style="list-style: none;">
     	<li style="display:inline;"><a href="#">Team Astray: Ken Liu, Yu Fan</a>&nbsp&nbsp|&nbsp&nbsp</li>
        <li style="display:inline;"><a href="more.html">About Us</a>&nbsp&nbsp|&nbsp&nbsp</li>
        <li style="display:inline;"><a href="#">Licenses</a></li>

    	<li style="float:right;">&copy;
            <script>
                document.write(new Date().getFullYear())
            </script>. All rights reserved
        </li>
        </ul>
    </footer>
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script>
    $(document).ready(function(){
        $('#checkOut').click(function(){
        	if($('.lib tr').length == 0)
        		alert("You have no item in the cart.");
        	else
        		$('#submit').removeClass('disabled');
        }) 
    });
    </script>
    
</body>
</html>
