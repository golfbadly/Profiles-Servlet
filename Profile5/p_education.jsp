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


body{
     background-color: #000000;
     color: #ffffff;
     font-size: 11px;
     line-height: 20px;
     width: 100%;
}
#aboutme{
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
.header a.menu {
    background-image: url("pic/logout.png");
    display: block;
    float: right;
    height: 15px;
    margin-right: 18px;
    margin-top: 25px;
    padding-left: 23px;
    width: 42px;
}
#content {
    background-image: url("pic/bg_cnt2.png");
    background-position: center top;
    background-repeat: no-repeat;
    height: 1495px;
    width: 100%;
}
#ctn_about {
    margin-left: auto;
    margin-right: auto;
    width: 975px;
}
ul#c2{
    position: relative;
}
ul#c2 li {
    display: block;
    position: absolute;
}
ul#c2 li.about {
    background-image: url("pic/g4.jpg");
    background-position: left top;
    background-repeat: no-repeat;
    height: 145px;
    left: 0;
    padding-left: 260px;
    padding-top: 50px;
    top: 260px;
}
a {
    color: #ffffff;
    font-size: 11px;
    text-decoration: none;
}
p {font-size: 13px;
   color: #000000;
}
strong {font-size: 16px;}

</style>

<body>
<div id="aboutme">
	<div class="header">
	   <a class="logo">Profile</a>
	   <a class="menu" href="p_menu.jsp">Menu</a>
	</div>
	<div id="content">
	   <div id="ctn_about"> 
		<ul id="c2">	
		   <li class="about">
<p>
<strong>Education</strong>
<br>
<%
Object e = request.getAttribute("education");
%>
<p><%=e%></p>

<!-- <canvas id="Canvas" width="420" height="100" 
style="border:1px solid #d3d3d3;">
Your browser does not support the HTML5 canvas tag.</canvas> -->
</p>
		   </li>
		</ul>
           </div>
	</div>

</div>
</body>
</html>

















