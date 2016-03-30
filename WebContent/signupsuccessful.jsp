<%@ page import="connection.ConnManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page import="com.mysql.jdbc.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection, java.io.IOException,java.io.PrintWriter, java.sql.Connection,java.sql.ResultSet,javax.servlet.ServletException,
 javax.servlet.annotation.WebServlet, javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse"%>

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



					<c:choose>
						<c:when test="${sessionScope.email != null && sessionScope.name != null}" >
							<c:set var="email" value="email" />
							<c:set var="name" value="name" />
							<li><c:out value="${name}"></c:out>
								<ul class="drop2">
									<li><a href="signout.jsp">sign out</a></li>
								</ul>
							</li>
						</c:when>
						<c:otherwise>
							<li>User
								<ul class="drop2">
									<li><a href="signup.html">sign up</a></li>
									<li><a href="login.html">sign in</a></li>
								</ul>
							</li>
						</c:otherwise>	
					</c:choose>

					<li>About</li>
					<li ><a href="homepage.jsp" style="color:#000000">Home</a></li>


				</ul>
			</section>
		</nav>
	</header>















	<%!//public static Connection conn = ConnManager.getInstance().getConnection();%>
	<jsp:useBean id="conn" class="connection.ConnManager" scope="page"/>




	<%
		response.setContentType("TEXT/HTML");
		String search = null, sql, by = null,title = null,id=null,condition=null;
		String str[];

		str = new String[10];
		
		if (new String("author").equals(request.getParameter("searchby"))) {
			by = "author";
			search = request.getParameter("search");
			search = "%"+search+"%";
		} else if (new String("title").equals(request.getParameter("searchby"))) {
			by = "title";
			search = request.getParameter("search");
			search = "%"+search+"%";
		} else if (new String("genre").equals(request.getParameter("searchby"))) {
			by = "genre";
			search = request.getParameter("search");
			search = "%"+search+"%";
		} else {
			by = "genre";
			search = request.getParameter("genre");
			System.out.println(search);
			search = "%"+search+"%";
		}

		if (by != "author")
			sql = "select * from books where" + " " + by + " " + " like ?";
		else																																							
			sql = "select * from books inner join author_books on author_books.bookid = books.bookid inner join author on author_books.authorid = author.authorid where author.authorname like ?";

		try (PreparedStatement pstmt = (PreparedStatement) conn.prepareStatement(sql);) {
			Class.forName("com.mysql.jdbc.Driver");

			if (search != null) {
				pstmt.setString(1, search);
			}

			ResultSet rs = pstmt.executeQuery();
			rs.getMetaData();
			int i = 0;
			while (rs.next()) {
				
				title = rs.getString("books.url");
				id = rs.getString("bookid");
				condition = rs.getString("condn");
				out.println("<a href='book.jsp?id="+id+"&cond="+condition+"'>"+"<img src=" + title + " height='500' width='400'/>" );
				title = rs.getString("books.title");
				out.println("<h1> Title : " + title + "</h1>" );
				title = rs.getString("books.condn");
				out.println("<h1> Condition : " + title + "</h1>" );
				
				i++;
			}

		} catch (ClassNotFoundException e) {
			System.out.println("Searchbook.java in catch1 ");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("Searchbook.java in catch2 ");
			e.printStackTrace();
		} finally {
			ConnManager.getInstance().close();
		}
	%>


















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
			<h3>100% Assurance And promise</h3>
			<p>we provide 100% assurance. If you have any issue, your money
				is immediately refunded. Sit back and enjoy your shopping.</p>
		</section>
	</footer>
	<footer class="hello">
		<p>@Copyright Bcart 2015.</p>
	</footer>
</body>
</html>