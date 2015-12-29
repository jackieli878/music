<!DOCTYPE html>
<html>
<body>

<p><a href="member.php">Home</a></p>
<h3> Showing results</h3>
<?php

require 'connect.php';
if(isset($_POST['search'])) {
   $searchq = $_POST['search'];
   if($result = $conn->query("SELECT A.name AS aname, R.name as rname, R.address AS RecordingLabelAddress
	   FROM Artist A, HasSigned H, RecordingLabel R
	   WHERE A.name = H.artistname AND R.name = H.recordname AND A.name LIKE '%$searchq%'")) {
         if($count = $result->num_rows) {
            echo '<p>' , "Number of results: ", $count, '</p>';

            while($row = $result->fetch_object()) {
               echo "Artist: ", $row->aname, '<br>', "Recording Label: ", $row->rname, '<br>', "Recording Label Address: ", $row->RecordingLabelAddress, '<br>', '<br>';
	    }
	    $result->free();
         } else {
              echo "No results found";
         }
      }
}
?>
</body>
</html>

