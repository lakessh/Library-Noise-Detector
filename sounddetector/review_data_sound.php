<?php
include("dbconnect.php");
$dblink = Connection();

$query = "SELECT * FROM sound_logs ORDER BY timestamp ASC";

if($result = mysqli_query($dblink, $query)){
	echo "Reading records successfully from sound_logs <br>";
} else {
	echo "Error: " . $query . "<br>" . mysqli_error($dblink);
}
?>






<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}
</style>





<body style="background-color:#ffe6cc;">

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-card w3-left-align w3-large" style="background-color:#ffbf80;">
    
	
	<a href="main.html" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Home</a>

    <a href="review_data_sound.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Sound</a>
   
    
</div>


</div>
<!-- First Grid -->
<div class="w3-row-padding w3-padding-64 w3-container">
  <div class="w3-content">
   <h3>Noise Detection</h3>
   <table border="1" cellspacing="1" cellpadding="1" style="text-align:center;">
		<tr style="text-align:center; font-weight:bolder;font-size:24px;">
			<td>Timestamp</td><td>Sound Level</td>
		</tr>
     <?php 
		  if(mysqli_num_rows($result) > 0){
		     while($row = mysqli_fetch_assoc($result)) {
		        printf("<tr>
							<td>%s</td><td>%s</td>
					   </tr>", 
		           $row["timestamp"],
				   $row["soundlevel"]
				
				   
				   
				   );
		     }
		  }
		  mysqli_close($dblink);
      ?>
	  
	
   </table>

    
  </div>
</div>





<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity">  
 
  <p style="font-style: normal; font-weight:bolder; text-align:center; color:#f2f2f2; font-size: 16px;font-family:Helvetica;color:black;">© Copyright. All rights reserved </p> 
</footer>

<script>
// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>

</body>
</html>







