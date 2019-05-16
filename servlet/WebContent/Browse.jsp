<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>


<html>
    <head>
        <meta charset="ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link type="text/css" rel="stylesheet" href="css/carousel.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
      
        
    </head>
    <body>
    
        <img src="image/logo.jpg"  style="width:360px;height:100px;text-align:center;position:relative;left:2%"> 

        <nav class="col-md-12 col-xs-12">
                <ul>
                    <li><a href='index.html'>News</a></li>
                    <li class='active'><a href='Browse'>Games</a></li>
                    <li><a href='more.html'>About us</a></li>

                    
                    <li><b>Cart</b></li>
                    <li><b>Account</b></li>
                    
                    
                    
                </ul>
                        <div class="clear"></div>
        </nav>
        <div class="col-md-12 col-xs-12" style="background-image: url('https://borderlands.com/images/home/footer-bg.jpg?eae91b1d47e12e7f0c62f5bfaf5bca65')">
        

        <div id="wrapper"> 
            <img src="image/rec.png"  style="width:100%;height:15%;text-align:center;position:relative;">
        </div>
        <div class="dropdown">
		  	<button onclick="showList()" class="dropbtn">View history</button>
		  	<div id="myDropdown" class="dropdown-content">
		  		<%@ page import="java.net.*" %>
		  		<%
					String[] history = (String[])request.getAttribute("history");
		  			for(int i = 0; i<5; i++){
		  				if(history[i]!=null)
						out.println("<a target=\"_blank\" href=Purchase?name="+URLEncoder.encode(history[i], "UTF-8")+">"+history[i]+"</a>");
		  			}
				%>
			</div>
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
        
        
            
        <section class="console">
            <table style="width:100%">
            </table>
        </section>
                
            
        </div>
    </body>
</html>
<script>

function showList() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
