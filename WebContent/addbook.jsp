<!doctype html>
<html>
<head>
<title>Online Bookstore-HomePage</title>
<meta name="viewport" content="width=divice-width,initial-scale=1.0">
<link rel="stylesheet" href="blueberry.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script src="jquery.blueberry.js"></script>


<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="dropdown.css" rel="stylesheet" />

<script>
     $(window).load(function(){
	  $('.blueberry').blueberry();
	  });
  </script>
<style type="text/css">
body {
	background: #DBDBFF;
	font: 14px/20px;
	color: #555;
	margin: 0;
	font-family: 'Lucida Grande', 'Helvetica Neue', Helvetica, Arial,
		sans-serif;
	text-align: center;
}

h2 {
	text-decoration: underline;
	line-height: 280%;
	padding: 2%;
}

img {
	text-align: center;
	max-width: 100%;
	height: auto;
	width: auto;
}

a {
	color: green;
	text-decoration: none;
	font-weight: gold;
}

a:hover {
	color: #FFF;
	text-decoration: underline;
}

header {
	background: #405580;
	width: 100%;
	height: 85px;
	position: fixed;
	top: 0;
	left: 0;
	z-index: 100;
	//
	stays
	above
	opacity
	:
	0.90;
}

#logo {
	margin: 1px;
	float: left;
	width: 350px;
	height: 50px;
	background: url(/bookstore/images/logo2.png) no-repeat center;
	padding-bottom: 2px;
}

ul {
	list-style: none;
}

nav ul li {
	float: right;
	padding: 10px;
	display: inline-block;
	padding-top: 10px;
}

.navlist {
	width: 29%;
	float: left;
	margin: 2% 2%;
	text-align: center;
}

#current {
	color: #FFF;
	text-decoration: underline;
}

#doc {
	margin: 40px 0;
}

#content {
	margin: 0 auto;
	max-width: 1140px;
	margin-top: 110px;
}

.blueberry {
	max-width: 960px;
	margin-top: 110px;
}

section {
	width: 29%;
	float: left;
	margin: 2% 2%;
	text-align: center;
}

section.A {
	width: 20%;
	float: left;
	margin: 1%;
}

section.A h2 {
	text-align: center;
	color: #FF8D70;
}

section.A ul li {
	padding-left: 0;
}

section.A ul li a {
	color: #0099CC;
}

.clear {
	clear: both;
}

footer {
	background: #333333;
	width: 100%;
	overflow: hidden;
	opacity: 0.90;
}

footer p, footer h3 {
	color: #FFF;
}

.hello {
	border-top: 1px solid #4D4E50;
	background: #333333;
	max-height: 60px;
	text-align: center;
	opacity: 0.95;
}

ul.social li {
	display: inline;
	padding: 2px;
}

ul.social li img {
	height: 25%;
	width: 20%
}

img.service {
	height: 25%;
	width: 20%
}

#search {
	width: 200px;
	height: 25px;
	background: #E6E6E6;
	color: red;
}

.option {
	height: 25px;
}

.A ul li {
	font-size: 20px;
	padding-top: 10px;
	float: left;
}

.add {
	padding-top: 100px;
	padding-left: 10px;
	float: left;
	width: 25%;
}
</style>
</head>
<body>
	<header>

		<section class="head">
			<a href="#" id="logo"></a>
		</section>

		<section class="box">
			<div class="container-4">
				<form method="get" action="search.jsp">
					<input type="search" id="search" placeholder="Search..." required />
					<select class="option">
						<option value="author">author</option>
						<option value="title">title</option>
						<option value="genre">Genre</option>

					</select>
					<button class="icon" onclick="login.html">
						<i class="fa fa-search"></i>
					</button>
				</form>
			</div>
		</section>
		<nav>
			<section class="navlist">
				<ul class="drop1">

					<%! String email=null,name=null; %>
					<% 	 if(session.getAttribute("email")!=null)
				{
					email = (String) session.getAttribute("email");
					name = (String) session.getAttribute("name");
		%>


					<li><%=name %>
						<ul class="drop2">
							<li><a href="signout.jsp">sign out</a></li>
						</ul></li>
					<% } //session if close online 226
		
			else
			{
		
		%>





					<li>User
						<ul class="drop2">
							<li><a href="signup.html">sign up</a></li>
							<li><a href="login.html">sign in</a></li>
						</ul>
					</li>


					<% }// close of else on line 241 %>



					<li><a href="#">Book </a></li>


					<li>Cart</li>
					<li>sign out</li>
					<li>About</li>
					<li><a href="admin.jsp">Home</a></li>




				</ul>
			</section>
			>
		</nav>
	</header>

	<div class="add">

		<h1>ADD BOOK</h1>
		<form method="post" action="Admin">
			<input type="text" id="bid" placeholder="BOOKID" REQUIRED
				name="bookid"><br /></br> <input type="text" id="name"
				placeholder="TITLE" name="title" REQUIRED><br /></br> <input
				type="text" id="auth" width="20%" placeholder="AUTHORID" required
				name="authorid"><br /></br> <input type="text" id="email"
				placeholder="PUBLICATIONID" required name="publication"><br /></br>
			<input type="text" id="genre" placeholder="GENRE" required
				name="genre"><br /></br> <input type="text" id="pass2"
				placeholder="CONDITION" required name="condition"><br /></br> <input
				type="text" id="pass2" placeholder="PAGES" required name="pages"><br /></br>
			<input type="text" id="pass2" placeholder="DESCRIPTION" required
				name="discription"><br /></br> <input type="text" id="pass2"
				placeholder="QUANTITY" required name="quantity"><br /></br> <input
				type="text" id="pass2" placeholder="COST" name="cost"><br /></br>
			<input type="submit" value="ADD" id="reg">


		</form>



	</div>
	<div class="add">

		<h1>DELETE BOOK</h1>
		<form method="post" action="AdminDelete">
			<input type="text" id="bid" name="bookid" placeholder="BOOKID"
				REQUIRED><br /></br> <input type="text" id="name" name="title"
				placeholder="title" REQUIRED><br /></br> <input type="submit"
				value="DELETE" id="reg">
		</form>



	</div>
	<div class="add">

		<h1>ALL BOOKs</h1>
		<form method="get" action="adminview.jsp">
			<select class="option" name="opt">
				<option value="old">old</option>
				<option value="new">new</option>
				<option value="all">all</option>
				<option value="rent">rent</option>
				<option value="sold">sold</option>
			</select>
			<input type="submit" value="Show" id="reg">
		</form>



	</div>
	<footer>
		<section>
			<img src="/bookstore/images/service.png" class="service" />
			<p>Happy to help 24X7, call us on 8882082333,8743937887</p>
		</section>
		<section>
			<h3>connect with us!</h3>
			<ul class="social">
				<li><a href="https://www.facebook.com/"><img
						src="/bookstore/images/facebook.jpg" /></a></li>
				<li><a href="https://plus.google.com/"><img
						src="/bookstore/images/googleplus.jpg" /></a></li>
				<li><a href="https://twitter.com"><img
						src="/bookstore/images/tweeter1.jpg" /></a></li>
			</ul>
		</section>
		<section>
			<h3>
				100% Assurance And Promise
				</h3>
				<p>we provide 100% assurance. If you have any issue, your money
					is immediately refunded. Sit back and enjoy your shopping.</p>
		</section>
	</footer>
	<footer class="hello">
		<p>@Copyright Bcart 2015.</p>
	</footer>


</body>
</html>