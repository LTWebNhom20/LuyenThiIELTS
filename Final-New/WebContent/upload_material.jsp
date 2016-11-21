<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Upload</title>

   <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="css/sky-tabs.css">
    <link rel="stylesheet" href="css/sky-forms.css">
    <link rel="stylesheet" href="css/demo.css">
    <link rel="stylesheet" href="css/font-awesome-sky.css">

    <!-- Custom CSS -->
    <link href="css/agency.css" rel="stylesheet">
    <link rel="stylesheet" href="css/sky-tabs.css">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">    
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="font-awesome/css/font-awesome-animation.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    
    <script src="js/jquery.min-sky.js"></script>
    <script src="js/jquery.validate.min-sky.js"></script>
    <script src="js/jquery-ui.min-sky.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
</head>

<body id="page-top" class="bg-upload" class="index">
<%
String UserName=(String) session.getAttribute("lgUser");
String role=(String) session.getAttribute("Role");
if(UserName==null)
{
	String contextPath=(String) session.getServletContext().getContextPath();
	response.sendRedirect(contextPath+"/index.jsp");
	return;
}
else
{
	if(role!="2")
	{
		String contextPath=(String) session.getServletContext().getContextPath();
		response.sendRedirect(contextPath+"/index.jsp");
		return;
	}
}
%>
    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" class="navbar-design">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="index.jsp">IELTS ONLINE</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="admin.jsp">Admin</a>
                    </li>

                    <li>
                        <a href="file_management.jsp">File Management</a>
                    </li>

                    <li>
                        <a href="#page-top">Upload</a>
                    </li>

                    <li>
                        <a href="/Final-New/logOut" data-toggle="modal">Sign Out</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
