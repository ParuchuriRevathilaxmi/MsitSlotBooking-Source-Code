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
			<h3>Genereate Hallticket</h3>
		</div>
		<div class="title_right"></div>
	</div>
	<div class="clearfix"></div>
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2></h2>
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

					<p>Simple table with project listing with progress and editing
						options</p>

					<!-- start project list -->
					<table class="table table-striped projects">
						<thead>
							<tr>
								<th style="width: 1%">SNo</th>
								<th style="width: 20%">User Name</th>
								<th>Application Number</th>
								<th>ExamType</th>
								<th>Payment Status</th>
								<th style="width: 20%">GenerateHallticket</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>#</td>
								<td><a>Pesamakini Backend UI</a> <br> <small>Created
										01.01.2015</small></td>
								<td>
									<ul class="list-inline">
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
									</ul>
								</td>
								<td class="project_progress">
									<div class="progress progress_sm">
										<div class="progress-bar bg-green" role="progressbar"
											data-transitiongoal="57" style="width: 57%;"
											aria-valuenow="55"></div>
									</div> <small>57% Complete</small>
								</td>
								<td>
									<button type="button" class="btn btn-success btn-xs">Success</button>
								</td>

								<td>
									<form id="demo-form2" data-parsley-validate=""
										class="form-horizontal form-label-left" name=""
										action="../users/hallticket" method="GET">


										<input class="btn btn-primary" type="submit"
											value="Generate Hallticket">

									</form>
								</td>
							</tr>
							<tr>
								<td>#</td>
								<td><a>Pesamakini Backend UI</a> <br> <small>Created
										01.01.2015</small></td>
								<td>
									<ul class="list-inline">
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
									</ul>
								</td>
								<td class="project_progress">
									<div class="progress progress_sm">
										<div class="progress-bar bg-green" role="progressbar"
											data-transitiongoal="47" style="width: 47%;"
											aria-valuenow="45"></div>
									</div> <small>47% Complete</small>
								</td>
								<td>
									<button type="button" class="btn btn-success btn-xs">Success</button>
								</td>
								<td><form id="demo-form2" data-parsley-validate=""
										class="form-horizontal form-label-left" name=""
										action="../users/hallticket" method="GET">


										<input class="btn btn-primary" type="submit"
											value="Generate Hallticket">

									</form></td>
							</tr>
							<tr>
								<td>#</td>
								<td><a>Pesamakini Backend UI</a> <br> <small>Created
										01.01.2015</small></td>
								<td>
									<ul class="list-inline">
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
									</ul>
								</td>
								<td class="project_progress">
									<div class="progress progress_sm">
										<div class="progress-bar bg-green" role="progressbar"
											data-transitiongoal="77" style="width: 77%;"
											aria-valuenow="75"></div>
									</div> <small>77% Complete</small>
								</td>
								<td>
									<button type="button" class="btn btn-success btn-xs">Success</button>
								</td>
								<td><form id="demo-form2" data-parsley-validate=""
										class="form-horizontal form-label-left" name=""
										action="../users/hallticket" method="GET">


										<input class="btn btn-primary" type="submit"
											value="Generate Hallticket">

									</form></td>
							</tr>
							<tr>
								<td>#</td>
								<td><a>Pesamakini Backend UI</a> <br> <small>Created
										01.01.2015</small></td>
								<td>
									<ul class="list-inline">
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
									</ul>
								</td>
								<td class="project_progress">
									<div class="progress progress_sm">
										<div class="progress-bar bg-green" role="progressbar"
											data-transitiongoal="60" style="width: 60%;"
											aria-valuenow="58"></div>
									</div> <small>60% Complete</small>
								</td>
								<td>
									<button type="button" class="btn btn-success btn-xs">Success</button>
								</td>
								<td><form id="demo-form2" data-parsley-validate=""
										class="form-horizontal form-label-left" name=""
										action="../users/hallticket" method="GET">


										<input class="btn btn-primary" type="submit"
											value="Generate Hallticket">

									</form></td>
							</tr>
							<tr>
								<td>#</td>
								<td><a>Pesamakini Backend UI</a> <br> <small>Created
										01.01.2015</small></td>
								<td>
									<ul class="list-inline">
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
									</ul>
								</td>
								<td class="project_progress">
									<div class="progress progress_sm">
										<div class="progress-bar bg-green" role="progressbar"
											data-transitiongoal="12" style="width: 12%;"
											aria-valuenow="9"></div>
									</div> <small>12% Complete</small>
								</td>
								<td>
									<button type="button" class="btn btn-success btn-xs">Success</button>
								</td>
								<td><form id="demo-form2" data-parsley-validate=""
										class="form-horizontal form-label-left" name=""
										action="../users/hallticket" method="GET">


										<input class="btn btn-primary" type="submit"
											value="Generate Hallticket">

									</form></td>
							</tr>
							<tr>
								<td>#</td>
								<td><a>Pesamakini Backend UI</a> <br> <small>Created
										01.01.2015</small></td>
								<td>
									<ul class="list-inline">
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
									</ul>
								</td>
								<td class="project_progress">
									<div class="progress progress_sm">
										<div class="progress-bar bg-green" role="progressbar"
											data-transitiongoal="35" style="width: 35%;"
											aria-valuenow="33"></div>
									</div> <small>35% Complete</small>
								</td>
								<td>
									<button type="button" class="btn btn-success btn-xs">Success</button>
								</td>
								<td><form id="demo-form2" data-parsley-validate=""
										class="form-horizontal form-label-left" name=""
										action="../users/hallticket" method="GET">


										<input class="btn btn-primary" type="submit"
											value="Generate Hallticket">

									</form></td>
							</tr>
							<tr>
								<td>#</td>
								<td><a>Pesamakini Backend UI</a> <br> <small>Created
										01.01.2015</small></td>
								<td>
									<ul class="list-inline">
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
									</ul>
								</td>
								<td class="project_progress">
									<div class="progress progress_sm">
										<div class="progress-bar bg-green" role="progressbar"
											data-transitiongoal="87" style="width: 87%;"
											aria-valuenow="85"></div>
									</div> <small>87% Complete</small>
								</td>
								<td>
									<button type="button" class="btn btn-success btn-xs">Success</button>
								</td>
								<td><form id="demo-form2" data-parsley-validate=""
										class="form-horizontal form-label-left" name=""
										action="../users/hallticket" method="GET">


										<input class="btn btn-primary" type="submit"
											value="Generate Hallticket">

									</form></td>
							</tr>
							<tr>
								<td>#</td>
								<td><a>Pesamakini Backend UI</a> <br> <small>Created
										01.01.2015</small></td>
								<td>
									<ul class="list-inline">
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
									</ul>
								</td>
								<td class="project_progress">
									<div class="progress progress_sm">
										<div class="progress-bar bg-green" role="progressbar"
											data-transitiongoal="77" style="width: 77%;"
											aria-valuenow="75"></div>
									</div> <small>77% Complete</small>
								</td>
								<td>
									<button type="button" class="btn btn-success btn-xs">Success</button>
								</td>
								<td><form id="demo-form2" data-parsley-validate=""
										class="form-horizontal form-label-left" name=""
										action="../users/hallticket" method="GET">


										<input class="btn btn-primary" type="submit"
											value="Generate Hallticket">

									</form></td>
							</tr>
							<tr>
								<td>#</td>
								<td><a>Pesamakini Backend UI</a> <br> <small>Created
										01.01.2015</small></td>
								<td>
									<ul class="list-inline">
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
										<li><img src="images/user.png" class="avatar"
											alt="Avatar"></li>
									</ul>
								</td>
								<td class="project_progress">
									<div class="progress progress_sm">
										<div class="progress-bar bg-green" role="progressbar"
											data-transitiongoal="77" style="width: 77%;"
											aria-valuenow="75"></div>
									</div> <small>77% Complete</small>
								</td>
								<td>
									<button type="button" class="btn btn-success btn-xs">Success</button>
								</td>
								<td><form id="demo-form2" data-parsley-validate=""
										class="form-horizontal form-label-left" name=""
										action="../users/hallticket" method="GET">


										<input class="btn btn-primary" type="submit"
											value="Generate Hallticket">

									</form></td>
							</tr>
						</tbody>
					</table>

				</div>
			</div>

		</div>
	</div>

	<!-- end project list -->

	<script type="text/javascript">
		/*  $(document).ready(function(){
			 $('#datatable').DataTable( {
			        dom: 'Bfrtip',
			        buttons: [
			            'copy', 'csv', 'excel', 'pdf', 'print'
			        ]
			    } );
		           });
		 */
	</script>

</body>
</html>