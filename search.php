<?php  
$connect = mysqli_connect('localhost', 'root', '');
 
$db_selected = mysqli_select_db($connect, 'gamedb');

if (!$db_selected){
    echo "asd";
    die('Can\'t use gamedb'.mysql_error());
}

 if(isset($_POST["state_query"]))  
 {  
    $query = "SELECT * FROM autocomplete WHERE states LIKE '%".$_POST["state_query"]."%'";
    $result = mysqli_query($connect, $query);
    $output = '<ul class="list-unstyled">';  
    if(mysqli_num_rows($result) > 0)  
    {  
         while($row = mysqli_fetch_array($result))  
         {  
              $output .= '<li>'.$row["states"].'</li>';  
         }  
    }
    $output .= '</ul>'; 
    echo $output; 
 }
 
 
 if(isset($_POST["email_query"]))  
 {  
    $query = "SELECT emails FROM autocomplete WHERE emails <> ''";
    $result = mysqli_query($connect, $query);
    $output = '<ul class="list-unstyled">';  
    if(mysqli_num_rows($result) > 0)  
    {  
         while($row = mysqli_fetch_array($result))  
         {  
              $output .= '<li>'.$_POST["email_query"].$row["emails"].'</li>';  
         }  
    }
    $output .= '</ul>';  
    echo $output;  
 }
 
 
 mysqli_close($connect);
 ?> 