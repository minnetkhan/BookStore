<!doctype html>
<html>
   <head>
     <title>Online Bookstore-SineUP</title> 
     <meta name="viewport" content="width=device-width,initial-scale=1.0">
     <meta charset="UTF-8">
	 <link rel="stylesheet" type="text/css" href="/LoginApp/blueberry.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
    <script src="jquery.blueberry.js"></script>
   <script>
     $(window).load(function(){
	  $('.blueberry').blueberry();
	  });
	  
    </script>
	<script>
	   function check_form(form)
	  { 
	      var field = form.pass1.value;   

	   if(form.pass1.value == form.pass2.value)
	    {
		  
		   alert(field.length);
		    
		      if(field.length < 4 || field.length > 8)
		    {
		      alert("(password should be 4 to 8 character )");
		      
		      form.pass1.focus();
		      return false;
		  
		    }
			else
			  
			  return true;
			
		}
		else
		  return false;
		 
		  
		  
		  
		 
	  }
	</script>
	 
	 <style type="text/css">
	   
	   body
		 {
		  background:#C3E1FF;
	      font:14px/20px Arial,San-Serif;
	      color:#555;
	      margin:0;
		 }
		 
header
  	{
	  background:#405580;
	  width:100%;
	  height:86px;
	  position:fixed;
	  top:0;
	  left:0;
	  z-index:100;//stays above
	  opacity:0.90;
	}
	#logo
	{
	  margin:20px;
	  float:left;
	  width:350px;
	  height:60px;
	  background:url(logo2.png) no-repeat center;
	}
	nav ul li
	{
	    float:right;
	    padding:10px;
	    display:inline-block;
	  
	}
	 a
		  {
		   color:#FFF;
		   text-decoration:none;
		   font-weight:gold;
		  }
        a:hover
	    {
	     color:#FFF;
	     text-decoration:underline;
	    }
		#current
	    {
	     color:#FFF;
	     text-decoration:underline;
	    }
	#doc{
         margin:40px 0;
		 
       }
	  #content{
	          margin:0 auto;
			  max-width:1140px;
			  margin-top:110px;
	         }
       .blueberry{
	           max-width:960px;
			   margin-top:110px;
	          }	
		 section.B{
           width:29%;
		   float:left;
		   margin:2% 2%;
		   text-align:center;
         }
		 footer{
			    background:#333333;
				width:100%;
				overflow:hidden;
				opacity:0.90;
				}
   footer p,footer h3
     {
	   color:#FFF;
	 }
	 .hello
		{
		 border-top:1px solid #4D4E50;
		  background:#333333;
		  max-height:60px;
		  text-align:center;
		  opacity:0.95;
		}
		ul.social li
		{
		 display:inline;
		 padding:2px;
		}
		ul.social li img
		{
		  height:25%;
		  width:20%
		}
		img.service
		{
		   height:25%;
		  width:20%
		}
		.A
		{
		  width:28%;
		  padding:0.5cm;
		  padding-top:2cm;
		  
		  float:left;
		  margin:0 auto;
		  
		  
		  height:auto;
		
		}
		marquee
		{
		  color:#FF4D4D;
		  text-decoration:underline;
		}
		
		
	 </style>
	</head>
 <body>
   
    <header>
	    <a href="#" id="logo"></a>
		 <nav>
		    <a href="#" id="menu-icon"></a>
			  <ul>
			      <li><a href="#">Cart</a></li>
				  <li><a href="#" >Offers</a></li>
				   <li><a href="#" id="current" >Login</a></li>
				   <li><a href="signup.html">SignUP</a></li>
				  
		          <li><a href="homepage.jsp" >Home</a></li>
				  
				  
			  </ul>
		 </nav>
	</header>
	<br/>
	
	<section class="A">
	    <h1>LOGIN</h1>
	    <% if(request.getAttribute("message") != null) { %>
	    <h3><%=request.getAttribute("message") %></h3>
	    <%} %>
		<form method="post" action="Login" onsubmit="return check_form(this)">
		  
		  
		    <label for="email">EMAIL</label><br/><br/>
		   <input type="email" id="email" name="email" placeholder="abc@something.com" required><br/><br/>
		   <label for="Mobile">PASSWORD</label><br/><br/>
		    
		   <input type="password" id="pass1" name="password" required><br/><br/>
		   
		   <input type="submit" value="REGISTER" id="reg">
		   <h6>password should be 4 to 8 character</h6>
		</form>
		
	</section>
  	<div id="doc"><!---for image slider--->
	    <div id="content">
		    <div class="blueberry">
			  <ul class="slides"> 
			       <li><img src="images/cover1.png"/></li>
				   
				   <li><img src="images/cover3.jpg"/></li>
				   <li><img src="images/cover4.jpg"/></li>
				   
				   <li><img src="images/cover6.jpg"/></li>
			  </ul>
			</div>
      </div>
	</div>
	
	<marquee behavior="scroll" direction="left"><h2>Login with valid email and Password..</h2></marquee>
	
	 
	<footer>
	    <section class="B">
		   <img src="images/service.png" class="service"/>
		   <p>Happy to help 24X7, call us on 8882082333,</p>
		</section>
	    <section class="B" >
		   <h3>connect with us!</h3>
		    <ul class ="social">
			  <li><a href="https://www.facebook.com/"><img src="images/facebook.jpg"/></a></li>
			  <li><a href="https://plus.google.com/"><img src="images/googleplus.jpg"/></a></li>
			  <li><a href="https://twitter.com"><img src="images/tweeter1.jpg"/></a></li>
			</ul>
		</section>
		<section class="B">
		   <h3>100% Assurance and promise</h3>
		   <p> we provide 100% assurance. If you have any issue, your money is immediately refunded. Sit back and enjoy your shopping.
		   </p>
		</section>
	</footer>
	<footer class="hello">
	   <p>@Copyright Bcart 2015.</p>
	</footer>
 <body>
</body>
</html>