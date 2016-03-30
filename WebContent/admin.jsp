<!doctype html>
<html>
   <head>
     <title>Online Bookstore-Homepage</title> 
     <meta name="viewport" content="width=divice-width,initial-scale="1.0">
	 <link rel="stylesheet" href="blueberry.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
    <script src="jquery.blueberry.js"></script>
	
	 
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"/>
	 <link href="dropdown.css" rel="stylesheet"/>
	 
  <script>
     $(window).load(function(){
	  $('.blueberry').blueberry();
	  });
  </script>
  <style type="text/css">
	     body
		 {
		  background:#DBDBFF;
	      font:14px/20px ;
	      color:#555;
	      margin:0;
		  font-family: 'Lucida Grande', 'Helvetica Neue', Helvetica, Arial, sans-serif;
		  text-align: center;
		 }
		 h2
		 {
		  text-decoration:underline;
		  line-height:280%;
		  padding:2%;
		 }
		
		
		  img
		  {
		   text-align:center;
		   max-width:100%;
		    height:auto;
        	 width:auto;
		   
		  }
		  a
		  {
		   color:green;
		   text-decoration:none;
		   font-weight:gold;
		  }
        a:hover
	    {
	     color:#FFF;
	     text-decoration:underline;
	    }
	header
	{
	  background:#405580;
	  width:100%;
	  height:85px;
	  position:fixed;
	  top:0;
	  left:0;
	  z-index:100;//stays above
	  opacity:0.90;
	}
	#logo
	{
	  margin:1px;
	  float:left;
	  width:350px;
	  height:50px;
	  background:url(logo2.png) no-repeat center;
	  padding-bottom:2px;
	}
	 ul
    {
      list-style:none;
    }
	nav ul li
	{
	    float:right;
	    padding:10px;
	    display:inline-block;
		padding-top:10px;
	  
	} 
	
	.navlist{
           width:29%;
		   float:left;
		   margin:2% 2%;
		   text-align:center;
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
    section{
           width:29%;
		   float:left;
		   margin:2% 2%;
		   text-align:center;
         }
		 section.A
		 {
		   width:20%;
		   float:left;
		    margin:1%;
		  
		   
		 }
		 section.A h2
		 {
		  text-align:center;
		  color:#FF8D70;
		 }
		 section.A ul li
		 {
		  padding-left:0;
		  
		 }
		 section.A ul li a
		 {
		   color:#0099CC;
		 }
		 
  .clear
         {
		   clear:both;
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
		#search{
	           width:200px;
			   height:25px;
			   background:#E6E6E6;
			   color:red;
	       }
   .option
    {
	  height:25px;
	}
	.A ul li
	  {
	    font-size:20px;
		padding-top:10px;
		float:left;
	  }
      	
	
	 
		
	 </style>
  </head>
 <body>
    <header>
	  
	  <section  class="head">
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
                 <button class="icon" onclick="login.html"><i class="fa fa-search"></i></button>
			 </form>
          </div>
          </section>
			<nav>
			  <section class="navlist">
			  <ul class="drop1">
			     <li><a href="addbook.jsp">BOOK</a> 
				   
				 </li>
				   
				
				 <li><a href="user.html">user</a></li>
				 <li>sign out</li>
				<li>About</li>
			     <li><a href="#">Home</a></li>
                
                
  
  
              </ul>
			  </section>>
		 </nav>
	</header>
	<section class="A">
	     <h2>Books</h2>
		 <ul>
		    
		    
		    <li><a href="bookslist.jsp?id=1"><h3>
					Engineering
					<h3></a></li>
		<li><a href="bookslist.jsp?id=2"><h3>Goverment Services</h3></a></li>
		<li><a href="bookslist.jsp?id=3"><h3>
					Banking and Finance
					<h3></a></li>
		<li><a href="bookslist.jsp?id=4"><h3>Medical</h3></a></li>
		<li><a href="bookslist.jsp?id=5"><h3>Literature And
					fiction</h3></a></li>
		<li><a href="bookslist.jsp?id=6"><h3>Biographies and
					auto biographies</h3></a></li>
		<li><a href="bookslist.jsp?id=7"><h3>Children and Teen</h3></a></li>
		<li><a href="bookslist.jsp?id=8"><h3>
					Religion And Spirituality
					<h3></a></li>
		<li><a href="bookslist.jsp?id=9"><h3>sports and
					Exercises</h3></a></li>
		<li><a href="bookslist.jsp?id=10"><h3>Others</h3></a></li>
			
		 </ul>
	</section>
	<div id="doc"><!---for image slider--->
	    <div id="content">
		    <div class="blueberry">
			  <ul class="slides">
			       <li><img src="/bookstore/images/cover1.png"/></li>
				   
				   <li><img src="/bookstore/images/cover3.jpg"/></li>
				   <li><img src="/bookstore/images/cover4.jpg"/></li>
				   
				   <li><img src="/bookstore/images/cover6.jpg"/></li>
			  </ul>
			</div>
      </div>
	</div>
	<div class="infomation">
	
	   <h4>Buy Entrance Exam Preparation Books </h4>
	    <p>
	      Explore through our broad category of books for competitive entrance exam that will help you in studying complicated subject more efficiently, these books are surely going to enrich your intellect for examination. Candidates preparing for post-graduate studies and those applying for jobs, you must go through our entire category and get the one you exactly need.
		  We have books for popular Indian exams like CET, GATE, NDA, IIT JEE and many more.<br/>
	   
	      To ensure that you are thoroughly prepared for an entrance examination, these books are the best way.  you will have access to the right kind of books for competitive exam you are aspiring for. Our range is inclusive of updated books with the latest course material that appropriately prepare you for the entrance examinations.
        </p>
	   
	   <h4>Explore Competitive Exams Books Online at Best Price </h4>
	  
	    <p>
	      Our collection has the most recent and precise information that will prove helpful to you in preparation. So during your exams, shop for competitive books on Paytm. You would no doubt explore books that would significantly prepare you for questions about reasoning and more. From entrance exams for Engineering, Government Services, Banking & Finance, Medical/ NEE, International Exams, Certification Exam, MBA, 
		  Teacher Training Exam to General studies, Scholarship Exams and more, you will find everything at Paytm.
	    </p>
		<h4>fiction</h4>
		<p>f the book-bug has bitten you really hard, Bcart is here to help you with the most popular fictions. We also have a wide variety of fictional books online including, Poetry, Drama, Classics, Crime, Suspense, Thriller, Famous Series and many more.
		</p>
		<h4>Biographies & Auto Biographies</h4>
		<p>You can choose from the best-selling series, where innumerable books are divided under categories like Biographies & Auto Biographies. Take a quick peek into our web store and browse by genres; Crime & Criminal, Military, History, Religious, Philosopher, narrowing down your choices, thereby making it convenient for you. Bring home biographies and true accounts that will reveal hidden gems and keep you captivated for the next several days.
       </p>
	   <h4>Non-Fiction</h4>
	   <p>Improve your knowledge span and broaden your vocabulary with our Non-Fictional books. Whether you are looking to buy a book on Families & Relationship, Philosophy, History & Politics or some Erotica, we have it all here. Indulge yourself with family favorites or instill the love for books at an early stage with our section of non-fictional books.</p>
	    <h4>Others</h4>
		<p> Being, the biggest online bookstore in India, Paytm caters to the needs of people from all age groups making available, Encyclopedias, Story Books for children, Study Guides for medical, engineering & law students, books on Computing & Digital Media and many more.
       </p>
	   <h4>So now refresh your skills and solve questions within no time. Enhance your aptitude with these constructive competitive books today!</h4>
	 
	</div>
	<footer>
	    <section>
		   <img src="/bookstore/images/service.png" class="service"/>
		   <p>Happy to help 24X7, call us on 8882082333,8743937887</p>
		</section>
	    <section>
		   <h3>connect with us!</h3>
		    <ul class ="social">
			  <li><a href="https://www.facebook.com/"><img src="/bookstore/images/facebook.jpg"/></a></li>
			  <li><a href="https://plus.google.com/"><img src="/bookstore/images/googleplus.jpg"/></a></li>
			  <li><a href="https://twitter.com"><img src="/bookstore/images/tweeter1.jpg"/></a></li>
			</ul>
		</section>
		<section>
		   <h3>100% Assurance & promise</p>
		   <p> we provide 100% assurance. If you have any issue, your money is immediately refunded. Sit back and enjoy your shopping.
		   </p>
		</section>
	</footer>
	<footer class="hello">
	   <p>@Copyright Bcart 2015.</p>
	</footer>
	
	
 </body>
 </html>