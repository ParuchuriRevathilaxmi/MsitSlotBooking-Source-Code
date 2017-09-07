<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MSIT ADMISSIONS</title>
<link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
<!-- Bootstrap -->
<link
	href="../resources/assets/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="../resources/assets/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="../resources/assets/vendors/nprogress/nprogress.css"
	rel="stylesheet">
<!-- iCheck -->
<link href="../resources/assets/vendors/iCheck/skins/flat/green.css"
	rel="stylesheet">

<!-- bootstrap-progressbar -->
<link
	href="../resources/assets/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet">
<!-- JQVMap -->
<link href="../resources/assets/vendors/jqvmap/dist/jqvmap.min.css"
	rel="stylesheet" />
<!-- bootstrap-daterangepicker -->
<link
	href="../resources/assets/vendors/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="../resources/assets/build/css/custom.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#e0").click(function() {
			console.log("button clicked");
			$("#main1").load("viewProfile");
		});
	});

	$(document).ready(function() {
		$("#e1").click(function() {
			console.log("button clicked");
			$("#main1").load("gat");

		});
	});

	$(document).ready(function() {
		$("#e2").click(function() {
			console.log("button clicked");
			$("#main1").load("gre");
		});
	});

	$(document).ready(function() {
		$("#e3").click(function() {
			console.log("button clicked");
			$("#main1").load("walkin");

		});
	});

	$(document).ready(function() {
		$("#e4").click(function() {
			console.log("button clicked");
			$("#main1").load("payment");

		});
	});

	$(document).ready(function() {
		$("#e6").click(function() {
			console.log("button clicked");
			$("#main1").load("payment_online");

		});
	});

	$(document).ready(function() {
		$("#e7").click(function() {
			console.log("button clicked");
			$("#main1").load("payment_dd");

		});
	});

	data = "";
	gatsubmit = function() 
	{
		alert("123");
		$.ajax({
			url : '../gatapplication/saveOrUpdate',
			type : 'POST',
			data : {
				email_id : $('#email').val(),
				payment_details : $('#payment').val(),
				test_center : $('#centers').val(),
				exam_type : $('#gat').val()
			},
		 /* success : function(response) 
		 {
			 System.out.println(response+"    ***");
				$("#main1").load("gat");
		} */ 
		});
	}

	gresubmit = function() {
		alert("asdfghjkl");
		$.ajax({
			url : '../greapplication/saveOrUpdate',
			type : 'POST',
			data : {
				email_id : $('#email').val(),
				payment_details : $('#payment').val(),
				gre_an : $('#ana').val(),
				exam_type : $('#gre').val(),
				gre_vq : $('#qv').val()
			},
			success : function(response) {
				$("#main1").load("gre");
			}
		});
	}
