<!DOCTYPE HTML>
<html>
<head>
    <title>Purchase</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/carousel.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>

    <!--script>
        function showHint(str) {
            if (str.length == 0) {
                document.getElementById("txtHint").innerHTML = "";
                return;
            } else {
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        document.getElementById("txtHint").innerHTML = this.responseText;
                    }
                };
                xmlhttp.open("GET", "gethint.php?q=" + str, true);
                xmlhttp.send();
            }
        }
    </script-->
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
            <li><a href='games.php'>Games</a></li>
            <li><a href='more.html'>About us</a></li>


            <li><b>Cart</b></li>
            <li><b>Account</b></li>


        </ul>
                <div class="clear"></div>
    </nav>
    <div style="background-image: url('https://borderlands.com/images/home/footer-bg.jpg?eae91b1d47e12e7f0c62f5bfaf5bca65')">
        
    <div id="wrapper">
        <table class="lib">
            <?php
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "gamedb";

            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);
            // Check connection
            if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
            } 

            $sql = "SELECT * FROM game WHERE name = '".$_GET['name']."'";
            $result = $conn->query($sql);
            if ($result->num_rows >0){
                while($row = $result->fetch_assoc()){
                    echo "<tr>";
                    echo "<th><div><img src=image/".$row["img"]." width=\"200\" height=\"200\"></th>";
                    echo "<th><div><h4><pre>    ".$row["name"]."</pre></h4>";
                    echo "<br><pre>      Price: $".$row["price"];
                    echo "<br>      Game ID: ".$row["id"];
                    echo "<br>      Platform: ".$row["platform"];
                    echo "<br>      Publisher: ".$row["publisher"];
                    echo "<br>      Realease Date: ".$row["realeaseDate"]."</pre></th>";
                    echo "</tr>";
                }
            }
            $conn->close();
            ?> 
            
        </table>
        <form id="purchaseform" action="welcome_get.php" method="get">
            <h7 style="color:black; font-size:20px">Quantity:</h7> <input type="number" name="quantity" min="1" max="999" required><br>
            <br><br>
            <div><h4 style="text-align: center"><pre>Payment Info</pre></h4></div>
            <br>
            
            <?php
            echo "<input type=\"hidden\" name = \"ItemName\" value=\"".$_GET['name']."\" >";
            ?>
            <br>First Name: <input type="text" name="FirstName" required><br>
            <br>Last Name: <input type="text" name="LastName" required><br>
            <br>Phone Number: <input type="text" name="Phonenumber" pattern="[0-9]{10}" maxlength="10" required><br>
            <br>E-Mail: <input type="text" name="email" id="email" required><br>
            <div id="emailList" style="width:200px; margin-left: auto; margin-right: auto;"></div>
            <br>Address: <input type="text" name="Address" size="100" required><br>

            <br>state: <input type="text" name="state" id="state" required><br>
            <div id="stateList" style="width:100px; margin-left: auto; margin-right: auto;"></div>
            <br>Card Number: <input type="text" name="Cardnumber" pattern="[0-9]{16}" maxlength="16" required><br>
            <br>Shipping Method: <input type="text" name="Shippingmethod" required>
            <br><br><br>
            <center>
                <input type="submit" value="Purchase">
                <input type="reset" name="Reset">
            </center>
        </form>
    </div><br><br><br><br><br>
    </div>
</body>
</html>

 <script>  
$(document).ready(function(){  
    $('#email').keyup(function(){  
        var query = $(this).val();  
        if(query !== '')  
        {  
            $.ajax({  
                url:"search.php",  
                method:"POST",  
                data:{email_query:query},  
                success:function(data)  
                {  
                    $('#emailList').fadeIn();  
                    $('#emailList').html(data);  
                }  
            });  
        }  
    });  
    $(document).on('click', '#emailList li', function(){  
         $('#email').val($(this).text());  
         $('#emailList').fadeOut();  
    });  
 });  
$(document).ready(function(){  
    $('#state').keyup(function(){  
        var query = $(this).val();  
        if(query !== '')  
        {  
            $.ajax({  
                url:"search.php",  
                method:"POST",  
                data:{state_query:query},  
                success:function(data)  
                {  
                     $('#stateList').fadeIn();  
                     $('#stateList').html(data);  
                }  
            });  
        }  
    });  
    $(document).on('click', '#stateList li', function(){
        $('#state').val($(this).text());  
        $('#stateList').fadeOut();
    });  
    
 });
 
 </script>  