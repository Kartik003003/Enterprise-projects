<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link
	href="/bundles/styles?v=lPGPuSt_xKxNmptTCKJ8QNFrLXCkhCS7B-5FH-7RYpA1"
	rel="stylesheet">
<meta http-equiv="origin-trial"
	content="AymqwRC7u88Y4JPvfIF2F37QKylC04248hLCdJAsh8xgOfe/dVJPV3XS3wLFca1ZMVOtnBfVjaCMTVudWM//5g4AAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjk1MTY3OTk5LCJpc1RoaXJkUGFydHkiOnRydWV9">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body class="login-page"
	style="height: auto; box-sizing: border-box; min-height: 100%; padding: 2px;">
	<!-- Loading START -->
	<div id="divLoader" class="loader"
		style="z-index: 9999; display: none;">
		<img style="display: block; margin: auto" alt="progress"
			src="/Content/img/ajax-loader.gif">
	</div>
	<!-- Loading END -->

	<div class="login-box" style="align-items: center; text-align: center;">
		<div class="login-logo">
			<a href="#"><b>Academy</b></a>
			<h2>Login Credentials</h2>
			<h5>Email : new.@business.com</h5>
			<h5>Password : job</h5>
			<h5 style="background-color: rgb(143, 143, 31); color: aliceblue;">
				<b> Learn Everything on Real-Time Scenarios </b>
			</h5>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body"
			style="height: 20%; width: 50%; padding: 20px; border-radius: 10px; margin-left: 25%; background-color: rgba(33, 55, 75, 0.422);">
			<p class="login-box-msg">Sign in</p>
			<br>
			<form action="usercheck" enctype="multipart/form-data" id="frmLogin"
				method="post" novalidate="novalidate"
				style="display: flexbox; text-align: center;">
				<!-- Alert Box -->
				<div class="form-group">
					<div id="dvAlert" style="display: none;">
						<button type="button" class="close" onclick="closeAlert();">×</button>
						<span id="spMessage"></span>
					</div>
				</div>
				<!-- Alert Box -->
				<div class="form-group has-feedback">
					<input class="form-control" data-val="true"
						data-val-required="Please enter email or mobile no." id="UserName"
						name="UserName" placeholder="Email or Mobile No" type="text"
						value=""> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
					<span class="field-validation-valid text-danger text-left"
						data-valmsg-for="UserName" data-valmsg-replace="true"></span>
				</div>
				<br>
				<div class="form-group has-feedback">
					<input class="form-control" data-val="true"
						data-val-required="Please enter password." id="Password"
						name="Password" placeholder="Password" type="password" value="">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
					<span class="field-validation-valid text-danger text-left"
						data-valmsg-for="Password" data-valmsg-replace="true"></span>

				</div>
				<br>
				<div class="row">
					<div class="col-xs-6 m-t-xs">
						<label class="container1" for="RememberMe"> Remember Me <input
							data-val="true"
							data-val-required="The Remember me? field is required."
							id="RememberMe" name="RememberMe" type="checkbox" value="true"><input
							name="RememberMe" type="hidden" value="false"> <span
							class="checkmark"></span>
						</label>
					</div>
					<!-- /.col -->
					<div class="col-xs-6 text-right">
						<button type="submit" class="btn btn-primary btn-flat"
							id="btnLogin" onclick="Login();">Sign In</button>
					</div>
					<!-- /.col -->
				</div>
			</form>
			<div class="social-auth-links text-center">
				<p>- OR -</p>
				<a href="ForgotPassword"
					class="btn btn-block btn-facebook btn-flat text-center"> Forgot
					Password </a> <br> <a href="AdminLogin" class="text-center">Admin
					Login</a> <br>
				<br>

			</div>


		</div>
	</div>
	<br>
	<!-- Promotional Message -->
	<div>
		<div class="row m-l-md m-r-md">
			<div class="box box-solid bg-light-blue">
				<div class="box-body" style="text-align: center;">
					<p>Developed a clone by Kartikeya Singh Thakur</p>
					<p>
						contact details <a
							href="https://www.linkedin.com/in/kartikeya-singh-thakur-7523981b5official/">Linkedin
							Profile</a> <a href="http://kartikeyathakurofficial.dorik.io/">Portfolio
						</a>and <a
							href="https://docs.google.com/document/d/17HzRrb8r4MiplwJgFtVZT_sd1N-1D1bB/edit?usp=drive_link&ouid=116908711455321360599&rtpof=true&sd=true">resume</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- Promotional Message -->

	<script type="text/javascript">
		function validateLogin() {

			var errorMessage = "";
			var blnValid = true;

			if ($("#frmLogin").valid() == false) {
				showToaster("Please fill all the required field",
						ToasterType.ERROR);
				blnValid = false;
			}

			return blnValid;
		}

		function Login() {

			if (validateLogin()) {
				$
						.ajax({
							beforeSend : function(xhr) {
								$('#btnLogin')
										.html(
												'<span>Processing <i class="fa fa-spinner fa-spin" aria-hidden="true"></i></span>');
							},
							error : function(jqXHR, textStatus, errorThrown) {
								ShowErrorMessage(jqXHR.status, errorThrown);
							},
							complete : function() {
								hideAlert();
								$('#btnLogin').html('Login');
							},
							url : '/Account/Login',
							type : 'POST',
							data : $('#frmLogin').serialize(),
							success : function(response) {
								if (response.IsSuccess == false) {
									showToaster(response.errorMessage,
											ToasterType.ERROR);
								} else {
									//Load default dashboard.
									redirectTo('#')
								}
							}
						});
				return false;
			}
		}
	</script>
	<!-- Google tag (gtag.js) -->
	<script async=""
		src="https://www.googletagmanager.com/gtag/js?id=G-97T86CNKZ0"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'G-97T86CNKZ0');
	</script>
	<script
		src="/bundles/bootstrap?v=2Fz3B0iizV2NnnamQFrx-NbYJNTFeBJ2GM05SilbtQU1"></script>
	<script
		src="/bundles/modernizr?v=wBEWDufH_8Md-Pbioxomt90vm6tJN2Pyy9u9zHtWsPo1"></script>
	<script
		src="/bundles/jquery?v=FVs3ACwOLIVInrAl5sdzR2jrCDmVOWFbZMY6g6Q0ulE1"></script>
	<script
		src="/bundles/jqueryval?v=hEGG8cMxk9p0ncdRUOJ-CnKN7NezhnPnWIvn6REucZo1"></script>
	<script
		src="/bundles/scripts?v=Yu9M3GofQldw8GCZUQszP8Pma72zUfxzKX2o0ZxtV6s1"></script>
</body>
</html>