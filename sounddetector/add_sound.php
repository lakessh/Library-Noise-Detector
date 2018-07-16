<?php
include("dbconnect.php");
$dblink = Connection();

$query = "INSERT INTO sound_logs(soundlevel) VALUES('".$_GET["sensor3"]."')";

if(mysqli_query($dblink, $query)){
	echo "New record created successfully";
} else {
	echo "Error: " . $query . "<br>" . mysqli_error($dblink);
}

mysqli_close($dblink);
?>