</script>
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="index.html" class="site_title"> <span><img
								src="../resources/assets/build/images/msit.gif"></span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img src="../resources/assets/production/images/img.jpg"
								alt="..." class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Welcome,</span>
							<h2>John Doe</h2>
						</div>
					</div>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3>General</h3>
							<ul class="nav side-menu">
								<li><a><i class="fa fa-home"></i> Home</a></li>
								<li><a href="#" id="e0"><i class="fa fa-home"></i>View
										Profile</a></li>
								<li><a id="e1" href="#"><i class="fa fa-home"></i>GAT</a></li>
								<li><a id="e2" href="#"><i class="fa fa-home"></i>GRE</a></li>
								<li><a id="e3" href="#"><i class="fa fa-home"></i>Walkin</a></li>
								<li><a id="e4" href="#"><i class="fa fa-home"></i>Payments<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a id="e6" href="#">Pay Online</a></li>
										<li><a id="e7" href="#">Pay through DD</a></li>
									</ul></li>
							</ul>
						</div>
					</div>

					<!-- /sidebar menu -->

					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title=""
							data-original-title="Settings"> <span
							class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title=""
							data-original-title="FullScreen"> <span
							class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title=""
							data-original-title="Lock"> <span
							class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title=""
							href="logout" data-original-title="Logout"> <span
							class="glyphicon glyphicon-off" aria-hidden="true"></span>
						</a>
					</div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<nav>
						<div class="nav toggle">
							<a id="menu_toggle"><i class="fa fa-bars"></i></a>
						</div>

						<ul class="nav navbar-nav navbar-right">
							<li class=""><a href="javascript:;"
								class="user-profile dropdown-toggle" data-toggle="dropdown"
								aria-expanded="false"> <img src="images/img.jpg" alt="">John
									Doe <span class=" fa fa-angle-down"></span>
							</a>
								<ul class="dropdown-menu dropdown-usermenu pull-right">
									<li><a href="javascript:;"> Profile</a></li>
									<li><a href="javascript:;"> <span
											class="badge bg-red pull-right">50%</span> <span>Settings</span>
									</a></li>
									<li><a href="javascript:;">Help</a></li>
									<li><a href="logout"><i
											class="fa fa-sign-out pull-right"></i> Log Out</a></li>
								</ul></li>

							<li role="presentation" class="dropdown"><a
								href="javascript:;" class="dropdown-toggle info-number"
								data-toggle="dropdown" aria-expanded="false"> <i
									class="fa fa-envelope-o"></i> <span class="badge bg-green">6</span>
							</a>
								<ul id="menu1" class="dropdown-menu list-unstyled msg_list"
									role="menu">
									<li><a> <span class="image"><img
												src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li><a> <span class="image"><img
												src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li><a> <span class="image"><img
												src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li><a> <span class="image"><img
												src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li>
										<div class="text-center">
											<a> <strong>See All Alerts</strong> <i
												class="fa fa-angle-right"></i>
											</a>
										</div>
									</li>
								</ul></li>
						</ul>
					</nav>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" id="main1">
				<!-- top tiles -->
			</div>
			<!-- footer content -->
			<footer>
				<div class="pull-right">
					MSIT<a
						href="https://colorlib.com">Colorlib</a>
				</div>
				<div class="clearfix"></div>
			</footer>
			<!-- /footer content -->
		</div>
	</div>

	<!-- jQuery -->
	<script src="../resources/assets/vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script
		src="../resources/assets/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="../resources/assets/vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="../resources/assets/vendors/nprogress/nprogress.js"></script>
	<!-- Chart.js -->
	<script src="../resources/assets/vendors/Chart.js/dist/Chart.min.js"></script>
	<!-- gauge.js -->
	<script src="../resources/assets/vendors/gauge.js/dist/gauge.min.js"></script>
	<!-- bootstrap-progressbar -->
	<script
		src="../resources/assets/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script src="../resources/assets/vendors/iCheck/icheck.min.js"></script>
	<!-- Skycons -->
	<script src="../resources/assets/vendors/skycons/skycons.js"></script>
	<!-- Flot -->
	<script src="../resources/assets/vendors/Flot/jquery.flot.js"></script>
	<script src="../resources/assets/vendors/Flot/jquery.flot.pie.js"></script>
	<script src="../resources/assets/vendors/Flot/jquery.flot.time.js"></script>
	<script src="../resources/assets/vendors/Flot/jquery.flot.stack.js"></script>
	<script src="../resources/assets/vendors/Flot/jquery.flot.resize.js"></script>
	<!-- Flot plugins -->
	<script
		src="../resources/assets/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
	<script
		src="../resources/assets/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
	<script
		src="../resources/assets/vendors/flot.curvedlines/curvedLines.js"></script>
	<!-- DateJS -->
	<script src="../resources/assets/vendors/DateJS/build/date.js"></script>
	<!-- JQVMap -->
	<script src="../resources/assets/vendors/jqvmap/dist/jquery.vmap.js"></script>
	<script
		src="../resources/assets/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
	<script
		src="../resources/assets/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script src="../resources/assets/vendors/moment/min/moment.min.js"></script>
	<script
		src="../resources/assets/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="../resources/assets/build/js/custom.min.js"></script>


	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>


</body>
</html>