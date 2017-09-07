<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page
	import="javax.servlet.http.*,javax.servlet.*,javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<!-- saved from url=(0054)https://p.w3layouts.com/demos/payment_form_widget/web/ -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Online Payment</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="keywords"
	content="Payment Form Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design">
<script async="" src="./analytics.js.download"></script>
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- //for-mobile-apps -->
<link href="../resources/assets/build/css/style(1).css" rel="stylesheet"
	type="text/css" media="all">
<link href="../resources/assets/build/css/css" rel="stylesheet"
	type="text/css">
<link href="../resources/assets/build/css/css(1)" rel="stylesheet"
	type="text/css">
<link href="../resources/assets/build/css/css(2)" rel="stylesheet"
	type="text/css">
<script type="text/javascript"
	src="../resources/assets/build/js/jquery.min.js(1).download"></script>
</head>
<body>
	<script src="../resources/assets/build/js/jquery.min.js(2).download"></script>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');
		ga('create', 'UA-30027142-1', 'w3layouts.com');
		ga('send', 'pageview');
	</script>
	<script async="" type="text/javascript"
		src="https://cdn.fancybar.net/ac/fancybar.js?zoneid=1502&amp;serve=C6ADVKE&amp;placement=w3layouts"
		id="_fancybar_js"></script>
	<style type="text/css">
.adsense_fixed {
	position: fixed;
	bottom: -8px;
	width: 100%;
	z-index: 999999999999;
}

.adsense_content {
	width: 720px;
	margin: 0 auto;
	position: relative;
	background: #fff;
}

.adsense_btn_close, .adsense_btn_info {
	font-size: 12px;
	color: #fff;
	height: 20px;
	width: 20px;
	vertical-align: middle;
	text-align: center;
	background: #000;
	top: 4px;
	left: 4px;
	position: absolute;
	z-index: 99999999;
	font-family: Georgia;
	cursor: pointer;
	line-height: 18px
}

.adsense_btn_info {
	left: 26px;
	font-family: Georgia;
	font-style: italic
}

.adsense_info_content {
	display: none;
	width: 260px;
	height: 340px;
	position: absolute;
	top: -360px;
	background: rgba(255, 255, 255, .9);
	font-size: 14px;
	padding: 20px;
	font-family: Arial;
	border-radius: 4px;
	-webkit-box-shadow: 0 1px 26px -2px rgba(0, 0, 0, .3);
	-moz-box-shadow: 0 1px 26px -2px rgba(0, 0, 0, .3);
	box-shadow: 0 1px 26px -2px rgba(0, 0, 0, .3)
}

.adsense_info_content:after {
	content: '';
	position: absolute;
	left: 25px;
	top: 100%;
	width: 0;
	height: 0;
	border-left: 10px solid transparent;
	border-right: 10px solid transparent;
	border-top: 10px solid #fff;
	clear: both
}

.adsense_info_content #adsense_h3 {
	color: #000;
	margin: 0;
	font-size: 18px !important;
	font-family: 'Arial' !important;
	margin-bottom: 20px !important;
}

.adsense_info_content .adsense_p {
	color: #888;
	font-size: 13px !important;
	line-height: 20px;
	font-family: 'Arial' !important;
	margin-bottom: 20px !important;
}

