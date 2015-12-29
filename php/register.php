<!DOCTYPE html>
<html>
<head>
<title>Register</title>
</head>
<body>

<p><a href="register.php">Register</a> | <a href="login.php">Login</a></p>
<h3>Registration Form</h3>
<form action="" method="POST">
Username: <input type="text" name="user"><br /><br />
Password: <input type="password" name="pass"><br /><br />	
<input type="submit" value="Register" name="submit" />
</form>
<?php
if(isset($_POST["submit"])){

   if(!empty($_POST['user']) && !empty($_POST['pass'])) {
	$user=$_POST['user'];
	$pass=$_POST['pass'];

	require 'connect.php';

	$query=$conn->query("SELECT * FROM Customer WHERE name='".$user."'");
	$numrows=$query->num_rows;
	
	if($numrows==0) {
	   $sql="INSERT INTO Customer(name, password, dob) VALUES('$user','$pass', NULL)";
	   $result=$conn->query($sql);

	   if($result){
	      echo "Account Successfully Created";
	   } else {
	      echo "Failure!";
           }  
	} else {
	    echo "That username already exists! Please try again with another.";
	}

   } else {
	echo "All fields are required!";
   } 
}
?>

</body>
</html>

