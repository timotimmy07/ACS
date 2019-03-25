
<?php
$servername = "127.0.0.1";
$username = "root";
$Password ="";
$dbname = "acs";
$user=$_POST['email'];
$password=$_POST['password'];
$confirm=$_POST['confirm'];
$department=$_POST['department'];
$position=$_POST['position'];
try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $Password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   // $select = "SELECT email from registration where email = ? limit 1";
    // use exec() because no results are returned
    $SQL="INSERT INTO signups (username,password,repassword,department,position)VALUES('$user',MD5('$password') ,MD5('$confirm'),'CLIENT','$department','$position')";
    $conn->exec($SQL);
    //echo "New record created successfully";
    }
catch(PDOException $e)
    {
    //echo $sql . "<br>" . $e->getMessage();
    // echo $SQL . "<br>" . $e->getMessage();
    }

$conn = null;

include "login.php";
  ?>
 