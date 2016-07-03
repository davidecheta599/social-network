// FindFriends main Javascript file 
//NOTE Url="send_post.php" was change to "my_messages_parse.php";
function send_post() {
		var hr = new XMLHttpRequest();
		var url = "my_messages_parse.php";
		var fn = document.getElementById("post").value; //get the values
   	    var vars = "post="+fn;//send the value
		hr.open("POST", url, true);//open the file
    hr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");//THIS TELLS d browser the file type to send
    hr.onreadystatechange = function() {
	    if(hr.readyState == 4 && hr.status == 200) {
		    var return_data = hr.responseText;
			document.getElementById("status").innerHTML = return_data; //when ever the post is submited this let us know if is submited or not
	    }
    }
    hr.send(vars);
    document.getElementById("status").innerHTML = "processing..."; //this tell the browser is been send
}