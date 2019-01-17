<?php
$connect = new mysqli("localhost","root","","bounouhflutter");

$phoneNumber= $_POST['phoneNumber'];
$password = $_POST['password'];
$Cpassword = $_POST['Cpassword'];

if($password == $Cpassword) {
	$sql = "INSERT INTO authentication (phoneNumber, Password)
	VALUES ('$phoneNumber','$password')";

	if ($connect->query($sql) === TRUE) {
	    $json['success'] = 1;
	    echo json_encode($json);
	} else {
	    $json['success'] = 0;
	    echo json_encode($json);
	}
}
else {
	$json['password'] = 1;
	echo json_encode($json);
}



?>

   
