<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML>
<html>
<head>
    <title>Purchase</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/carousel.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>

    <style>
        ul{
            background-color:#eee;
            cursor:pointer;
        }
        #stateList li{
            padding:5px;
        }
        #emailList li{
            padding:5px;
        }
    </style>
</head>
<body>
    <img src="image/logo.jpg"  style="width:360px;height:100px;text-align:center;position:relative;left:2%"> 
    <nav class="col-md-12 col-xs-12" >
        <ul>
            <li><a href='index.html'>News</a></li>
            <li><a href='Browse.jsp'>Games</a></li>
            <li><a href='more.html'>About us</a></li>


            <li><b>Cart</b></li>
            <li><b>Account</b></li>


        </ul>
                <div class="clear"></div>
    </nav>
    <div style="background-image: url('https://borderlands.com/images/home/footer-bg.jpg?eae91b1d47e12e7f0c62f5bfaf5bca65')">
        
    <div id="wrapper">
        <table class="lib">
            
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
			String query = "SELECT * FROM game WHERE game.name = ?";
    		PreparedStatement statement = con.prepareStatement(query);
    		statement.setString(1, request.getParameter("name"));
    		ResultSet result = statement.executeQuery();
    		
    		while(result.next()) {
                out.println("<tr>");
                out.println("<th><div><img src=image/"+result.getString("img")+" width=\"200\" height=\"200\"></th>");
                out.println("<th><div><h4><pre>    "+result.getString("name")+"</pre></h4>");
                out.println("<br><pre>      Game ID: "+result.getInt("id"));
                out.println("<br>      Price: $"+result.getString("price"));
                out.println("<br>      Platform: "+result.getString("platform"));
                out.println("<br>      Publisher: "+result.getString("publisher"));
                out.println("<br>      Realease Date: "+result.getString("realeaseDate")+"</pre></th>");
                
                out.println("</tr>");
            }


            %>
            
        </table>
        <a href="cart">
        	<img src="image/add.jpg">
        </a>
    </div><br><br><br><br><br>
    </div>
</body>
</html>