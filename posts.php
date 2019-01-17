<?php


try {
    $mysqli = new mysqli("localhost", "root", "", "bounouhflutter");

            
            $statement = $mysqli->prepare("select * from posts");


            $statement->execute(); // Execute the statement.
            $result = $statement->get_result(); // Binds the last executed statement as a result.
            $data = [];
            while ($row = $result->fetch_assoc())
            $data[] = $row;
            echo json_encode($data); 


            
            


}

catch (mysqli_sql_exception $e) { // Failed to connect? Lets see the exception details..
    echo "MySQLi Error Code: " . $e->getCode() . "<br />";
    echo "Exception Msg: " . $e->getMessage();
    exit(); // exit and close connection.
}

?>

   
