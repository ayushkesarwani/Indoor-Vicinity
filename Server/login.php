<?php
$phone=filter_input(INPUT_POST,"username");
$password=filter_input(INPUT_POST,"password");
//$password = md5($password);

$mysqli=new mysqli("fdb30.awardspace.net","3529874_vendors","FinalYear@4","3529874_vendors");
$conn = $mysqli;

if ($conn->connect_error) {
   die("Connection failed: " . $conn->connect_error);
}
 if(isset($phone)) {


    $cell = (isset($phone)?
    $phone : null);
    $query=mysqli_query($mysqli,"SELECT * from vendor where phone_num='$cell' LIMIT 1");
    $find=mysqli_num_rows($query);
    echo $find;
    if($find==0)
    {
    die("2");
    }
}
 


$result=mysqli_query($mysqli,"select * from vendor where phone_num='".$phone."' and password='".$password."'");

if($data=mysqli_fetch_array($result))
{
	echo '1';
	echo implode(',', $data);
}
else
{
    echo '0';
} 
$conn->close();
?>