<%-- <jsp:include page="sessionAuthendication.jsp" /> --%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
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
<script type="text/javascript">
	$(function() {
		$("#datepicker").datepicker({
			minDate : 0,
			dateFormat : 'dd-mm-yy',

		});
	});
</script>
</head>
<body>
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>Input Mask</h2>
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
				<form id="demo-form2" data-parsley-validate=""
					class="form-horizontal form-label-left" name="saveOrUpdate"
					action="../walkindates/saveOrUpdate" method="POST">

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-3">Walk
							in Dates</label>
						<div class="col-md-9 col-sm-9 col-xs-9">
							<input type="text" id="datepicker" name="datepicker"
								placeholder="Walk in date" required="required"
								class="form-control" data-inputmask="'mask': '99/99/9999'"
								style="width: 300px">

						</div>
					</div>

					<div class="form-group">
						<div class="col-md-9 col-md-offset-3">
							<a href="#" id="e50"><input type="submit" 
								class="btn btn-success" value="Insert"> </a>
						</div>
					</div>
				</form>
				<div class="ln_solid"></div>

				<table id="table" class="table table-striped projects">

					<thead>
						<tr>
							<th>dates</th>
							<th>delete</th>
						</tr>

					</thead>

					<c:if test="${not empty lists}">
						<c:forEach var="listValue" items="${lists}">
							<tr>

								<td>${listValue.getDate()}</td>
								<td>
									<form id="demo-form2" data-parsley-validate=""
										class="form-horizontal form-label-left"
										action="../walkindates/deletedate">
										<input type="submit" value="delete" /> <input type="hidden"
											name="walkdate" id="walkdate" value="${listValue.getDate()}" />
									</form>
								</td>
							</tr>

							<tr
								style="background-color: #337ab7 !important; color: #fff !important;">


							</tr>
						</c:forEach>
					</c:if>

					<c:if test="${not empty list}">
						<c:forEach var="list" items="${list}">

							<tr>

								<td>${list.getDate()}</td>
								<td>
									<form id="demo-form2" data-parsley-validate=""
										class="form-horizontal form-label-left"
										action="../walkindates/deletedate">
										<a href="#" id="e51">
										<input type="submit" value="delete" />
										</a> 
										<input type="hidden"
											name="walkdate" id="walkdate" value="${list.getDate()}" />
									</form>
								</td>


							</tr>

							<tr
								style="background-color: #337ab7 !important; color: #fff !important;">


							</tr>
						</c:forEach>
					</c:if>

				</table>
		</div>
		</div>
		</div>
		

				<%-- <form id="demo-form2" data-parsley-validate=""
					class="form-horizontal form-label-left" name="saveOrUpdate"
					action="../walkindates/saveOrUpdate" method="POST">

					<div class="form">

						<input type="text" id="datepicker" name="datepicker"
							placeholder="Walk in date" required="required"
							class="form-control col-md-7 col-xs-12" /> <input type="submit"
							value="Insert">
					</div>
				</form>
				 --%>


				<div class="wrap">

					<div class="clear"></div>
				</div>
</body>
<script>
	$(document).ready(function() {
		$("#e50").click(function() {
			console.log("button clicked");
			$("#main1").load("WalkinDates");

		});
	});

	 $(document).ready(function() {
		$("#e51").click(function() {
			console.log("button clicked");
			$("#main1").load("WalkinDates");

		});
	});
</script>
</html>

