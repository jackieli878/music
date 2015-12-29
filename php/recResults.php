<?php session_start() ?>
<!DOCTYPE html>
<html>
<body>
<p>TOP RECOMMENDATIONS FOR YOU</p>

<?php

require 'connect.php';

$result = $conn->query("SELECT S1.name, S2.artistname, S1.minutes, S1.seconds, A1.albumname
FROM
 (SELECT DISTINCT A.genre
 FROM
  (SELECT R.songid
  FROM Rates R
  WHERE R.customerid IN (SELECT C.customerid FROM Customer C WHERE C.name = '".$_SESSION['sess_user']."')
  GROUP BY R.rating, R.songid
  HAVING R.rating = (SELECT MAX(R1.rating)
                     FROM Rates R1
                     WHERE R1.customerid IN (SELECT C.customerid FROM Customer C WHERE C.name = '".$_SESSION['sess_user']."')
                     )) BestSong, IsOn I, Album A
 WHERE BestSong.songid = I.songid AND I.albumid = A.albumid)BestGenre, Album A1, IsOn I1, Song S1, Artist A2, SungBy S2
WHERE A1.genre = BestGenre.genre AND A1.albumid = I1.albumid AND I1.songid = S1.songid AND I1.songid = S2.songid AND S1.songid = S2.songid AND S2.artistname = A2.name");
if($count = $result->num_rows) {
   echo '<p>', $count, " Recommendations", '</p>';
      while($row = $result->fetch_object()) {
         echo "Song: ", $row->name, '<br>', "Artist: ", $row->artistname, '<br> ', "Album: ", $row->albumname, '<br>', "Length: ", $row->minutes, ' ', "minutes and ", $row->seconds, " seconds", '<br>','<br>';
      }
      $result->free();
   } else {
      echo "Sorry no recommendations were found";
   }
 
?>

</body>
</html>

