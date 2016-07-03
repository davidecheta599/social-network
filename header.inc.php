<?php
include ("inc/scripts/mysql_connect.inc.php");
session_start();
if (isset($_SESSION['user_login'])) {
$user = $_SESSION["user_login"];
}
else {
$user = "";
}

$get_unread_query = mysql_query("SELECT opened FROM pvt_messages WHERE user_to='$user' && opened='no'");
$get_unread = mysql_fetch_assoc($get_unread_query);
$unread_numrows = mysql_num_rows($get_unread_query);
$unread_numrows = "(".$unread_numrows.")"; //THIS means to put parenthesis in b/w our row number example (1),(2)



$check_for_pokes = mysql_query("SELECT * FROM pokes WHERE user_to='$user'");
$poke = mysql_fetch_assoc($check_for_pokes);
$poke_num = mysql_num_rows($check_for_pokes);
$poke_nums = "(".$poke_num.")";
?>
<!doctype html>
<html>
<head>
<title>find friends</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
 <script src="js/main.js" type="text/javascript"></script>
 <link rel="stylesheet" type="text/css" href="/socialnetworkcode2/css/style.css"/>
</head>

<body>
<div class="headerMenu">
<div id ="wrapper">


<div class="logo">
     <img src="/socialnetworkcode2/img/find_friends_logo.png"/>
</div>

<div class="search_box">
     <form action="search.php" method="GET" id="search">
          <input type="text" name="q" size="60" placeholder="search ..."/>
		  <input type="submit" value="find_friends"    />
     
     </form>
 </div>
 
<?php 
			if (!isset($_SESSION["user_login"])) {
			echo '
			<div id="menu">
   <a href="#"/>Contact Us</a>
   <a href="#"/>About</a>
   <a href="index.php"/>sign in</a>
   <a href="index.php"/>login</a>
 </div>'; } 
 else {
	 echo '<div id="menu">
   <a href="home.php"/>Home</a>
   <a href="my_messages.php"/>Messages ' . $unread_numrows . '</a>
   <a href="my_pokes.php"/>Pokes '. $poke_nums . '</a>
   <a href="'. $user .'"/>profile</a>
    <a href="#"/>my friends lists</a>   
   <a href="account_settings.php"/>Account setting</a>
   <a href="logout.php"/>logout</a>
 </div>';}  // with the help of  our htaccess we echo the $user on the href
 ?>
</div>
</div>
		