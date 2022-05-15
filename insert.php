<?php
  $servername = "localhost";
  $username = "root";
  $password = "root";
  $db = "forum_db";
  $conn = new mysqli($servername, $username, $password, $db);
  if ($conn->connect_error){
    die("Connection failed: ". $conn->connect_error);
  }
  
       $name = $_REQUEST['name'];
       $uname = $_REQUEST['username'];
       $pwd = $_REQUEST['password'];
       $type = $_REQUEST['type'];
       $addr = $_REQUEST['address'];
       $prof1 = $_REQUEST['profile_user'];
       $numb = $_REQUEST['phone'];
       $sql = "INSERT INTO users (username,name,password,type,address,profile,phone) VALUES ('$uname','$name','$pwd','$type','$addr','$prof1','$numb')";
       #$sql = "INSERT INTO users (username,name,password,type) VALUES ('$uname','$name','$pwd','$type')";
       $result = $conn->query($sql);
       header('Location: login.php');
    mysqli_close($conn);


?>


		<!--<div class="form-group">
			<label for="profile">Profile</label>
			<input type="text" name="profile" id="profile" class="form-control" value="<?php #echo isset($meta['profile']) ? $meta['profile']: '' ?>" required  autocomplete="off">
		</div>
		<div class="form-group">
			<label for="phone">Phone Number</label>
			<input type="number" name="phone" id="phone" class="form-control" value="<?php# echo isset($meta['phone']) ? $meta['phone']: '' ?>" required  autocomplete="off">
		</div>
		<div class="form-group">
			<label for="address">Address</label>
			<input type="text" name="address" id="address" class="form-control" value="<?php #echo isset($meta['address']) ? $meta['address']: '' ?>" required  autocomplete="off">
		</div>
-->