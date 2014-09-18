<!DOCTYPE.html>
<html>
<title>Create profile</title>
<style>
html, body, div, p, a, ul, li, header, menu {
    border: 0 none;
    font: inherit;
    margin: 0;
    outline: 0 none;
    padding: 0;
    vertical-align: baseline;
}


body{
     background-color: #000000;
     color: #ffffff;
     font-size: 11px;
     line-height: 20px;
     width: 100%;
}
#register{
	 background-image: url("pic/bg.png");
	 background-position: center top;
	 height: 1495px;
	 width: 100%;
}
.header{
	margin-left: auto;
	margin-right: auto;
	width: 975px;
	position: top;
}
.header a{
	  background-position: left top;
	  background-repeat: no-repeat;
} 
.header a.logo{
	background-image: url("pic/logo.png");
	display: block;
	float: left;
	height: 38px;
	padding-left: 92px;
	padding-top: 27px;
	width: 170px;
}	
.header a.Login {
    background-image: url("pic/logout.png");
    display: block;
    float: right;
    height: 15px;
    margin-right: 18px;
    margin-top: 25px;
    padding-left: 23px;
    width: 42px;
}


a {
    color: #ffffff;
    font-size: 11px;
    text-decoration: none;
}

strong {
	font-size: 16px;
}
h {
   font-size: 40px;
}
.regis {
	padding-top: 120px;	
	padding-left: 155px;
}
p {
margin-top: 30px;
color: #01dfd7;
font-size: 15px;
}
</style>

<body>
<div id="register">
	<div class="header">
	   <a class="logo">Create your profile</a>
	   <a class="Login" href="login.jsp">Login</a>
	</div>
        <div class="regis">	
	   <h> Create your profile</h>
	   <form name="form" method="POST" action="RegisServlet"> 
		   <p>Name</p> <input name="name" type="text" size="15"
				placeholder="First Name">
			       <input name="last" type="text" size="15"
				placeholder="Last Name">
<br>	
		   <p>Username</p> <input name="userid" type="text" size="15">
<br>
		   <p>Password</p> <input name="password" type="text" size="15">
<br>
		   <p>About me</p> <textarea name="about" cols="50" rows="5">

				  </textarea>
<br> 
	<p>Where you see me?</p> <textarea name="location" cols="50" rows="5">

                                  </textarea>
<br>
        <p>How to contact me?</p> <textarea name="contact" cols="50" rows="5"> 
				  </textarea>
<br>
        <p>Education</p> <textarea name="education" cols="50" rows="5">

				  </textarea>
<br><br><br>  
	<input type="Submit" value="Save" >
	</form>
</div>
</div>
</body>
</html>

















