<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html>
    <head>
        <meta charset="ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link type="text/css" rel="stylesheet" href="css/carousel.css">
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
			    <form class="form-inline mr-auto">
				  <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search" style="width:50%;">
				  <button class="btn btn-primary" type="submit">Search</button>
				</form>
			</div>
		</div>
	</div>
	
        <nav>
            <ul>
                <li><a href='index.html'>News</a></li>
                <li class='active'><a href='Browse'>Games</a></li>
                <li><a href='more.html'>About us</a></li>

                <li class="nav-item dropdown">
			        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			          View history
			        </a>
			        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
			          <%@ page import="java.net.*" %>
				  		<%
							String[] history = (String[])request.getAttribute("history");
				  			for(int i = 0; i<5; i++){
				  				if(history[i]!=null)
								out.println("<a class=\"dropdown-item\" target=\"_blank\" href=Purchase?name="+URLEncoder.encode(history[i], "UTF-8")+">"+history[i]+"  style=\"padding:20px 30px;\"</a>");
				  			}
						%>
			        </div>
			    </li>
                <li><b>Cart</b></li>
                <li><b>Account</b></li>
                
            </ul>
                    <div class="clear"></div>
        </nav>
    
        <div style="background-image: url('https://borderlands.com/images/home/footer-bg.jpg?eae91b1d47e12e7f0c62f5bfaf5bca65')">
        

        <div id="wrapper"> 
            <img src="image/rec.png"  style="width:100%;height:15%;text-align:center;position:relative;">
        </div>
	        
        <div id="wrapper">
	        <table class="lib">
	        
				<%
					Object result = request.getAttribute("result");
					out.println(result);
				%>
	            
	        </table>

        </div>
            <div id="wrapper"> 
                <img src="image/ps4bar.png"  style="width:100%;height:12%;text-align:center;position:relative;">
            </div>
            <div id="wrapper"> 
                <img src="image/ps4.png"  style="width:100%;height:50%;text-align:center;position:relative;">
            </div>
        <br>
        
        </div>
        
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  
    
</body>
</html>