<!DOCTYPE html>
<html>
<body>

<p><a href="member.php">Home</a></p>
<h3> Showing results</h3>
<?php

require 'connect.php';
if(isset($_POST['search'])) {
   $searchq = $_POST['search'];
   if($result = $conn->query("SELECT S.name, S2.artistname, A.albumname, M.url, M.views
	   FROM Song S, SungBy S2, IsOn I, Album A, MusicVideo M
	   WHERE S.name LIKE '%$searchq%' AND S.songid = S2.songid AND S.songid = I.songid AND I.albumid = A.albumid AND M.songid = S.songid")) {
         if($count = $result->num_rows) {
            echo '<p>' , "Number of results: ",  $count, '</p>';

            while($row = $result->fetch_object()) {
               echo "Song: ", $row->name, '<br>', "Artist: ", $row->artistname, '<br>', "Album: ", $row->albumname, '<br>', "Music Video URL: ", $row->url, '<br>', "Number of Music Video Views: ", $row->views, '<br>';
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

