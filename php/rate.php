<?php
session_start();
include 'connect.php';
?>

<!DOCTYPE html>
<html>
<head>
<p><a href="member.php">Home</a></p>

<?php
$data=$conn->query("SELECT S.songid, S.name, CustRates.rating
FROM Song S LEFT OUTER JOIN
(SELECT *
FROM Rates R
WHERE R.customerid IN (SELECT C.customerid FROM Customer C WHERE C.name = '".$_SESSION['sess_user']."'))CustRates ON S.songid = CustRates.songid");

while($row=$data->fetch_assoc()) {
   $songid = $row['songid'];
   $songName = $row['name'];
   $current_rating = $row['rating'];

   echo "
	   <form action='rateResults.php' method='POST'>
	      $songName: <select name='rating'>
	         <option>1</option>
		 <option>2</option>
		 <option>3</option>
		 <option>4</option>
		 <option>5</option>
	       </select>
	       <input type='hidden' value='$songid' name='songid'>
	       <input type='submit' value ='Rate'> Current Rating: "; echo $current_rating ; echo "
	   </form>
   "; 
}

?>
</body>
</html>
