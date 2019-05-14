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
                    <li class='active'><a href='Browse.jsp'>Games</a></li>
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
            <div id="wrapper"> 
        <div>
            
        <table class="lib" cellspacing="100">
        	<%@ page import="java.sql.*" %>
        	<%@ page import="javax.sql.*" %>
            <%
            
            String servername = "localhost";
            String username = "root";
            String password = "";
            String dbname = "gamedb";

            // Create connection
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamedb", username, password);
            
            // Connect
			String query = "SELECT * FROM game";
    		PreparedStatement statement = con.prepareStatement(query);
    		ResultSet result = statement.executeQuery();
    		
    		while(result.next()) {
                out.println("<tr>");
                out.println("<th><div><img src=image/"+result.getString("img")+" width=\"200\" height=\"200\"></th>");
                out.println("<th><div><h4><pre>    "+result.getString("name")+"</pre></h4>");
                out.println("<br><pre>      Price: $"+result.getString("price"));
                out.println("<br>      Platform: "+result.getString("platform")+"</pre></th>");
                out.println("<th><pre><a target=\"_blank\" href=\"purchase.jsp?name="+result.getString("name")+"\"><img src=\"image/Details.png\" width=\"200\" height=\"200\"></a></pre></th>");

                out.println("</tr>");
                
            }


            %> 
            
        </table>

        </div>
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

