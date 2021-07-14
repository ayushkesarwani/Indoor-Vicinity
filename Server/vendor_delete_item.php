<?php

$prod_name=filter_input(INPUT_POST,"product");

$mysqli=new mysqli("fdb30.awardspace.net","3529874_vendors","FinalYear@4","3529874_vendors");
$conn = $mysqli;

if ($conn->connect_error) {
   die("Connection failed: " . $conn->connect_error);
}


$result=mysqli_query($mysqli,"DELETE FROM Product where prod_name='".$prod_name."'  "  );

echo("Succesfull deleted");

$conn->close();
?>

