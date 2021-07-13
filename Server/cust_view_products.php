<?php

$prodname=filter_input(INPUT_POST,"prodname");

$mysqli=new mysqli("fdb30.awardspace.net","3529874_vendors","FinalYear@4","3529874_vendors");
$conn = $mysqli;

if ($conn->connect_error) {
   die("Connection failed: " . $conn->connect_error);
}


$result=mysqli_query($mysqli,"select prod_discount, prod_brand from Product where prod_name='".$prodname."'");

while($data=mysqli_fetch_array($result))
{

        
	echo implode(",",$data);
        echo ("-");
}

$conn->close();
?>

