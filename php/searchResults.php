
<?php
/*   include("connect.php");

if(isset($_POST['search'])) {
   $searchq = $_POST['search'];
   $searchq = preg_replace("#[^0-9a-z]#i","",$searchq);   
   $query = mysql_query("SELECT * FROM Song S WHERE S.name LIKE '%searchq%'");
   $count = mysql_num_rows($query);
   if(count == 0) {
      $output = "No results found";
   } else {
        while($row = mysql_fetch_array($query)) {
           $name = $row['name'];
           $minutes = $row['minutes'];

           $output .= '<div>' .$name.' '.$minutes.'</div>';
        }
   }
} */
?>

<!DOCTYPE html>
<html>
<body>

<p>Showing results</p>

<?php

require 'connect.php';
if(isset($_POST['search'])) {
   $searchq = $_POST['search'];
      if($result = $conn->query("SELECT * FROM Song S WHERE S.name LIKE '%$searchq%'")) {
	      $count = $result->num_rows;
	if($count) {      
	      // if($count = $result->num_rows) {
            echo '<p>' , $count, '</p>';

            while($row = $result->fetch_object()) {
               echo $row->name, ' ', $row->minutes, '<br>';
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


