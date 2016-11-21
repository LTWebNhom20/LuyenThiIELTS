<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>IELTS ONLINE</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/agency.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="font-awesome/css/font-awesome-animation.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">
    <%
    String lgUser=(String)session.getAttribute("lgUser");
    String role=(String) session.getAttribute("Role");
    %>
    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" class="navbar-design">
        <div class="col-md-11">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">IELTS ONLINE</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <%
                    if(lgUser==null)
                    {
                        out.println("<li class=\"hidden\">");
                            out.println("<a href=\"#page-top\"></a>");
                        out.println("</li>");
                        out.println("<li>");
                            out.println("<a class=\"page-scroll\" href=\"#services\">Services</a>");
                        out.println("</li>");
                        out.println("<li>");
                            out.println("<a class=\"page-scroll\" href=\"#contact\">Contact</a>");
                        out.println("</li>");
                        out.println("<li>");
                            out.println("<a href=\"signin_user.jsp\">Sign In</a>");
                        out.println("</li>");
                        out.println("<li>");
                            out.println("<a href=\"signup_user.jsp\">Sign Up</a>");
                        out.println("</li>");
                    }
                    else
                    {
                    	if(role!="2")
                    	{
                    		out.println("<li class=\"hidden\">");
                            out.println("<a href=\"#page-top\"></a>");
	                        out.println("</li>");
	                        out.println("<li>");
	                            out.println("<a href=\"user.jsp\">My Account</a>");
	                        out.println("</li>");
	                        out.println("<li>");
	                            out.println("<a class=\"page-scroll\" href=\"#services\">Services</a>");
	                        out.println("</li>");
	                       
	                        out.println("<li>");
	                            out.println("<a class=\"page-scroll\" href=\"#contact\">Contact</a>");
	                        out.println("</li>");
	                        out.println("<li>");
	                            out.println("<a href=\"logOut\">Sign Out</a>");
	                        out.println("</li>");
                    	}
                    	else
                    	{
                    		out.println("<li class=\"hidden\">");
                            out.println("<a href=\"#page-top\"></a>");
	                        out.println("</li>");
	                        out.println("<li>");
	                            out.println("<a href=\"admin.jsp\">Admin area</a>");
	                        out.println("</li>");
	                        out.println("<li>");
	                            out.println("<a class=\"page-scroll\" href=\"#services\">Services</a>");
	                        out.println("</li>");
	                     
	                        out.println("<li>");
	                            out.println("<a class=\"page-scroll\" href=\"#contact\">Contact</a>");
	                        out.println("</li>");
	                        out.println("<li>");
	                            out.println("<a href=\"logOut\">Sign Out</a>");
	                        out.println("</li>");
                    	}
                    }
                    %>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header1>
    <img class="fill" src="img/header1.png" alt="Home" class="img-reponsive">
    </header1>
    <header>

<!-- Carousel -->
    <div id="myCarousel" class="carousel slide">
      <ol class="carousel-indicators">
          <li data-target = "#myCarousel" data-slide-to ="active"></li>
          <li data-target = "#myCarousel" data-slide-to ="1"></li>
      </ol>
      <div class="carousel-inner">
    
          <div class="item active">
             <img class="fill" src="img/e1.png" alt="Home" class="img-reponsive">
                <div class="carousel-caption"></div>
          </div>

      
          <div class="item">
             <img src="img/e2.jpg" alt="Home" class="img-reponsive">
          </div>
		<div class="item">
             <img src="img/e3.jpg" alt="Home" class="img-reponsive">
          </div>
          <div class="item">
             <img src="img/e4.jpg" alt="Home" class="img-reponsive">
          </div>
          <div class="item">
             <img src="img/e5.jpg" alt="Home" class="img-reponsive">
          </div>
          <a class="carousel-control left" href="#myCarousel" data-slide = "prev">
            <span class = "icon-prev"></span>
          </a>

          <a class="carousel-control right" href="#myCarousel" data-slide = "next">
            <span class = "icon-next"></span>
          </a>
      </div>
    </div>
    </header>

    <!-- Services Section -->
    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Services</h2>
                    <h3 class="section-subheading text-muted">What We Can Do For You?</h3>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-briefcase fa-2x faa-ring animated"></i>
                    </span>
                    <h4 class="service-heading">Storage</h4>
                    <p class="text-muted">Our website like a Portable Hard Drive which you can bring your exercise to everywhere you to do whenever you want.</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-pencil-square-o fa-2x faa-ring animated"></i>
                    </span>
                    <h4 class="service-heading">Practice</h4>
                    <p class="text-muted">With practice, you can do Toeic exams such as Listening Test, Reading Test, Full Test which are uploaded. Moreover, you can see your results.</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-headphones fa-2x faa-ring animated"></i>
                    </span>
                    <h4 class="service-heading">Online Support</h4>
                    <p class="text-muted">We have staffs trained very well. If you have any problem, you just need to send email to us. We will help you to solve the problem as fast as we can.</p>
                </div>
            </div>
        </div>
    </section>


<!-- Contact Section-->

    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Contact Us</h2>
                    <h3 class="section-subheading">On:</h3>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-mobile fa-2x faa-shake animated"></i>
                    </span>
                    <h4 class="service-heading">Phone Number</h4>
                    <p class="text-muted">Call us if you get any problem</p>
                    <p class="text-contact">01887-507-707</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-facebook-square fa-2x  faa-tada animated"></i>
                    </span>
                    <h4 class="service-heading">Facebook</h4>
                    <p class="text-muted">Follow us to get more news.</p>
                    <a href="https://www.facebook.com/groups/ieltsg20/" target="_blank" class="text-contact">Facebook</a>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-paper-plane-o fa-2x faa-vertical animated"></i>
                    </span>
                    <h4 class="service-heading">Mail</h4>
                    <p class="text-muted">Mail us if you get any problem</p>
                    <p class="text-contact">ieltsg20@gmail.com</p>
                </div>
            </div>
        </div>
    </section>

<footer>
        <p align="center">Copyright &copy; IELTS ONLINE G20 2016</p>
</footer>





    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/agency.js"></script>

</body>

</html>
