<!DOCTYPE html>
<html>
<body>

<p><a href="member.php">Home</a></p>
<h3> Showing results</h3>
<?php

require 'connect.php';
if(isset($_POST['search'])) {
   $searchq = $_POST['search'];
   if($result = $conn->query("SELECT A.albumname, A.year, A.genre, A.recordname, R.address AS RecordingLabelAddress
	   FROM Album A, RecordingLabel R
	   WHERE A.albumname LIKE '%$searchq%' AND A.recordname = R.name")) {
         if($count = $result->num_rows) {
            echo '<p>' , "Number of Results: " , $count, '</p>';

            while($row = $result->fetch_object()) {
               echo "Album: ", $row->albumname, '<br>', "Year: ", $row->year, '<br>', "Genre: ", $row->genre, '<br>', "Record Label: ", $row->recordname, '<br>', "Recording Label Address: ", $row->RecordingLabelAddress, '<br>';
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

