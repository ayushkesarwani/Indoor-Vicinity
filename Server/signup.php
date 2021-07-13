
<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
$con=mysqli_connect("fdb30.awardspace.net","3529874_vendors","FinalYear@4","3529874_vendors"); //$mysqli=new mysqli("fdb30.awardspace.net","3529874_vendors","FinalYear@4","3529874_vendors");
if ($conn->connect_error) {
   die("Connection failed: " . $conn->connect_error);
}
$name=$_POST['name'];
$email=$_POST['email'];
$pass=$_POST['password'];
$phone=$_POST['phone'];
$shopname=$_POST['shopname'];
$shopid=$_POST['shopid'];
$pass= md5($pass);

$sq="SELECT * FROM vendor WHERE email='".$email."'";
$rj=mysqli_query($con,$sq);
$row = mysqli_fetch_assoc($rj);
	if($row)
        {
        echo("exit");
        }
        else
        {
        
	$sql="INSERT INTO vendor(shop_id,vendor_name,shop_name,password,email,phone_num) VALUES ('".$shopid."','".$name."','".$shopname."','".$pass."','".$email."','".$phone."')";
	if(mysqli_query($con,$sql)){
	echo("1");


	}else
        {        
	echo("Error");
	}
}



}