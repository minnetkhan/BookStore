<%@page import="java.sql.Connection"%>
<%@ page import="com.mysql.jdbc.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="connection.ConnManager"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Bookstore-HomePage</title>
<link rel="stylesheet" href="blueberry.css" />
<script src="jquery.min.js"></script>
<script src="jquery.blueberry.js"></script>
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="dropdown.css" rel="stylesheet" />
<script>
	$(window).load(function() {
		$('.blueberry').blueberry();
	});
</script>
<style type="text/css">
body {
	padding-top: 20px;
	background: #DBDBFF;
	font: 14px/20px Arial, San-Serif;
	color: #555;
	margin: 0;
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
	padding-top: 5px;
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

a {
	color: #FFF;
	text-decoration: none;
	font-weight: gold;
}

a:hover {
	color: #FFF;
	text-decoration: underline;
}

img {
	text-align: center;
	max-width: 30%;
	max-height: 35%;
}

#doc {
	padding-top: 50px;
	margin: 40px 0;
	width: 95%;
	height: 35%;
}

#doc a {
	color: blue;
}

section {
	width: 29%;
	float: left;
	margin: 2% 2%;
	text-align: center;
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

.A img {
	width: 100%;
	height: 60%;
}

.class-responsive {
	height: 500%;
	padding-top: 30px;
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
				<input type="search" id="search" placeholder="Search..." /> <select
					class="option">
					<option value="author">author</option>
					<option value="title">title</option>
					<option value="genre">Genre</option>

				</select>
				<button class="icon">
					<i class="fa fa-search"></i>
				</button>
			</div>
		</section>
		<nav>
			<section class="navlist">
				<ul class="drop1">
					<li>Contact</li>



					<%!String email = null, name = null;%>
					<%
						if (session.getAttribute("email") != null) {
							email = (String) session.getAttribute("email");
							name = (String) session.getAttribute("name");
					%>


					<li><%=name%>
						<ul class="drop2">
							<li><a href="signout.jsp">sign out</a></li>
						</ul></li>
					<%
						} //session if close online 226

						else {
					%>





					<li>User
						<ul class="drop2">
							<li><a href="signup.html">sign up</a></li>
							<li><a href="login.jsp">sign in</a></li>
						</ul>
					</li>

					<%
						} // close of else on line 241
					%>
					<li>About</li>
					<li><a href="homepage.jsp">Home</a></li>
				</ul>
			</section>
		</nav>
	</header>

	<%!public static Connection conn = ConnManager.getInstance().getConnection();%>


	<h1 align="center">CART</h1>
	<div class="table-responsive" id="1">
		
		<h1 align="center">Transaction</h1>

			<%
				String email,sql;
				email = (String) session.getAttribute("email");
				sql = "SELECT * FROM bookstore.userpurchased where email = '" + email + "' ";
				PreparedStatement pstmt = null;
				int i = 0;
				try {
					Class.forName("com.mysql.jdbc.Driver");

					pstmt = (PreparedStatement) conn.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					rs.getMetaData();
					while (rs.next()) {
						
			%>

			<tr>
				<td><%=str7%></td>
				<td><%=str1%></td>
				<td><%=str3%></td>
				<td><%=str4%></td>
				<td><%=str5%></td>
				<td><%=str6%></td>
				<td><h3>
						<a href="buy?cartid=<%=str7%>&quantity=<%=str5%>&price=<%=str4%>"> BUY </a>
					</h3></td>
			</tr>
			<%
				i++;
					} //while
				} //try
				catch (ClassNotFoundException e) {
					System.out.println("cartview.jsp in catch1 ");
					e.printStackTrace();
				} catch (Exception e) {
					System.out.println("cartview.jsp in catch2 ");
					e.printStackTrace();
				} finally {
					pstmt.close();
					ConnManager.getInstance().close();
				}
			%>

		</table>
	</div>

	<footer>
		<section class="B">
			<img src="/bookstore/images/service.png" class="service" />
			<p>Happy to help 24X7, call us on 8882082333,</p>
		</section>
		<section class="B">
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
		<section class="B">
			<h3>100% Assurance and Promise</h3>
			<p>we provide 100% assurance. If you have any issue, your money
				is immediately refunded. Sit back and enjoy your shopping.</p>
		</section>
	</footer>
	<footer class="hello">
		<p>@Copyright Bcart 2015.</p>
	</footer>
</body>
</html>