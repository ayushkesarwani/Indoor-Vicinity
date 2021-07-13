<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
        $con=mysqli_connect("fdb30.awardspace.net","3529874_vendors","FinalYear@4","3529874_vendors"); //$mysqli=new mysqli("fdb30.awardspace.net","3529874_vendors","FinalYear@4","3529874_vendors");
        if ($conn->connect_error) 
        {
           die("Connection failed: " . $conn->connect_error);
        }
        
        $name=$_POST['product_name'];
        $image=$_POST['product_image'];
        $price=$_POST['product_price'];
        $brand=$_POST['product_brand'];
        $discount=$_POST['product_discount'];
        $shopid=$_POST['shopid'];
        
        echo($name);
        
        $sql="INSERT INTO Product(prod_name,prod_price,prod_discount,shop_id,prod_brand,prod_image) VALUES ('".$name."','".$price."','".$discount."', '".$shopid."','".$brand."','".$image."')";
        
        if(mysqli_query($con,$sql))
        {
                echo("1");
	}
        
        else
        {        
                echo("Error");
	}
}
echo("Hello World");
