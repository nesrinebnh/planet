<?php
$connect = new mysqli("localhost","root","","bounouhflutter");


$phoneNumber= $_POST['phoneNumber'];
$password = $_POST['password'];

$mysql_qry = "select * from authentication where phoneNumber like '$phoneNumber' and Password like'$password';";
$result = mysqli_query($connect,$mysql_qry);
$row = array();
$row = $result->fetch_array(MYSQLI_BOTH);
// Delete last empty one

$id = $row[0];
$username = $row[1];


if (mysqli_num_rows($result)==1){
    $json['success'] = 1;
    $json['id']= $id ;
    $json['username'] = $username ;
    echo json_encode($json);
}
else {
	$mysql_qry1 = "select * from authentication where phoneNumber like '$phoneNumber'" ;
	$result1 = mysqli_query($connect,$mysql_qry1);
	if (mysqli_num_rows($result1)==1) {
		# code...
		$json['exist']= 1 ;
		$json['success'] = 0;
        
	}else{
    $json['success'] = 0;
    $json['exist'] = 0 ;}
    echo json_encode($json);
}
    


?>

   
