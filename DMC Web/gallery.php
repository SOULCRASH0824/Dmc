<?php

 // Initialize message variable
  $msg = "";

  // If upload button is clicked ...
  if (isset($_POST['upload'])) {
	 $target = "images/".basename($_FILES['image']['name']);
  
	$db = mysqli_connect("localhost", "root", "", "drifters");
  	$image = $_FILES['image']['name'];
	 $text = $_POST['image_text'];

  	$sql = "INSERT INTO newsfeed (image, text) VALUES ('$image', '$text')";
  	// execute query
  	mysqli_query($db, $sql);

  	if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
  		$msg = "Image uploaded successfully";
  	}else{
  		$msg = "Failed to upload image";
  	}
  }
    if (isset($_POST['announced'])) {
  
	$db = mysqli_connect("localhost", "root", "", "drifters");
	 $text = $_POST['image_text'];

  	$sql = "INSERT INTO newsfeed (announcements) VALUES ('$text')";
  	// execute query
  	mysqli_query($db, $sql);


  }
  
  if(isset($_REQUEST['delete'])){
	
		$id = $_REQUEST['id'];
		
		/*echo '<pre>';
			print_r($_REQUEST);
		echo '</pre>';*/	
		
		$sql = "DELETE FROM images WHERE id='".$id."'";

		if ($db->query($sql) === TRUE) {
			echo "INFO Deleted!";
		} else {
			echo "Error: " . $sql . "<br>" . $conn->error;
		}
		
	}
  
  
 
?>
<!DOCTYPE html>
<html>
<head>
<title>News Feed and Announcement</title>
<style type="text/css">
  #content{
   	width: 50%;
   	margin: 20px auto;
   	border: 1px solid #cbcbcb;
   }
   form{
   	width: 50%;
   	margin: 20px auto;
   }
   form div{
   	margin-top: 5px;
   }
   #img_div{
   	width: 80%;
   	padding: 5px;
   	margin: 15px auto;
   	border: 1px solid #cbcbcb;
   }
   #img_div:after{
   	content: "";
   	display: block;
   	clear: both;
   }
   img{
   	float: left;
   	margin: 5px;
   	width: 400px;
   	height: 300px;
   }
   body { background-color: #3374FF	; }   
   p1{ color: #000000;font-size:130%;}
   #img_div { width:400px ;background-color:#E3D330; border-color:#E3D330}
   #content { width:500px;background-color:#E3D330;border-color:#000000}
   
   footer {
  display: block;
  margin-left: auto;
  margin-right: auto;
  text-align:center;
}


</style>
</head>
<body>
<div id="content">
  <?php
    $db = mysqli_connect("localhost", "root", "", "drifters");
	$sql = "SELECT * FROM newsfeed";
	$result = mysqli_query($db, $sql);
    while ($row = mysqli_fetch_array($result)) {
      echo "<div id='img_div'>";
      	echo "<img src='images/".$row['image']."' >";
      	echo "<p1><p>".$row['text']."</p></p1>";
		echo "<input id="delete" type=submit name=delete value=delete>";
      echo "</div>";
	  
    }
  ?>
  
    <?php
    $db = mysqli_connect("localhost", "root", "", "drifters");
	$sql = "SELECT * FROM newsfeed";
	$result = mysqli_query($db, $sql);
    while ($row = mysqli_fetch_array($result)) {
      echo "<div id='img_div'>";
		echo "<p1><center><p>".$row['text']."</p></center></p1>";
      echo "</div>";
    }
	

  ?>
  
  
  <form method="POST" action="gallery.php" enctype="multipart/form-data">
  	<input type="hidden" name="size" value="1000000">
  	<div>
  	  <input type="file" name="image">
  	</div>
  	<center><div>
      <textarea 
      	id="text" 
      	cols="40" 
      	rows="4" 
      	name="image_text" 
      	placeholder="Please Input Details..."></textarea>
  	</div></center>
  	<div>
  		<button type="submit" name="upload">POST Feed with photos</button>
		<div>
		<button type="submit" name="announced">Post Announcement and Feed (words only)</button>
		</div>
  	</div>
  </form>

</div>

</body>
</html>