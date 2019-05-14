<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
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
                    <li class='active'><a href='games.php'>Games</a></li>
                    <li><a href='more.html'>About us</a></li>

                    
                    <li><b>Cart</b></li>
                    <li><b>Account</b></li>
                    
                    
                </ul>
                        <div class="clear"></div>
        </nav>
        <div class="col-md-12 col-xs-12" style="background-image: url('https://borderlands.com/images/home/footer-bg.jpg?eae91b1d47e12e7f0c62f5bfaf5bca65')">
        

            
            <div id="wrapper"> 
                <img src="image/rec.png"  style="width:100%;height:100%;text-align:center;position:relative;">
            </div>
            <div id="wrapper"> 
        <div>
            
        <table class="lib" cellspacing="100">
            <?php
            $servername = "localhost";
            $username = "root";
            $password = "inf124";
            $dbname = "gamedb";

            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);
            // Check connection
            if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
            } 

            $sql = "SELECT id, name, price, platform, img FROM game";
            $result = $conn->query($sql);
            if ($result->num_rows >0){
                while($row = $result->fetch_assoc()){
                    echo "<tr>";
                    echo "<th><div><img src=image/".$row["img"]." width=\"200\" height=\"200\"></th>";
                    echo "<th><div><h4><pre>    ".$row["name"]."</pre></h4>";
                    echo "<br><pre>      Game ID: ".$row["id"];
                    echo "<br>      Price: $".$row["price"];
                    echo "<br>      Platform: ".$row["platform"]."</pre></th>";
                    echo "<th><pre>   <a target=\"_blank\" href=\"purchase.php?name=".$row["name"]."\"><img src=\"image/purchase.png\" width=\"100\" height=\"100\"></a></pre></th>";
                    echo "</tr>";
                }
            }



            $conn->close();
            ?> 
            
        </table>

        </div>
        </div>
            <div id="wrapper"> 
                <img src="image/ps4bar.png"  style="width:100%;height:100%;text-align:center;position:relative;">
            </div>
            <div id="wrapper"> 
                <img src="image/ps4.png"  style="width:100%;height:100%;text-align:center;position:relative;">
            </div>
        <br>
        
        
            
        <section class="console">
            <table style="width:100%">
            </table>
        </section>
                
            
        </div>
    </body>
</html>

