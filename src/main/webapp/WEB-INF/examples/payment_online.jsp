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
						class="form-horizontal form-label-left" name="web"
						action="../paymentsonline/onlinepayment" method="POST">
						
						<hr>

						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="first-name">Amount<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" id="amt" name="amt" required="required"
									value="700" class="form-control col-md-7 col-xs-12" readonly />
							</div>
						</div>

						<input type="hidden" id="email" name="email"
							value=<%=session.getAttribute("EMAIL")%> />

						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="first-name">Application Number<span
								class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<select class="form-control" id="apno_list" name="apno_list">
									<%
										
										String query = "select * from gatapplication";
										String s1;
										int s = 0;
										try {
											Class.forName("com.mysql.jdbc.Driver");
											Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookurslot", "root", "root");
											Statement st = con.createStatement();

											ResultSet rs = st.executeQuery(query);

											
											while (rs.next()) {
												s1 = rs.getString(2);
												System.out.println("awsedrtfghuji  payonline"); 
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
								</select> </br>

								<div class="form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12"
										for="first-name"><span class="required">*</span> </label>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<input name="termsncond" id="termsncond" required
											title=" please read terms and conditions " type="checkbox"
											class="ace" required=""> <span class="lbl"> </span>I
										hereby declare that I agree to the terms and conditions of <strong>CIHL</strong>&nbsp;&nbsp;&nbsp;&nbsp;

									</div>
									<!-- <div class="col-md-6 col-sm-6 col-xs-12">
										<p><a href="http://msitprogram.net/terms_conditions.php"
											target="_blank" class="link">Read terms and conditions</a></p>
									</div> -->
								</div>


								<div class="form-group">
									<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
										<a href="#">
										
											<!-- href="https://pgi.billdesk.com/pgidsk/ProcessPayment;jsessionid=0000WwQRglPNMZ0dGLitBpuTkVU:1a7ou2u29?wpage=ORYScIwOtY3eB2seygOXIYoN">
											-->
											
											<input class="btn btn-primary" type="submit" 
											value="Pay Now">
										</a>
									</div>
									<div class="ln_solid"></div>
								</div>




							</div>


							</a>
						</div>
				</div>


				<%-- 			  
									   <%
       							String data=Connection.connection("gat/"+session.getAttribute("EMAIL"));
       					        System.out.println(data+   "              ****");
       					        JsonElement root = new JsonParser().parse(data);
       					        JsonArray  jsonArray = root.getAsJsonArray();   
       					        int length =jsonArray.size();    
       					        for(int i = 0; i < length; i++)
       					        {       
       					        	 JsonObject  jsonObject = jsonArray.get(i).getAsJsonObject();
       					        	 String s0=jsonObject.get("application_no").getAsString();
       					        	
       					        	%>
           							 <option value=<%=s0 %>><%=s0 %></option>
           							<%} %>
       					        	
       					        	 <%
       					        	String data1=Connection.connection("walkin/"+session.getAttribute("EMAIL"));
           					        System.out.println(data1+   "              ****");
           					        JsonElement root1 = new JsonParser().parse(data1);
           					        JsonArray  jsonArray1 = root1.getAsJsonArray();   
           					        int length1 =jsonArray1.size();    
           					        for(int i = 0; i < length1; i++)
           					        {       
           					        	 JsonObject  jsonObject1 = jsonArray1.get(i).getAsJsonObject();
           					        	 String s1=jsonObject1.get("application_no").getAsString();
       					        	
       							%>
       							 <option value=<%=s1 %>><%=s1 %></option>
       							<%} %>
       							
       							 <%
       					        	String data2=Connection.connection("gre/"+session.getAttribute("EMAIL"));
           					        System.out.println(data2+   "              ****");
           					        JsonElement root2 = new JsonParser().parse(data2);
           					        JsonArray  jsonArray2 = root2.getAsJsonArray();   
           					        int length2 =jsonArray2.size();    
           					        for(int i = 0; i < length2; i++)
           					        {       
           					        	 JsonObject  jsonObject2 = jsonArray2.get(i).getAsJsonObject();
           					        	 String s2=jsonObject2.get("application_no").getAsString();
       					        	
       							%>
       							 <option value=<%=s2 %>><%=s2 %></option>
       							<%} %>
								     
							    </select> --%>

				<div class="warning">
					<p>
						Note: After clicking on the "Pay" button, you will be directed to
						a secure gateway for payment. <strong>Don't Close the
							Browser or Stop Until the Page returns MSIT Website.</strong>
					</p>
				</div>
				</form>

			</div>



		</div>
	</div>

</body>
</html>