<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page
	import="javax.servlet.http.*,javax.servlet.*,javax.servlet.http.HttpSession"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="page-title">
		<div class="title_left">
			<div class="alert alert-success alert-dismissible fade in"
				role="alert">
				<marquee behavior="alternate">
					<h4>Select Center for GAT Exam</h4>
				</marquee>
			</div>

		</div>

	</div>
	<div class="clearfix"></div>
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h3>GAT Apllication</h3>


					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<br>
					<%
						String query = "select application_no from gatapplication;";
						String s1;
						int s = 0;
						try {
							Class.forName("com.mysql.jdbc.Driver");
							Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookurslot", "root", "root");
							Statement st = con.createStatement();

							ResultSet rs = st.executeQuery(query);

							int cnt = 0;

							/* System.out.println("awsedrtfghuji"); */
							while (rs.next()) {

								s1 = rs.getString("application_no");
					%>

					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<br>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Select
							Test Location<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<select class="form-control" id="centers" name="centers">
								<option value=''>Test Center</option>
								<option value='Tirupati'>Tirupati</option>
								<option value='Vijayawda'>Vijayawda</option>
								<option value='Warangal'>Warangal</option>
								<option value='Visakhapatnam'>Visakhapatnam</option>
								<option value='Kakinada'>Kakinada</option>
								<option value='Anantapur'>Anantapur</option>
								<option value='Hyderabad'>Hyderabad</option>
							</select>
						</div>
					</div>



					<div class="ln_solid"></div>

					<form id="demo-form2" data-parsley-validate=""
						class="form-horizontal form-label-left"
						action="../paymentsonline/onlinepayment" method="POST">

						<div class="x_content">
							<div class="form-group">
								<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
									<button type="button" class="btn btn-primary"
										data-toggle="modal" data-target=".bs-example-modal-lg"
										onclick="gatsubmit();">Submit</button>
								</div>
							</div>
						</div>


						<div class="modal fade bs-example-modal-lg" tabindex="-1"
							role="dialog" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">

									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">
											<span aria-hidden="true">×</span>
										</button>
										<h4 class="modal-title" id="myModalLabel">Modal title</h4>
									</div>
									<div class="modal-body">
										<h4>Text in a modal</h4>
										<p>Aenean lacinia bibendum nulla sed consectetur. Praesent
											commodo cursus magna, vel scelerisque nisl consectetur et.
											Donec sed odio dui. Donec ullamcorper nulla non metus auctor
											fringilla.</p>
									</div>
									<div class="modal-footer">
										<button type="submit" class="btn btn-primary" id="p1"
											name="p1" value="1">Pay Online</button>
										<button type="submit" class="btn btn-primary" id="p2"
											name="p1" value="2">Pay through DD</button>
										<button type="submit" class="btn btn-primary" id="p3"
											name="p1" value="3">Pay later</button>
									</div>


								</div>
							</div>
						</div>

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
					</form>
				</div>
			</div>
			
		</div>
		
	</div>
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
					<th class="column-title">Test Center</th>
					<th class="column-title">Payment Details</th>
					<th class="column-title">Exam Type</th>

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
	<script>
		$(document).ready(function() {
			$("#e15").click(function() {
				console.log("button clicked");
				$("#main1").load("payment_dd");

			});
		});
		$(document).ready(function() {
			$("#e16").click(function() {
				console.log("button clicked");
				$("#main1").load("payment_online");

			});
		});
	</script>
</body>
</html>