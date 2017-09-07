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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<body class="nav-md">
	<!-- top tiles -->
	<!-- <div class="" style="border: 2px solid red"> -->
	<div class="page-title">
		<div class="title_left">
			<h3>Payment Details</h3>
		</div>
		<div class="title_right"></div>
	</div>
	<div class="clearfix"></div>
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<!-- <h2>Registered Students</h2> -->
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
					<!-- start project list -->
					<table class="table table-striped projects">
						<thead>
							<tr>
								<th style="width: 1%">S.No</th>
								<th style="width: 20%">UserName</th>
								<th>Application No</th>
								<th>ExamType</th>
								<th>Gmail</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<input name="termsncond" id="termsncond" required
									title=" please read terms and conditions " type="checkbox"
									class="ace">
								</td>
								<td><a>Pesamakini Backend UI</a> <br> <small>Created
										01.01.2015</small></td>
								<td>
									<ul class="list-inline">
										<li>17GAT0001</li>
									</ul>
								</td>

								<td>
									<ul class="list-inline">
										<li>gat</li>
									</ul>
								</td>


								<td class="project_progress">
									<ul class="list-inline">
										<li>online</li>
									</ul>
								</td>

								<td>
									<button type="submit" value="1" class="btn btn-success btn-xs">Success</button>
									<button type="submit" value="0" class="btn btn-danger btn-xs">failure</button>
								</td>
							</tr>

							<tr>
								<td>
									<input name="termsncond" id="termsncond" required
									title=" please read terms and conditions " type="checkbox"
									class="ace">
								</td>
								<td><a>Pesamakini Backend UI</a> <br> <small>Created
										01.01.2015</small></td>
								<td>
									<ul class="list-inline">
										<li>17GAT0001</li>
									</ul>
								</td>

								<td>
									<ul class="list-inline">
										<li>gat</li>
									</ul>
								</td>


								<td class="project_progress">
									<ul class="list-inline">
										<li>online</li>
									</ul>
								</td>

								<td>
									<button type="submit" value="1" class="btn btn-success btn-xs">Success</button>
									<button type="submit" value="0" class="btn btn-danger btn-xs">failure</button>
								</td>
							</tr>

							<tr>
								<td>
									<input name="termsncond" id="termsncond" required
									title=" please read terms and conditions " type="checkbox"
									class="ace">
								</td>
								<td><a>Pesamakini Backend UI</a> <br> <small>Created
										01.01.2015</small></td>
								<td>
									<ul class="list-inline">
										<li>17GAT0001</li>
									</ul>
								</td>

								<td>
									<ul class="list-inline">
										<li>gat</li>
									</ul>
								</td>


								<td class="project_progress">
									<ul class="list-inline">
										<li>online</li>
									</ul>
								</td>

								<td>
									<button type="submit" value="1" class="btn btn-success btn-xs">Success</button>
									<button type="submit" value="0" class="btn btn-danger btn-xs">failure</button>
								</td>
							</tr>

						</tbody>
					</table>
					<!-- end project list -->

				</div>
			</div>

		</div>
	</div>

	<!-- end project list -->

</body>
</html>