<!DOCTYPE.html>
<html>
<title>Profile</title>
<style>

html, body, div, p, a, ul, li, header, menu {
    border: 0 none;
    font: inherit;
    margin: 0;
    outline: 0 none;
    padding: 0;
    vertical-align: baseline;
}

body {
    background-color: #000000;
    color: #ffffff;
    font-size: 11px;
    line-height: 20px;
    width: 100%;
}
#menuprofile{
             background-image: url("pic/bg.png"); 
             background-position: center top;
	     height: 1495px;
	     width: 100%;				
}
#menuprofile1{
      background-image: url("pic/bg_cnt1.png");
    background-position: center top;
    background-repeat: no-repeat;
    height: 1495px;
    width: 100%;
}
.header{
	height: 65px;
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
.header a.logout {
    background-image: url("pic/logout.png");
    display: block;
    float: right;
    height: 15px;
    margin-right: 18px;
    margin-top: 25px;
    padding-left: 23px;
    width: 42px;
}
.header a.facebook {
    background-image: url("pic/facebook.png");
    display: block;
    float: right;
    height: 15px;
    margin-right: 16px;
    margin-top: 25px;
    padding-left: 23px;
    width: 55px;
}
.header a.edit {
 display: block;
    float: right;
    height: 15px;
    margin-right: 14px;
    margin-top: 25px;
    padding-left: 23px;
    width: 65px;
}
a {
    color: #ffffff;
    font-size: 11px;
    text-decoration: none;
}
.menu{
    height: 586px;
    margin-left: auto;
    margin-right: auto;
    position: relative;
    width: 975px;
}
.menu p{
	color: #ffffff;
    font-size: 36px;
    left: 85px;
    position: absolute;
    top: 70px;
}
.menu p strong{
color: #00adee;
font-size: 36px;
}

ul#selection{
	display: block;
    height: 586px;
    margin-left: auto;
    margin-right: auto;
    position: relative;
    width: 975px;	
}
ul#selection li {
    background-repeat: no-repeat;
    display: block;
    position: absolute;
}
ul#selection li.menu1 {
    background-color: #00adee;
    background-image: url("pic/g1.jpg");
    background-position: left center;
    height: 195px;
    left: 0;
    top: 260px;
    width: 390px;
}
ul#selection li.menu2 {
    background-color: #54c8f3;
    background-image: url("pic/g2.jpg");
    background-position: center bottom;
    height: 390px;
    left: 390px;
    top: 260px;
    width: 195px;
}
ul#selection li.menu3 {
    background-color: #037ca9;
    background-image: url("pic/g3.jpg");
    background-position: center bottom;
    height: 390px;
    left: 585px;
    top: 65px;
    width: 195px;
}
ul#selection li.menu4 {
    background-color: #93c5d8;
    background-image: url("pic/g4.jpg");
    background-position: center top;
    height: 390px;
    left: 780px;
    top: 65px;
    width: 195px;
}
ul#selection li a {
    background-repeat: no-repeat;
    color: #eefafe;
    display: block;
    font-size: 12px;
    height: 83px;
    padding-top: 113px;
    text-align: center;
    width: 195px;
}

ul#selection li.menu1 a {
    background-image: url("pic/flower.png");
    background-position: center 62px;
    float: right;
}

ul#selection li.menu2 a {
    background-image: url("pic/hand.png");
    background-position: center 70px;
}

ul#selection li.menu3 a {
    background-image: url("pic/letter.png");
    background-position: center 68px;
}

ul#selection li.menu4 a {
    background-image: url("pic/head.png");
    background-position: center 70px;
    margin-top: 195px;
}
</style>
<body>
<div id="menuprofile">
  <div id="menuprofile1">
      <div class="header">
	 <a class="logo">Profile</a>	
         <a class="logout" href="login.jsp">Logout</a>
	 <a class="facebook" href="http://www.facebook.com">Facebook</a>
	 <a class="edit" href="edit.jsp">Edit Profile</a>
      </div>
      <div class="menu">
	 <p><br><br><br>Do you know <strong>Me 
					    ?</strong></p> 
	 <ul id="selection">
		<li class="menu1" style="opacity: 1;">
			<a href="About">About me</a></li>
		<li class="menu2" style="opacity: 1;">
			<a href="Where">Where you see me?</a></li>
		<li class="menu3" style="opacity: 1;">
			<a href="Contact">How to contact me?</a></li>
		<li class="menu4" style="opacity: 1;">
			<a href="Education">Education</a></li> 
         </ul> 
      </div>
  </div>
</div>
</div>
</body>

</html>

