<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Sign Up</title>
		
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
		
	</head>
	
	<body class="bg-cyan">
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
			<form action="Register" id="sky-form" class="sky-form" method="post">
				<header>Sign Up Form</header>
				
				<fieldset>					
					<section>
						<label class="input">
							<i class="icon-append fa fa-user"></i>
							<input type="text" name="username" placeholder="Username">
							<b class="tooltip tooltip-bottom-right">Needed to enter the website</b>
						</label>
					</section>
					
					<section>
						<label class="input">
							<i class="icon-append fa fa-envelope-o"></i>
							<input type="email" name="email" placeholder="Email address">
							<b class="tooltip tooltip-bottom-right">Needed to verify your account</b>
						</label>
					</section>
					
					<section>
						<label class="input">
							<i class="icon-append fa fa-lock"></i>
							<input type="password" name="password" placeholder="Password" id="password">
							<b class="tooltip tooltip-bottom-right">Don't forget your password</b>
						</label>
					</section>
					
					<section>
						<label class="input">
							<i class="icon-append fa fa-lock"></i>
							<input type="password" name="passwordConfirm" placeholder="Confirm password">
							<b class="tooltip tooltip-bottom-right">Don't forget your password</b>
						</label>
					</section>
				</fieldset>
					
				<fieldset>
					<div class="row">
						<section class="col col-6">
							<label class="input">
								<input type="text" name="firstname" placeholder="First name">
							</label>
						</section>
						<section class="col col-6">
							<label class="input">
								<input type="text" name="lastname" placeholder="Last name">
							</label>
						</section>
					</div>
					
					<section>
							<section>
								<label class="label">Select single date</label>	
								<label class="input">
									<i class="icon-append fa fa-calendar"></i>
									<input type="text" name="date" id="date" placeholder="Date of Birth">
								</label>
							</section>
					</section>
				</fieldset>
				<footer>
					<button type="submit" class="button">Submit</button>
					<a href="signin_user.jsp" class="button">Sign In</a>
				</footer>
			</form>			
		</div>
		
		<script type="text/javascript">
			$(function()
			{
				// Validation		
				$("#sky-form").validate(
				{					
					// Rules for form validation
					rules:
					{
						username:
						{
							required: true
						},
						email:
						{
							required: true,
							email: true
						},
						password:
						{
							required: true,
							minlength: 3,
							maxlength: 20
						},
						passwordConfirm:
						{
							required: true,
							minlength: 3,
							maxlength: 20,
							equalTo: '#password'
						},
						firstname:
						{
							required: true
						},
						lastname:
						{
							required: true
						},
						date:
						{
							required: true
						},
						terms:
						{
							required: true
						}
					},
					
					// Messages for form validation
					messages:
					{
						username:
						{
							required: 'Please enter your username'
						},
						email:
						{
							required: 'Please enter your email address',
							email: 'Please enter a VALID email address'
						},
						password:
						{
							required: 'Please enter your password'
						},
						passwordConfirm:
						{
							required: 'Please enter your password one more time',
							equalTo: 'Please enter the same password as above'
						},
						firstname:
						{
							required: 'Please select your first name'
						},
						lastname:
						{
							required: 'Please select your last name'
						},
						date:
						{
							required: 'Please select your birthday'
						},
					},					
					
					// Do not change code below
					errorPlacement: function(error, element)
					{
						error.insertAfter(element.parent());
					}
				});
			});			
		</script>

		<!-- Date Picker -->
		<script type="text/javascript">
			$(function()
			{
				// Regular datepicker
				$('#date').datepicker({
					dateFormat: 'dd-mm-yy',
					prevText: '<i class="fa fa-chevron-left"></i>',
					nextText: '<i class="fa fa-chevron-right"></i>'
				});
				
				// Date range
				$('#start').datepicker({
					dateFormat: 'dd-mm-yy',
					prevText: '<i class="fa fa-chevron-left"></i>',
					nextText: '<i class="fa fa-chevron-right"></i>',
					onSelect: function( selectedDate )
					{
						$('#finish').datepicker('option', 'minDate', selectedDate);
					}
				});
				$('#finish').datepicker({
					dateFormat: 'dd-mm-yy',
					prevText: '<i class="fa fa-chevron-left"></i>',
					nextText: '<i class="fa fa-chevron-right"></i>',
					onSelect: function( selectedDate )
					{
						$('#start').datepicker('option', 'maxDate', selectedDate);
					}
				});
				
				// Inline datepicker
				$('#inline').datepicker({
					dateFormat: 'dd-mm-yy',
					prevText: '<i class="fa fa-chevron-left"></i>',
					nextText: '<i class="fa fa-chevron-right"></i>'
				});
				
				// Inline date range
				$('#inline-start').datepicker({
					dateFormat: 'dd-mm-yy',
					prevText: '<i class="fa fa-chevron-left"></i>',
					nextText: '<i class="fa fa-chevron-right"></i>',
					onSelect: function( selectedDate )
					{
						$('#inline-finish').datepicker('option', 'minDate', selectedDate);
					}
				});
				$('#inline-finish').datepicker({
					dateFormat: 'dd-mm-yy',
					prevText: '<i class="fa fa-chevron-left"></i>',
					nextText: '<i class="fa fa-chevron-right"></i>',
					onSelect: function( selectedDate )
					{
						$('#inline-start').datepicker('option', 'maxDate', selectedDate);
					}
				});
			});			
		</script>

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