<section>
        <div class="container">
            <section>
                        <!-- tabs -->
                        <div class="sky-tabs sky-tabs-pos-left sky-tabs-anim-flip sky-tabs-response-to-icons">
                            <input type="radio" name="sky-tabs" checked id="sky-tab1" class="sky-tab-content-1">
                            <label for="sky-tab1"><span><span><i class="fa fa-star-o"></i>Full Test</span></span></label>
                            
                            <input type="radio" name="sky-tabs" id="sky-tab2" class="sky-tab-content-2">
                            <label for="sky-tab2"><span><span><i class="fa fa-headphones"></i>Listening test</span></span></label>
                            
                            <input type="radio" name="sky-tabs" id="sky-tab3" class="sky-tab-content-3">
                            <label for="sky-tab3"><span><span><i class="fa fa-eye"></i>Reading Test</span></span></label>
                            <input type="radio" name="sky-tabs" id="sky-tab4" class="sky-tab-content-4">
                            <label for="sky-tab4"><span><span><i class="fa fa-book"></i>Upload Library</span></span></label>

                            <input type="radio" name="sky-tabs" id="sky-tab5" class="sky-tab-content-5">
                            <label for="sky-tab5"><span><span><i class="fa fa-phone"></i>Contact</span></span></label>
                            
                            <ul>
                                <li class="sky-tab-content-1">
                                    <form action="Upload" id="sky-form" class="sky-form" method="post" enctype="multipart/form-data" >
                                            <header>Upload Full Test</header>                                            
                                            <fieldset>
                                            <center>
   <table border="2">
       <tr>
               <td align="center"><b>Multipale file Uploader</td>
           </tr>
       <tr>
               <td>
                       Specify file:<input type="file" name="file" multiple/>
                   <td>
           </tr>
           <tr>
              <td>
                  </td>
        <tr>
                   <td>
                      Folder name:<input name="folder" type="text" placeholder="New folder...">
                      <input type="hidden" name="upload" value="full"/>
                   </td>
                 </tr>
                 <tr>
                    <td align="center">
               
                        </td>
                 </tr>
    </table>
        <center>              
                                            </fieldset>
                                            <footer>
                                            	<input class="button" type="submit" name="Submit" value="Submit files"/>
                                            </footer>
                                    </form>         
                                </li>
                                
                                <li class="sky-tab-content-2">
                                    <div class="typography">
                                        <form action="Upload" id="sky-form" class="sky-form" method="post" enctype="multipart/form-data" >
                                            <header>Upload Listening Test</header>                                            
                                            <fieldset>
                                            <center>
   <table border="2">
       <tr>
               <td align="center"><b>Multipale file Uploader</td>
           </tr>
       <tr>
               <td>
                       Specify file:<input type="file" name="file" multiple/>
                   <td>
           </tr>
           <tr>
              <td>
                  </td>
        <tr>
                   <td>
                      Folder name:<input name="folder" type="text" placeholder="New folder...">
                      <input type="hidden" name="upload" value="listen"/>
                   </td>
                 </tr>
                 <tr>
                    <td align="center">
               
                        </td>
                 </tr>
    </table>
        <center>              
                                            </fieldset>
                                            <footer>
                                            	<input class="button" type="submit" name="Submit" value="Submit files"/>
                                            </footer>
                                    </form>           
                                    </div>       
                                </li>
                                
                                <li class="sky-tab-content-3">
                                    <div class="typography">
                                        <form action="Upload" id="sky-form" class="sky-form" method="post" enctype="multipart/form-data" >
                                            <header>Upload Reading Test</header>                                            
                                            <fieldset>
                                            <center>
   <table border="2">
       <tr>
               <td align="center"><b>Multipale file Uploader</td>
           </tr>
       <tr>
               <td>
                       Specify file:<input type="file" name="file" multiple/>
                   <td>
           </tr>
           <tr>
              <td>
                  </td>
        <tr>
                   <td>
                      Folder name:<input name="folder" type="text" placeholder="New folder...">
                      <input type="hidden" name="upload" value="Reading"/>
                   </td>
                 </tr>
                 <tr>
                    <td align="center">
               
                        </td>
                 </tr>
    </table>
        <center>              
                                            </fieldset>
                                            <footer>
                                            	<input class="button" type="submit" name="Submit" value="Submit files"/>
                                            </footer>
                                    </form>           
                                    </div>
                                </li>
                                <li class="sky-tab-content-4">
                                    <div class="typography">
                                        <form action="Upload" id="sky-form" class="sky-form" method="post" enctype="multipart/form-data" >
                                            <header>Upload Listening Test</header>                                            
                                            <fieldset>
                                            <center>
   <table border="2">
       <tr>
               <td align="center"><b>Multipale file Uploader</td>
           </tr>
       <tr>
               <td>
                       Specify file:<input type="file" name="file" multiple/>
                   <td>
           </tr>
           <tr>
              <td>
                  </td>
        <tr>
                   <td>
                      Folder name:<input name="folder" type="text" placeholder="New folder...">
                      <input type="hidden" name="upload" value="listen"/>
                   </td>
                 </tr>
                 <tr>
                    <td align="center">
               
                        </td>
                 </tr>
    </table>
        <center>              
                                            </fieldset>
                                            <footer>
                                            	<input class="button" type="submit" name="Submit" value="Submit files"/>
                                            </footer>
                                    </form>           
                                    </div>       
                                </li>
                                <li class="sky-tab-content-5">
                                    <div class="row text-center">
                                    <h1>Contact us on:</h1>
                                        <div class="col-md-4">
                                            <span class="fa-stack fa-4x">
                                                <i class="fa fa-mobile fa-2x faa-shake animated"></i>
                                            </span>
                                            <h4 class="service-heading">Phone Number</h4>
                                            <p class="text-muted">Call us if you get any problem</p>
                                            <p class="text-contact">01887507707</p>
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
                                </li>                   
                            </ul>
                        </div>
                        <!--/ tabs -->
            </section>
        </div>
</section>

<footer>
        <p align="center">Copyright &copy; IELTS ONLINE 2016</p>
</footer>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/agency.js"></script>

</body>

</html>