.adsense_fh5co-team {
	color: #000;
	font-style: italic;
}
</style>
	<script>
		$(function() {
			$('.adsense_btn_close').click(function() {
				$(this).closest('.adsense_fixed').css('display', 'none');
			});

			$('.adsense_btn_info').click(function() {
				if ($('.adsense_info_content').is(':visible')) {
					$('.adsense_info_content').css('display', 'none');
				} else {
					$('.adsense_info_content').css('display', 'block');
				}
			});

		});
	</script>


	<div class="adsense_fixed">
		<div class="adsense_content">
			<span class="adsense_btn_close" title="Hide Ads">x</span>
			<div class="adsense_info_content">
				<h3 id="adsense_h3">Why Ads?</h3>
				<p class="adsense_p">We hope you'll understand us why we display
					Ads here at w3layouts. We use Ads in order for us to continue
					working and provide you new template every day. As we all know
					domain, hosting servers and designers is not free and for us to pay
					it we have to display Ads. Thank you for Supporting Us.</p>
				<p class="adsense_p">
					Love, <br> <span class="adsense_fh5co-team">w3layouts
						Team</span>
				</p>
			</div>
			<span class="adsense_btn_info" title="Why Ads">i</span>

			<script async=""
				src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
			<!-- ResponsiveW3layouts -->
			<ins class="adsbygoogle" style="display: block"
				data-ad-client="ca-pub-9153409599391170" data-ad-slot="7722137086"
				data-ad-format="auto"></ins>
			<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
			</script>

			<ins class="adsbygoogle"
				style="display: inline-block; width: 728px; height: 90px"
				data-ad-client="ca-pub-9153409599391170" data-ad-slot="6850850687"></ins>
			<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
			</script>

		</div>
	</div>

	<div class="main">
		<h1>Online Payment</h1>
		<!---728x90--->

		<div class="content">

			<script
				src="../resources/assets/build/js/easyResponsiveTabs.js.download"
				type="text/javascript"></script>
			<script type="text/javascript">
				$(document).ready(function() {
					$('#horizontalTab').easyResponsiveTabs({
						type : 'default', //Types: default, vertical, accordion           
						width : 'auto', //auto or any width like 600px
						fit : true
					// 100% fit in a container
					});
				});
			</script>
			<div class="sap_tabs">
				<div id="horizontalTab"
					style="display: block; width: 100%; margin: 0px;">
					<div class="pay-tabs">
						<h2>Select Payment Method</h2>
						<ul class="resp-tabs-list">
							<li class="resp-tab-item resp-tab-active"
								aria-controls="tab_item-0" role="tab"><span> <img
									src="../resources/assets/build/images/creditcard.jpg" alt="..."
									class="img-circle profile_img"></span></li>
							<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span><img
									src="../resources/assets/build/images/netbanking.jpg" alt="..."
									class="img-circle profile_img"></span></li>
							<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span><img
									src="../resources/assets/build/images/paypal.png" alt="..."
									class="img-circle profile_img"></span></li>
							<li class="resp-tab-item" aria-controls="tab_item-3" role="tab"><span><img
									src="../resources/assets/build/images/debitcard.jpg" alt="..."
									class="img-circle profile_img"></span></li>
							<div class="clear"></div>
						</ul>
					</div>
					<div class="resp-tabs-container">
						<h2 class="resp-accordion resp-tab-active" role="tab"
							aria-controls="tab_item-0">
							<span class="resp-arrow"></span>Credit Card
						</h2>
						<div class="tab-1 resp-tab-content resp-tab-content-active"
							aria-labelledby="tab_item-0" style="display: block">
							<div class="payment-info">
								<!-- <h3>Personal Information</h3>
											<form>
												<div class="tab-for">				
													<h5>EMAIL ADDRESS</h5>
														<input type="text" value="">
													<h5>FIRST NAME</h5>													
														<input type="text" value="">
												</div>			
											</form> -->
								<h3 class="pay-title">Credit Card Info</h3>
								<form id="demo-form2" data-parsley-validate=""
									class="form-horizontal form-label-left" name="web"
									action="../users/web" method="POST">
									<input type="hidden" id="amt" name="amt" required="required"
										value="700" class="form-control col-md-7 col-xs-12" readonly />
									<input type="hidden" id="email" name="email"
										value=<%=session.getAttribute("EMAIL")%> /> <input
										type="hidden" id="apno_list" name="apno_list"
										required="required" value="17GAT0001"
										class="form-control col-md-7 col-xs-12" readonly />
									<div class="tab-for">

										<h5>NAME ON CARD</h5>
										<input type="text" value="">
										<h5>CARD NUMBER</h5>

										<input class="pay-logo" type="text"
											value="0000-0000-0000-0000" required="">
									</div>
									<div class="transaction">
										<div class="tab-form-left user-form">
											<h5>EXPIRATION</h5>
											<ul>
												<li><input type="number" class="text_box" value="6"
													min="1"></li>
												<li><input type="number" class="text_box" value="1988"
													min="1"></li>

											</ul>
										</div>
										<div class="tab-form-right user-form-rt">
											<h5>CVV NUMBER</h5>
											<input type="text" value="xxxx" required="">
										</div>
										<div class="clear"></div>
									</div>
									<input type="submit" value="SUBMIT">
								</form>
								<div class="single-bottom">
									<ul>
										<li>
											<!-- <input type="checkbox" id="brand" value=""> <label
											for="brand"><span></span>By checking this box, I
												agree to the Terms &amp; Conditions &amp; Privacy Policy.</label></li> -->
									</ul>
								</div>
							</div>
						</div>
						<h2 class="resp-accordion" role="tab" aria-controls="tab_item-1">
							<span class="resp-arrow"></span>Net Banking
						</h2>
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
							<div class="payment-info">
								<h3>Net Banking</h3>
								<div class="radio-btns">
									<div class="swit">
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio" checked=""><i></i>Andhra
													Bank</label>
											</div>
										</div>
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio"><i></i>Allahabad
													Bank</label>
											</div>
										</div>
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio"><i></i>Bank
													of Baroda</label>
											</div>
										</div>
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio"><i></i>Canara
													Bank</label>
											</div>
										</div>
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio"><i></i>IDBI
													Bank</label>
											</div>
										</div>
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio"><i></i>Icici
													Bank</label>
											</div>
										</div>
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio"><i></i>Indian
													Overseas Bank</label>
											</div>
										</div>
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio"><i></i>Punjab
													National Bank</label>
											</div>
										</div>
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio"><i></i>South
													Indian Bank</label>
											</div>
										</div>
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio"><i></i>State
													Bank Of India</label>
											</div>
										</div>
									</div>
									<div class="swit">
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio" checked=""><i></i>City
													Union Bank</label>
											</div>
										</div>
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio"><i></i>HDFC
													Bank</label>
											</div>
										</div>
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio"><i></i>IndusInd
													Bank</label>
											</div>
										</div>
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio"><i></i>Syndicate
													Bank</label>
											</div>
										</div>
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio"><i></i>Deutsche
													Bank</label>
											</div>
										</div>
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio"><i></i>Corporation
													Bank</label>
											</div>
										</div>
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio"><i></i>UCO
													Bank</label>
											</div>
										</div>
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio"><i></i>Indian
													Bank</label>
											</div>
										</div>
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio"><i></i>Federal
													Bank</label>
											</div>
										</div>
										<div class="check_box">
											<div class="radio">
												<label><input type="radio" name="radio"><i></i>ING
													Vysya Bank</label>
											</div>
										</div>
									</div>
									<div class="clear"></div>
								</div>
								<a href="">Continue</a>
							</div>
						</div>
						<h2 class="resp-accordion" role="tab" aria-controls="tab_item-2">
							<span class="resp-arrow"></span>PayPal
						</h2>
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
							<div class="payment-info">
								<h3>PayPal</h3>
								<h4>Already Have A PayPal Account?</h4>
								<div class="login-tab">
									<div class="user-login">
										<h2>Login</h2>

										<form>
											<input type="text" value="name@email.com" required="">
											<input type="password" value="PASSWORD" required="">
											<div class="user-grids">
												<div class="user-left">
													<div class="single-bottom">
														<ul>
															<li><input type="checkbox" id="brand1" value="">
																<label for="brand1"><span></span>Remember me?</label></li>
														</ul>
													</div>
												</div>
												<div class="user-right">
													<input type="submit" value="LOGIN">
												</div>
												<div class="clear"></div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<h2 class="resp-accordion" role="tab" aria-controls="tab_item-3">
							<span class="resp-arrow"></span>Debit Card
						</h2>
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-3">
							<div class="payment-info">

								<h3 class="pay-title">Dedit Card Info</h3>
								<form>
									<div class="tab-for">
										<h5>NAME ON CARD</h5>
										<input type="text" value="">
										<h5>CARD NUMBER</h5>
										<input class="pay-logo" type="text"
											value="0000-0000-0000-0000" required="">
									</div>
									<div class="transaction">
										<div class="tab-form-left user-form">
											<h5>EXPIRATION</h5>
											<ul>
												<li><input type="number" class="text_box" value="6"
													min="1"></li>
												<li><input type="number" class="text_box" value="1988"
													min="1"></li>

											</ul>
										</div>
										<div class="tab-form-right user-form-rt">
											<h5>CVV NUMBER</h5>
											<input type="text" value="xxxx" required="">
										</div>
										<div class="clear"></div>
									</div>
									<input type="submit" value="SUBMIT">
								</form>
								<div class="single-bottom">
									<!-- <ul>
										<li><input type="checkbox" id="brand" value=""> <label
											for="brand"><span></span>By checking this box, I
												agree to the Terms &amp; Conditions &amp; Privacy Policy.</label></li>
									</ul> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!---728x90--->

		<!-- <p class="footer">Copyright © 2016 Payment Form Widget. All Rights Reserved | Template by <a href="https://w3layouts.com/" target="_blank">w3layouts</a></p>
		-728x90- -->

	</div>

</body>
</html>