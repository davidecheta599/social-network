<?php include("inc/incfiles/header.inc.php"); ?>
<?php
if (!isset($_SESSION["user_login"])) {
   
}
else
{
   // echo "<meta http-equiv=\"refresh\" content=\"0; url=home.php\">";	//that is take user home
}
?>

<?php		  // $reg = @$_POST['reg'];
			  	 if (isset($_POST["reg"])) {
//declaring variables to prevent errors
$fn = ""; //First Name
$ln = ""; //Last Name
$un = ""; //Username
$em = ""; //Email
$em2 = ""; //Email 2
$pswd = ""; //Password
$pswd2 = ""; // Password 2
$d = ""; // Sign up Date 
 $u_check = ""; // Check if username exists
//registration form
$fn = strip_tags(@$_POST['fname']);
$ln = strip_tags(@$_POST['lname']);
$un = strip_tags(@$_POST['username']);
$em = strip_tags(@$_POST['email']);
$em2 = strip_tags(@$_POST['email2']);
$pswd = strip_tags(@$_POST['password']);
$pswd2 = strip_tags(@$_POST['password2']);
$d = date("Y-m-d"); // Year - Month - Day
$m = $_POST['11'];
$f = $_POST['12'];
if ($em==$em2) { 
	// Check if user already exists
$u_check = mysql_query("SELECT username FROM users WHERE username='$un'");
// Count the amount of rows where username = $un
$check = mysql_num_rows($u_check);

//Check whether Email already exists in the database
$e_check = mysql_query("SELECT email FROM users WHERE email='$em'");
//Count the number of rows returned
$email_check = mysql_num_rows($e_check); 

if ($check == 0) {
  if ($email_check == 0) {
//check all of the fields have been filed in
if ($fn&&$ln&&$un&&$em&&$em2&&$pswd&&$pswd2) {
// check that passwords match
if ($pswd==$pswd2) {
// check the maximum length of username/first name/last name does not exceed 25 characters
if (strlen($un)>25||strlen($fn)>25||strlen($ln)>25) {
echo "The maximum limit for username/first name/last name is 25 characters!";
}
else
{
// check the maximum length of password does not exceed 25 characters and is not less than 5 characters
if (strlen($pswd)>30||strlen($pswd)<5) {
echo "Your password must be between 5 and 30 characters long!";
}
else
{
//encrypt password and password 2 using md5 before sending to database
$pswd = md5($pswd);
$pswd2 = md5($pswd2);


$query = mysql_query("INSERT INTO users VALUES ('','$un','$fn','$ln','$em','$pswd','$d','0','Write something about yourself.','','','no','$m','$f')");
die("<h2>Welcome to findFriends social network!</h2>Login to your account to get started ...");//$_POST['allow_email'] =='on'? 1:0
}
}
}
else {
echo "Your passwords don't match!";
}
}
else
{
echo "Please fill in all of the fields";
}
}
else
{
 echo "Sorry, but it looks like someone has already used that email!";
}
}
else
{
echo "Username already taken ...";
}

}



else {

echo "Your E-mails don't match!";
			 }}
				 

?>
<?php
//Login Script		  	 
 if (isset($_POST["reg"])) {
		
	         if (isset($_POST["user_login"]) && isset($_POST["password_login"])){
				
				 
	$user_login = $_POST['user_login'];                       //mysql_real_escape_string($_POST['user_login']);
	$md5password_login =md5 ($_POST['password_login']);
	
	$user_login = preg_replace('#[^A-Za-z0-9]#i', '', $_POST["user_login"]); // filter everything but numbers and letters is leave to go in 
	
			  $u_check = mysql_query("select * from users WHERE `username`='$user_login' AND `password` = '$md5password_login '");  $b=mysql_num_rows($u_check); 
			  
			  if($b == 1)
				  {  	while($row = mysql_fetch_array( $u_check )){ 
             $id = $row["id"];
			      
	}
			  
			   $_SESSION["id"] = $id;//therefore session the id
		 $_SESSION["user_login"] = $user_login;//therefore session the userlogin
		 $_SESSION["password_login"] = $password_login;//therefore session the password
		   header("location:home.php");
		
				  exit();
 }}
		
		else {
		echo 'That information is incorrect, try again';
		
			 }
			 
			 }	   
			 
			
			  
			  
				?> 
				
		
