<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MSIT ADMISSIONS</title>
<!-- Bootstrap -->
<script type="text/javascript">
	//<![CDATA[
	try {
		if (!window.CloudFlare) {
			var CloudFlare = [ {
				verbose : 0,
				p : 0,
				byc : 0,
				owlid : "cf",
				bag2 : 1,
				mirage2 : 0,
				oracle : 0,
				paths : {
					cloudflare : "/cdn-cgi/nexp/dok3v=1613a3a185/"
				},
				atok : "40ae0719444b55ca0b150b8be2530829",
				petok : "69d80fd518055d0d1901a10990e1c1e630ef5f6f-1496807463-1800",
				zone : "colorlib.com",
				rocket : "a",
				apps : {}
			} ];
			document
					.write('<script type="text/javascript" src="//ajax.cloudflare.com/cdn-cgi/nexp/dok3v=85b614c0f6/cloudflare.min.js"><'+'\/script>');
		}
	} catch (e) {
	};
	//]]>
</script>
<!-- bootstrap-wysiwyg -->
<link
	href="../resources/vendors/google-code-prettify/bin/prettify.min.css"
	rel="stylesheet">

<!-- Custom styling plus plugins -->
<link href="../resources/build/css/custom.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/buttons/1.3.1/css/buttons.dataTables.min.css">

<!--  Ion.RangeSlider -->
<link href="../resources/assets/vendors/normalize-css/normalize.css"
	rel="stylesheet">
<link
	href="../resources/assets/vendors/ion.rangeSlider/css/ion.rangeSlider.css"
	rel="stylesheet">
<link
	href="../resources/assets/vendors/ion.rangeSlider/css/ion.rangeSlider.skinFlat.css"
	rel="stylesheet">
<!--     Bootstrap Colorpicker -->
<link
	href="../resources/assets/vendors/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"
	rel="stylesheet">

<link href="../resources/assets/vendors/cropper/dist/cropper.min.css"
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
<!--    iCheck -->
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
<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">
<script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
<script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<script type="text/javascript">
	//<![CDATA[
	try {
		if (!window.CloudFlare) {
			var CloudFlare = [ {
				verbose : 0,
				p : 0,
				byc : 0,
				owlid : "cf",
				bag2 : 1,
				mirage2 : 0,
				oracle : 0,
				paths : {
					cloudflare : "/cdn-cgi/nexp/dok3v=1613a3a185/"
				},
				atok : "40ae0719444b55ca0b150b8be2530829",
				petok : "69d80fd518055d0d1901a10990e1c1e630ef5f6f-1496807463-1800",
				zone : "colorlib.com",
				rocket : "a",
				apps : {}
			} ];
			document
					.write('<script type="text/javascript" src="//ajax.cloudflare.com/cdn-cgi/nexp/dok3v=85b614c0f6/cloudflare.min.js"><'+'\/script>');
		}
	} catch (e) {
	};
	//]]>
</script>

<link
	href="../resources/vendors/google-code-prettify/bin/prettify.min.css"
	rel="stylesheet">
<!-- Custom Theme Style -->
<link href="../resources/assets/build/css/custom.min.css"
	rel="stylesheet">
<!--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->

<style>
.text {
	font-family: "strumpf-std-open, sans-serif";
	font-style: normal;
	font-weight: 400;
}
</style>
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
								<li><a href="#" id="e"><i class="fa fa-group"></i><span
										class="text-muted"></span>Exam Details</a></li>
								<li><a href="#" id="e0"><i class="fa fa-group"></i><span
										class="text-muted"></span>Registered Students</a></li>
								<li><a href="#" id="e1"><i class="fa fa-user"></i>GAT
										Applicants</a></li>
								<li><a href="#" id="e2"><i class="fa fa-user"></i>GRE
										Applicants</a></li>
								<li><a href="#" id="e3"><i class="fa fa-user"></i>Walk
										In Applicants</a></li>
								<li><a href="#" id="e4"><i class="fa fa-file-text"></i>Generate
										Hallticket</a></li>
								<li><a href="#" id="e7"><i class="fa fa-file-text"></i>WalkInDates</a></li>
								<li><a href="#" id="e5"><i class="fa fa-file-text"></i>MessagesToEmail</a></li>
								<li><a><i class="fa fa-money"></i>Payments<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#" id="e6"><i class="fa fa-credit-card"></i>Online
												Payments</a></li>
										<li><a href="#" id="e8"><i class="fa fa-check-square"></i>DD
												Payments</a></li>
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
									<li><a href="login.html"><i
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
			<div class="right_col" role="main" style="border: 2px solid red"
				id="main1">
				<!-- top tiles -->

			</div>
			<!-- /top tiles -->

			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="dashboard_graph">

						<div class="row x_title"></div>
					</div>
				</div>

			</div>



			<div class="row"></div>
			<!-- /page content -->

			<footer>
				<div class="pull-right">
					Gentelella - Bootstrap Admin Template by <a
						href="https://colorlib.com">Colorlib</a>
				</div>
				<div class="clearfix"></div>
			</footer>
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




	<script type="text/javascript">
		/* 
		 $(document).ready(function(){
			 $('#datatable').DataTable( {
			        dom: 'Bfrtip',
			        buttons: [
			            'copy', 'csv', 'excel', 'pdf', 'print'
			        ]
			    } );
		           }); */

		$(document).ready(function() {
			$("#e").click(function() {
				console.log("button clicked");
				$("#main1").load("examDetails");
			});
		});

		$(document).ready(function() {
			$("#e0").click(function() {
				console.log("button clicked");
				$("#main1").load("registeredStudents");
			});
		});

		$(document).ready(function() {
			$("#e1").click(function() {
				console.log("button clicked");
				$("#main1").load("gatApplicants");
			});
		});

		$(document).ready(function() {
			$("#e2").click(function() {
				console.log("button clicked");
				$("#main1").load("greApplicants");
			});
		});

		$(document).ready(function() {
			$("#e3").click(function() {
				console.log("button clicked");
				$("#main1").load("walkinApplicants");
			});
		});

		$(document).ready(function() {
			$("#e4").click(function() {
				console.log("button clicked");
				$("#main1").load("generateHallticket");
			});
		});

		$(document).ready(function() {
			$("#e5").click(function() {
				console.log("button clicked");
				$("#main1").load("MessagesToEmails");
			});
		});
		
		$(document).ready(function() {
			$("#e6").click(function() {
				console.log("button clicked");
				$("#main1").load("PaymentOnline");
			});
		});
		
		$(document).ready(function() {
			$("#e7").click(function() {
				console.log("button clicked");
				$("#main1").load("WalkinDates");
			});
		});
		
		$(document).ready(function() {
			$("#e8").click(function() {
				console.log("button clicked");
				$("#main1").load("PaymentThroughDD");
			});
		});
	</script>
	<script type="text/rocketscript">
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-23581568-13', 'auto');
ga('send', 'pageview');

</script>
</body>
</html>