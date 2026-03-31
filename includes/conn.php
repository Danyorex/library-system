<?php
	$conn = new mysqli('localhost', 'root', '', 'rex');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>