<div style="width:800px;margin:0px auto 0px auto;">   
          <table>  
			  
			  <tr> 
                <td width="60%" valign="top"> 
				
                    <h2>Already a Memeber? Login below ...</h2> <br/>     
            <form id="log_sign_forms" action="#" method="post" name="form1" id="form1">   <br/>
				<input type="text" size="40" name="user_login" id="user_login" class="auto-clear" placeholder="userName" "/> <br/><br/> 
				
				<input type="password" size="40" name="password_login" id="password_login" placeholder="password" /> <br/><br/> 
				<input type="submit" name="reg" id="button" value="Login to your account">
			</form>
</td>
<td width="40%" valign="top">
 
                   <h2>Sign up Below!</h2> <br/>                
          <form id="log_sign_forms" action="" method="post"> 
            <input type="text" size="25" name="fname" placeholder="first Name"/> <br/><br/> 
		   
           <input type="text" size="25" name="lname" placeholder="last Name"/> <br/><br/> 
		   
		   <input type="text" size="25" name="username" placeholder="userName"/> <br/><br/> 
		   
		   <input type="text" size="25" name="email" placeholder="Email address"/> <br/><br/>
		   
           <input type="text" size="25" name="email2" placeholder="Email address(again)"/> <br/><br/>
		   
           <input type="password" size="25" name="password" placeholder="password"/> <br/><br/>
		   
           <input type="password" size="25"  name ="password2" placeholder="password(again)"/> <br/><br/> 
		   <input type="checkbox" name="11" value="1" >male
           <input type="checkbox" name="12" value="1" >female<br/><br/>
		   
		   <input type="submit" name="reg" value="Sign up">
		   </form>
		   </td>


	</tr>	
	</table>
<?php include("./inc/footer.inc.php");?>
<?php /*


if ($_POST["reg"] =="sign up"){
	
	$m = $_POST['11'];
	$f = $_POST['12'];
	
	
	/*echo "<pre>";
	print_r($_POST);
	echo"</pre>"; 
	
}







<div style="float: left;">
            <h2>Already a Memeber? Login below ...</h2>
            <form action="index.php" method="post" name="form1" id="form1">
				<input type="text" size="40" name="user_login" id="user_login" class="auto-clear" title="Username ..." /><p />
				<input type="text" size="40" name="password_login" id="password_login" value="Password ..." /><p />
				<input type="submit" name="button" id="button" value="Login to your account">
			</form>
            </div>
           <div style="float: right; width: 240px;">
            <h2>Sign up Below ...</h2>
           <form action="#" method="post">
           <input type="text" size="40" name="fname"  class="auto-clear" title="First Name" value="<?php echo $fn; ?>"><p />
           <input type="text" size="40" name="lname" class="auto-clear" title="Last Name" value="<?php echo $ln; ?>"><p />
           <input type="text" size="40" name="username" class="auto-clear" title="Username" value="<?php echo $un; ?>"><p />
           <input type="text" size="40" name="email" class="auto-clear" title="Email" value="<?php echo $em; ?>"><p />
           <input type="text" size="40" name="email2" class="auto-clear" title="Repeat Email" value="<?php echo $em2; ?>"><p />
           <input type="password" size="40" name="password" value="Password ..."><p />
           <input type="password" size="40" name="password2" value="Password ..."><p />
           <input type="submit" name="reg" value="Sign Up!">
           </form>
           </div>
</div>
</body>
</html> */?>