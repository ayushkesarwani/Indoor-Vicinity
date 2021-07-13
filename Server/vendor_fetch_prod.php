<?php

$shopid=filter_input(INPUT_POST,"shopid");

$mysqli=new mysqli("fdb30.awardspace.net","3529874_vendors","FinalYear@4","3529874_vendors");
$conn = $mysqli;

if ($conn->connect_error) {
   die("Connection failed: " . $conn->connect_error);
}


$result=mysqli_query($mysqli,"select prod_name,prod_price,prod_discount from Product where shop_id='".$shopid."'  "  );

while($data=mysqli_fetch_array($result))
{

        
	echo implode(",",$data);
        echo ("-");
}

$conn->close();
?>

