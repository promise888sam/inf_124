<html>
<head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
<body>

        <div id="wrapper"> 

<?php
define('DB_NAME', 'hw2');
define('DB_USER', 'root');
define('DB_PASSWORD', 'inf124');
define('DB_HOST', 'localhost');

$link = mysql_connect(DB_HOST, DB_USER, DB_PASSWORD);

if (!link){
	die('Could not connect: '.mysql_error());
}

$db_selected = mysql_select_db(DB_NAME, $link);

if (!$db_selected){
	die('Cant use'.DB_NAME.':'.mysql_error());
}

$value1 = $_GET["Itemnumber"];
$value2 = $_GET["quality"];
$value3 = $_GET["FirstName"];
$value4 = $_GET["LastName"];
$value5 = $_GET["Phonenumber"];
$value6 = $_GET["e-mail"];
$value7 = $_GET["Address"];
$value8 = $_GET["Cardnumber"];
$value9 = $_GET["Shippingmethod"];
$value10 = $_GET["state"];


$cof = 0;






$sql = "INSERT INTO purchase (item,num,FN,LN,phone,mail,address,card,ship,state) VALUES ('$value1','$value2','$value3','$value4','$value5','$value6','$value7','$value8','$value9','$value10')";


if (mysql_query($sql)){
	echo "<h2>Thank you for your order</h2><br>";
	echo "<h2>Purchase information</h2>";
	echo "Itemnumber    :".$value1."<br>";
	echo "quality       :".$value2."<br>";
	echo "<h2>Contact information</h2>";
	echo "FirstName    :".$value3."<br>";
	echo "LastName    :".$value4."<br>";
	echo "Phonenumber    :".$value5."<br>";
	echo "e-mail    :".$value6."<br>";
	echo "Address    :".$value7."<br>";
	echo "State    :".$value10."<br>";
	echo "<h2>Payment information</h2>";
	echo "Cardnumber    :".$value8."<br>";
	echo "Shippingmethod    :".$value9."<br>";




	

}

mysql_close();
?>

</body>
</html>
