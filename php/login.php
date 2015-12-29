<?php 
session_start(); 
ob_start();
?>

<!DOCTYPTE html>
<html>
<head>
<title>Login</title>
</head>
<body>

<p><a href="register.php">Register</a> | <a href="login.php">Login</a></p>
<h3>Login Form</h3>
<form action="" method="POST">
Username: <input type="text" name="user"><br /><br />
Password: <input type="password" name="pass"><br /><br />	
<input type="submit" value="Log In" name="submit" />
</form>
<?php
if(isset($_POST["submit"])){

   require 'connect.php';

   if(!empty($_POST['user']) && !empty($_POST['pass'])) {
	$user=$_POST['user'];
	$pass=$_POST['pass'];

	$query=$conn->query("SELECT * FROM Customer WHERE name='".$user."' AND password='".$pass."'");
	$numrows=$query->num_rows;
	if($numrows!=0) {
	   while($row = $query->fetch_assoc()) {
	      $dbusername=$row['name'];
	      $dbpassword=$row['password'];
	   }  

	   if($user == $dbusername && $pass == $dbpassword) {
	      $_SESSION['sess_user']=$user;
	      /* Redirect browser */
	      header("Location: member.php");
	   }

	} else {
	     echo "Invalid username or password!";
	}

   } else {
     echo "All fields are required!";
   }
}
?>

</body>
</html>

