<html>
<head>
        <title>Confirmation</title>
        <meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link type="text/css" rel="stylesheet" href="css/carousel.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
<body>
    <img src="image/logo.jpg"  style="width:360px;height:100px;text-align:center;position:relative;left:2%"> 
        
        <nav class="col-md-12 col-xs-12" >
            <ul>
                <li><a href='index.html'>News</a></li>
                <li><a href='games.php'>Games</a></li>
                <li class='active'><a href='more.html'>About us</a></li>


                <li><b>Cart</b></li>
                <li><b>Account</b></li>


            </ul>
                    <div class="clear"></div>
        </nav>
        
    <div style="background-image: url('https://borderlands.com/images/home/footer-bg.jpg?eae91b1d47e12e7f0c62f5bfaf5bca65')">
       <div id="wrapper">  
<?php
define('DB_NAME', 'gamedb');
define('DB_USER', 'root');
define('DB_PASSWORD', 'inf124');
define('DB_HOST', 'localhost');

$link = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD);

if (!link){
	die('Could not connect: '.mysql_error());
}

$db_selected = mysqli_select_db($link, DB_NAME);

if (!$db_selected){
    die('Can\'t use'.DB_NAME.':'.mysql_error());
}

$value1 = $_GET["ItemName"];
$value2 = $_GET["quantity"];
$value3 = $_GET["FirstName"];
$value4 = $_GET["LastName"];
$value5 = $_GET["Phonenumber"];
$value6 = $_GET["email"];
$value7 = $_GET["Address"];
$value8 = $_GET["Cardnumber"];
$value9 = $_GET["Shippingmethod"];
$value10 = $_GET["state"];

$cof = 0;

$sql = "INSERT INTO purchase (ItemName,quantity,FirstName,LastName,Phonenumber,email,Address,Cardnumber,Shippingmethod,state) VALUES ('$value1','$value2','$value3','$value4','$value5','$value6','$value7','$value8','$value9','$value10')";


if (mysqli_query($link, $sql)){
	echo "<pre><h2>Thank you for your order</h2></pre><br>";
	echo "<h2>Purchase information</h2>";
	echo "<pre>Game name: ".$value1."</pre><br>";
	echo "<pre>Quantity: ".$value2."</pre><br>";
	echo "<h2>Contact information</h2>";
	echo "<pre>FirstName: ".$value3."</pre><br>";
	echo "<pre>LastName: ".$value4."</pre><br>";
	echo "<pre>Phonenumber: ".$value5."</pre><br>";
	echo "<pre>e-mail: ".$value6."</pre><br>";
	echo "<pre>Address: ".$value7."</pre><br>";
	echo "<pre>State: ".$value10."</pre><br>";
	echo "<h2>Payment information</h2>";
	echo "<pre>Cardnumber: ".$value8."</pre><br>";
	echo "<pre>Shippingmethod: ".$value9."</pre><br>";
}else{
    echo "ERROR: Could not execute $sql. " . mysqli_error($link);
}


mysqli_close($link);
?>
        
    </div>
<br><br><br><br>
    </div>
</body>
</html>
