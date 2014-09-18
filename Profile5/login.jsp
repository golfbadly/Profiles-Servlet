<!DOCTYPE.html>
<html>
<title>Golf profile</title>
<script language="javascript">

	function pasuser(form) {

//	location = "jsp.jsp";
		

/*		if (form.id.value==sessionStorage.getItem("userid")) { 
		     if (form.pass.value==sessionStorage.getItem("password"))
	        	 {              
			location="p_menu.html" 
			} else { alert("Invalid Password")
			}
	     	} else {  alert("Invalid UserID")
			}	
*/
	}
</script>
<style>
body{
        background-image: url("pic/Urban-Life.jpg"); 
	background-repeat: no-repeat;
        background-size: 100%; 
        color: #01dfd7;
        font-size: 25px;
        width: 100%;
	font-family:TlwgTypewriter,Helvetica,sans-serif;
}
body div {
display: inline-block;
margin-left: 150px;
}
#blog{
     background-color: #00bfff;
     height: 175px;
     width: 280px;  
     margin-top: 200px; 
     box-shadow: 6px 6px 5px #000000;  
     border-radius: 6px; 
     opacity: 0.8;
} 
#blog:hover{
	    opacity: 1;
}
table{
      padding-top: 10px;	
      padding-left: 26px;
}
#text{
	margin-left: 110px;
        text-shadow: black 0.1em 0.1em 0.1em
}

h{font-size: 45px;
}
p{font-size: 40px;
}
</style>

<body>
	<div id="blog">
        <table>	
	<tr>
		<td>
		<form name="login" method="POST" action="LoginServlet">
		<input
			name="id" type="text" size="18" style="height:50px;"
                        placeholder="UserID"
			onkeypress="if (event.keyCode==13)
                                   { pasuser(form);}" 
			> 
		</td>	
	</tr>
	<tr>
	        <td> 
		<input name="pass"
			type="password" size="10"
			placeholder="Password" style="height:50px;"
			onkeypress="if (event.keyCode==13)
				   { pasuser(form);}"  	
			>
		<input type="Submit" value="Login"
			style="height:50px;"
			onClick="pasuser(form)" 	
			>  
                </form> 
		</td>	
	</tr>
        <tr>
		<td>
		<input type="button" value="Create your profile"
		 onClick="window.location.href='register.jsp'" style="margin-top: 5px;"> 
		</td>	
	</tr>
	</table>	
	</div>
	<div id="text">
                <h><b>Welcome to my profile.</b></h>
                <p><b>Please login. <br>
                If you want to know me.
                </b></p>
	</div>


</body>
</html>
