<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page
	import="javax.servlet.http.*,javax.servlet.*,javax.servlet.http.HttpSession"%>
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
</head>
<body>
	<div class="page-title">
		<div class="title_left">
			<h3>Payments</h3>
		</div>
		<div class="title_right">
			
		</div>
	</div>
	<div class="clearfix"></div>
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>
						
					</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"><i
								class="fa fa-wrench"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Settings 1</a></li>
								<li><a href="#">Settings 2</a></li>
							</ul></li>
						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<br>
					<form id="demo-form2" data-parsley-validate=""
						class="form-horizontal form-label-left" name="saveOrUpdate"
						action="../payments/saveOrUpdate" method="POST">
						<h3>Payment through DD</h3>
						<hr>

						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="first-name">Application Number<span
								class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<select class="form-control" id="app_list" name="app_list">
									<%
									String query = "select * from gatapplication where email_id='"+session.getAttribute("EMAIL")+"'";
									
									String s1;
									int s = 0;
									try {
										Class.forName("com.mysql.jdbc.Driver");
										Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookurslot", "root", "root");
										Statement st = con.createStatement();

										ResultSet rs = st.executeQuery(query);
										

									
										while (rs.next()) {
											s1 = rs.getString(2);

									%>
									<option value=<%=s1%>><%=s1%></option>
									
									<%
										}
										} catch (SQLException e) {
											System.out.println(e.getMessage());
											e.printStackTrace();
										} catch (ClassNotFoundException e) {
											e.printStackTrace();
											System.out.println(e.getMessage());
										}
									%>
								</select>
							</div>
						</div>


						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="first-name">DD No<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" id="ddno" name="ddno" required="required"
									value="" class="form-control col-md-7 col-xs-12" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="first-name">Issue Bank Name<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" id="ibn" name="ibn" required="required"
									value="" class="form-control col-md-7 col-xs-12" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="first-name">Bank Branch<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" id="bbr" name="bbr" required="required"
									value="" class="form-control col-md-7 col-xs-12" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="first-name">Amount<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" id="amt" name="amt" required="required"
									value="700" class="form-control col-md-7 col-xs-12" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="first-name">Exam Type<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" id="et" name="et" required="required"
									value="" class="form-control col-md-7 col-xs-12" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="first-name">Issue Date<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" id="idt" name="idt" required="required"
									value="" class="form-control col-md-7 col-xs-12" />
							</div>
						</div>

						<input type="hidden" id="email" name="email"
							value=<%=session.getAttribute("EMAIL")%> />

						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="first-name"><span class="required"></span> </label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12"
										for="first-name"><span class="required"></span> </label>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<input name="termsncond" id="termsncond" required
											title=" please read terms and conditions " type="checkbox"
											class="ace" required=""> <span class="lbl"> </span>I
										hereby declare that I agree to the terms and conditions of <strong>CIHL</strong>&nbsp;&nbsp;&nbsp;&nbsp;

									</div>
								</div>


								<div class="form-group">
									<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
										<a id="e19">
											<input class="btn btn-primary" type="submit" value="Pay Now">
										</a>
									</div>
									<div class="ln_solid"></div>
								</div>
					</form>
					<div class="warning">
						<p>
							Note: After clicking on the "Pay" button, you will be directed to
							a secure gateway for payment. <strong>Don't Close the
								Browser or Stop Until the Page returns MSIT Website.</strong>
						</p>
					</div>

				</div>



			</div>
		</div>



	</div>
<script>
$(document).ready(function() {
	$("#e19").click(function() {
		console.log("button clicked");
		$("#main1").load("payment_dd");

	});
});

</script>

</body>
</html>