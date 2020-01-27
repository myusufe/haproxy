<?php
 
session_start();
 
foreach (getallheaders() as $name => $value) {
	        echo "$name:  $value</br>";
}

echo "<h2><font color=blue>".gethostname()."</h2>";
 
if(isset($_SESSION["user_name"]) && !empty($_SESSION["user_name"])) {
	        echo "<h2>".$_SESSION["user_name"]."</h2>";
		        exit;
}
 
$_SESSION["user_name"] = "user_name B";
 
?>
