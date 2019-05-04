<html>
    <head>
        <style>
            table,th,td{
                border: 1px solid black;
                border-collapse: collapse;
            }
            th,td{
                padding: 5px;
            }
            th{
                text-align: left;
            }
            .pu{text-align: center}
        </style>
            
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="style.css">
       
    </head>
    
		<body>

		<div id="wrapper">
		<nav>
                <ul>
                    <li><a href='index.html'>Intro</a></li>
                    <li class='active'><a href='game.html'>Game</a></li>
                    <li><a href='more.html'>More</a></li>
                </ul>
                        <div class="clear"></div>
        </nav>
		<?php
		$servername = "localhost";
		$username = "root";
		$password = "inf124";
		$dbname = "hw2";

		// Create connection
		$conn = new mysqli($servername, $username, $password, $dbname);
		// Check connection
		if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
		} 
                
                $sql = "SELECT id, name, price, platform FROM product";
                $result = $conn->query($sql);
                if ($result->num_rows >0){
                    echo"<h2>Game</h2><br>";
                    while($row = $result->fetch_assoc()){
                        echo "<div><h2>".$row["name"]."</h2>";
                        echo "<br>id:".$row["id"]."</br>";
                        echo "<br>platform:".$row["platform"]."</br>";
                        echo "<br>price:".$row["price"]."</br>";
                    }
                }
			

	
		$conn->close();
		?> 
		
		</body>
		<a target="_blank" href="purchase.html">
            <div class="pu">
                <img src="http://files.constantcontact.com/a2695011401/b0fdbfc1-9266-45d7-950f-a5579c255b0f.png?a=1126754431666" width="100" height="100">
            </div>
        </a>
		</div>
	
	
</html>
