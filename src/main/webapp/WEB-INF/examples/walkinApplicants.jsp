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
<body class="nav-md">
	<!-- top tiles -->
	<!-- <div class="" style="border: 2px solid red"> -->
	<div class="page-title">
		<div class="title_left">
			<h3>Registered Students</h3>
		</div>
		<div class="title_right">
			<div
				class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search for...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">Go!</button>
					</span>
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>Registered Students</h2>
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



<table id="datatable" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>S_no</th>
                          <th>User Name</th>
                          <th>Application No</th>
                          <th>Exam Type</th>
                          <th>Gre Analytical</th>
                          <th>Gre Verbal</th>
                          
                                   <th>Payment Details</th>
                                    </tr>
                                    <%
												String query = "select greapplication.s_no,profile.user_name,greapplication.application_no,greapplication.exam_type,greapplication.payment_details,greapplication.gre_an,greapplication.gre_vq from profile,greapplication where profile.email_id=greapplication.email_id;";
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
														s = s + 1;
														s2 = rs.getString(2);
														s3 = rs.getString(3);
														s4 = rs.getString(4);
														s6 = rs.getString(6);
														s7 = rs.getString(7);
														s5 = rs.getString(5);
											%>
										</tr>
									</thead>

                                <tbody>
										<tr role="row" class="odd">
											<td tabindex="0" class="sorting_1"><%=s%></td>
											<td><%=s2%></td>
											<td><%=s3%></td>
											<td><%=s4%></td>
											<td><%=s6%></td>
											<td><%=s7%></td>
											<td><%=s5%></td>

										</tr>
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
									</tbody>

                              </table>
                           </div>
                        </div>
                     
                     <!-- end project list -->
                  </div>
                <script type="text/javascript">
                   
                    $(document).ready(function(){
                   	 $('#datatable').DataTable( {
                   	        dom: 'Bfrtip',
                   	        buttons: [
                   	            'copy', 'csv', 'excel', 'pdf', 'print'
                   	        ]
                   	    } );
                	           });
                    
                    </script>
       
   </body>
</html>