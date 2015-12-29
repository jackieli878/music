<?php
session_start();
if(!isset($_SESSION["sess_user"])){
	header("location:login.php");
} else {
?>
<!doctype html>
<html>
<head>
<title>Welcome</title>
</head>
<body>
<h2>Welcome, <?=$_SESSION['sess_user'];?>! <a href="logout.php">Logout</a></h2>
<p>Search 
<ul>
   <li><a href="searchArtist.php">By Artist</a></li>
   <li><a href="searchSong.php">By Song Name</a></li>
   <li><a href="searchAlbum.php">By Album</a></li>
</ul>
</p>
<p>Rate
<ul>
   <li><a href="rate.php">Update Song Ratings</a></li>
</ul>
<p>Discover New Music
<ul>
   <li><a href="recResults.php">Recommended Songs</a></li>
</ul>
</body>
</html>
<?php
}
?>
