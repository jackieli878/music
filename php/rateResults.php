<?php
session_start();
ob_start();

include 'connect.php';

$songid = $_POST['songid'];
$post_rating = $_POST['rating'];

echo $songid;
echo $post_rating;

$data = $conn->query("SELECT C.customerid FROM Customer C WHERE C.name = '".$_SESSION['sess_user']."'");

while($row = $data->fetch_assoc()) {
   $customerid = $row['customerid'];
}

$result = $conn->query("SELECT * FROM Rates WHERE customerid = '$customerid' AND songid = '$songid'");
if($row = $result->fetch_array(MYSQLI_ASSOC)) {

  $update_rating = "UPDATE Rates SET rating = '$post_rating' WHERE customerid = '$customerid' AND songid = '$songid'";
    mysqli_query($conn, $update_rating);
}

else {$update_rating = "INSERT INTO Rates (customerid, songid, rating) VALUES ('$customerid','$songid','$post_rating')";
mysqli_query($conn, $update_rating);
}
header("location: rate.php");

?>
