<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.restapi.Connection"%>
<%@ page import="com.google.gson.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>
	
</script>
</head>
<body>
	<div class="page-title">
		<div class="title_left">
			<h3>GRE Apllication</h3>
		</div>
		<div class="title_right"></div>
	</div>
	<div class="clearfix"></div>
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
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
						class="form-horizontal form-label-left">
						<input type="hidden" id="email" name="email"
							value=<%=session.getAttribute("EMAIL")%> /> <input type="hidden"
							id="gre" name="gre" value="gre" /> <input type="hidden"
							id="payment" name="payment" value="pending" />
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="first-name">Gre Quant+Verbal<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" id="i1" name="qv" required="required"
									class="form-control col-md-7 col-xs-12" pattern="/^[0-9]+$/.{3,}" title="must contain more than 301" 
									onkeydown="gre();">
							<div id="s1"></div>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="first-name">Gre Analytical<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" id="i2" name="ana" required="required"
									class="form-control col-md-7 col-xs-12" pattern="/^[0-9]+$/.{1,}" title="must contain more than 3"
									onkeydown="greana();">
							<div id="s2"></div>
							</div>
						</div>


						<div class="form-group">
							<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
								<button class="btn btn-primary" type="button">Cancel</button>

								<input class="btn btn-primary" type="submit"
									onclick="gresubmit();" value="Submit">
							</div>
						</div>

						<div class="ln_solid"></div>
					</form>

					<div class="table-responsive">
						<table class="table table-striped jambo_table bulk_action">
							<thead>
								<tr class="headings">
									<th>
										<div class="icheckbox_flat-green" style="position: relative;">
											<input id="check-all" class="flat"
												style="position: absolute; opacity: 0;" type="checkbox">
											<ins class="iCheck-helper"
												style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
										</div>
									</th>
									<th class="column-title">S_No</th>
									<th class="column-title">Application No</th>
									<th class="column-title">Payment Details</th>
									<th class="column-title">Exam Type</th>
									<th class="column-title">Quant+verbal Score</th>
									<th class="column-title">Analytical Score</th>

								</tr>
							</thead>
							<tbody>
								<tr class="odd pointer">
									<td class="a-center ">
										<div class="icheckbox_flat-green" style="position: relative;">
											<input class="flat" name="table_records"
												style="position: absolute; opacity: 0;" type="checkbox">
											<ins class="iCheck-helper"
												style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
										</div>
									</td>
									
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>