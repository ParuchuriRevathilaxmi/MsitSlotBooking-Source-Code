<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,javax.servlet.http.HttpSession"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="page-title">
		<div class="title_left">
			<h3>User Profile</h3>
		</div>
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
					<div class="col-md-3 col-sm-3 col-xs-12 profile_left">
						<div class="profile_img">
							<div id="crop-avatar">
								<!-- Current avatar -->
								<img class="img-responsive avatar-view"
									src="../resources/assets/production/images/picture.jpg"
									alt="Avatar" title="Change the avatar">
							</div>
						</div>
						<h3>Samuel Doe</h3>

						<!-- <ul class="list-unstyled user_data">
							<li><i class="fa fa-map-marker user-profile-icon"></i> San
								Francisco, California, USA</li>

							<li><i class="fa fa-briefcase user-profile-icon"></i>
								Software Engineer</li>

							<li class="m-top-xs"><i
								class="fa fa-external-link user-profile-icon"></i> <a
								href="http://www.kimlabs.com/profile/" target="_blank">www.kimlabs.com</a>
							</li>
						</ul> -->

						<a href="#" id="e10" class="btn btn-success"><i class="fa fa-edit m-right-xs"></i>Edit
							Profile</a> <br />
					</div>

					<div class="col-md-9 col-sm-9 col-xs-12">
						<div class="profile_title">
							<div class="col-md-6">
								<h2>User Profile</h2>
							</div>
							<!-- <div class="col-md-6">
								<div id="reportrange" class="pull-right"
									style="margin-top: 5px; background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #E6E9ED">
									<i class="glyphicon glyphicon-calendar fa fa-calendar"></i> <span>December
										30, 2014 - January 28, 2015</span> <b class="caret"></b>
								</div>
							</div> -->
						</div>

						<div class="" role="tabpanel" data-example-id="togglable-tabs">
							<table class="table table-striped projects">
 <%
												String query = "select * from profile";
												String s1, s2, s3, s4, s5, s6, s7;
												int s = 0;
												try {
													Class.forName("com.mysql.jdbc.Driver");
													Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookurslot", "root", "root");
													Statement st = con.createStatement();

													ResultSet rs = st.executeQuery(query);

													int cnt = 0;

													System.out.println("awsedrtfghuji");
													while (rs.next()) {
														s1 = rs.getString(9);
														s2 = rs.getString(8);
														s3 = rs.getString(6);
														s4 = rs.getString(4);
														s5 = rs.getString(3);
														s6 = rs.getString(7);
														
											%>
							
								<tbody>
									<tr>
										<th>Parent/Guardian</th>
										<td><%=s1 %></td>
									</tr>
									<tr>
										<th>Nationality</th>
										<td><%=s2 %></td>
									</tr>
									<tr>
										<th>Gender</th>
										<td><%=s3 %></td>
									</tr>
									<tr>
										<th>Date of Birth</th>
										<td><%=s4%></td>
									</tr>
									<tr>
										<th>Address</th>
										<td><%=s5%></td>
									</tr>
									<tr>
										<th>Phone</th>
										<td><%=s6%></td>
									</tr>
								</tbody>
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
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function()
		{
			$("#e10").click(function()
			{
				console.log("button clicked");
				$("#main1").load("editProfile");

			});
		});
		</script>
</body>
</html>