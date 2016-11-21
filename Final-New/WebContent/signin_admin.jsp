<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Sign In</title>
		
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
		
		<link rel="stylesheet" href="css/demo.css">
		<link rel="stylesheet" href="css/font-awesome-sky.css">
		<link rel="stylesheet" href="css/sky-forms.css">
		
		<script src="js/jquery.min-sky.js"></script>
		<script src="js/jquery.form.min-sky.js"></script>
		<script src="js/jquery.validate.min-sky.js"></script>
		<script src="js/jquery.modal-sky.js"></script>
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
		
	</head>
	
<body class="bg-cyan">
<%
String lgUser=(String)session.getAttribute("lgUser");
if(lgUser!=null)
{
	String contextPath=(String) session.getServletContext().getContextPath();
	response.sendRedirect(contextPath+"/index.jsp");
}
%>
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
        </div>
        <!-- /.container-fluid -->
    </nav>
		<div class="body body-s">		
			<form action="RedirectAdmin" id="sky-form" class="sky-form" method="post">
				<header>Sign In Form</header>
				
				<fieldset>					
					<section>
						<div class="row">
							<label class="label col col-4">Username:</label>
							<div class="col col-8">
								<label class="input">
									<i class="icon-append fa fa-user"></i>
									<input type="user" name="user">
								</label>
							</div>
						</div>
					</section>
					
					<section>
						<div class="row">
							<label class="label col col-4">Password:</label>
							<div class="col col-8">
								<label class="input">
									<i class="icon-append fa fa-lock"></i>
									<input type="password" name="password">
								</label>
							</div>
						</div>
					</section>
					
					<section>
						<div class="row">
							<div class="col col-4"></div>
						</div>
					</section>
				</fieldset>
				<footer>
					<button type="submit" class="button">Sign In</button>
				</footer>
			</form>			
		</div>
		
		
		<script type="text/javascript">
			$(function()
			{
				// Validation for login form
				$("#sky-form").validate(
				{					
					// Rules for form validation
					rules:
					{
						user:
						{
							required: true,
							user: true
						},
						password:
						{
							required: true,
							minlength: 3,
							maxlength: 20
						}
					},
										
					// Messages for form validation
					messages:
					{
						user:
						{
							required: 'Please enter your username',
						},
						password:
						{
							required: 'Please enter your password'
						}
					},					
					
					// Do not change code below
					errorPlacement: function(error, element)
					{
						error.insertAfter(element.parent());
					}
				});
				
				
				// Validation for recovery form
				$("#sky-form2").validate(
				{					
					// Rules for form validation
					rules:
					{
						email:
						{
							required: true,
							email: true
						}
					},
										
					// Messages for form validation
					messages:
					{
						email:
						{
							required: 'Please enter your username',
						}
					},
										
					// Ajax form submition					
					submitHandler: function(form)
					{
						$(form).ajaxSubmit(
						{
							beforeSend: function()
							{
								$('#sky-form button[type="submit"]').attr('disabled', true);
							},
							success: function()
							{
								$("#sky-form2").addClass('submited');
							}
						});
					},				
					
					// Do not change code below
					errorPlacement: function(error, element)
					{
						error.insertAfter(element.parent());
					}
				});
			});			
		</script>
	</body>
</html>