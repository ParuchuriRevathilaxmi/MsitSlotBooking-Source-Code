<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.restapi.Connection"%>
<%@ page import="com.google.gson.*" %>
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
                <h3>Plain Page</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
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
                    <h2>Plain Page</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <br>
                    <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left"  name="emailcheck" action="../walkinapplication/saveOrUpdate" method="POST">
 <input type="hidden" id="email" name="email" value=<%=session.getAttribute("EMAIL")  %> />
										<input type="hidden" id="walk" name="walk" value="walkin" />
                     					<input type="hidden" id="payment" name="payment" value="pending" />
                     					<div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Select Test Location<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        <select	class="form-control" id="tc" name="tc">
											<option value=''>Select Your Test Center</option>
											<option value='Hyderabad'>Hyderabad</option>
											<option value='Kakinada'>Kakinada</option>
										</select><br>
                           
                        </div>
                      </div>
                      <label>Date </label> &emsp;&nbsp;
										<input type="text" id="datepicker" name="walkindate"> <br>
										
										<%
											String firstdate=(String)session.getAttribute("firstdate");
											if(firstdate==null)
											{
												firstdate="0";
											}
										
										%>
										
										
										<input type="hidden" id="firstdate" name="firstdate" value=<%=firstdate %> readonly/>
										&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
										
										
										<div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Time<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        <select	class="form-control" id="timeno" name="timeno">
											<option value=''>Select Your slot time</option>
											<option value="9:00 AM">9:00 A.M.</option>
											<option value="1:00 PM">1:00 P.M.</option>
										</select><br>
                           
                        </div>
                      </div>
										
										
										
										
                     <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button class="btn btn-primary" type="button">Cancel</button>
						
                         <input class="btn btn-primary" type="submit"  onclick="gresubmit();" value="Submit" >
                        </div>
                      </div>
                        
                      <div class="ln_solid"></div>
                    </form>
                    
                    <div class="table-responsive">
                      <table class="table table-striped jambo_table bulk_action">
                        <thead>
                          <tr class="headings">
                            <th>
                              <div class="icheckbox_flat-green" style="position: relative;"><input id="check-all" class="flat" style="position: absolute; opacity: 0;" type="checkbox"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
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
                              <div class="icheckbox_flat-green" style="position: relative;"><input class="flat" name="table_records" style="position: absolute; opacity: 0;" type="checkbox"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div>
                            </td>
                           <%--  <td class=" "><%=i+1 %></td>
                            <td class=" "><%=s0 %></td>
                            <td class=" "><%=s1 %>
                            </td>
                            <td class=" "><%=s2 %></td>
                            <td class=" "><%=s3 %></td>
                             <td class=" "><%=s4 %></td> --%>
                            
                          </tr>
                        
                        </tbody>
                      </table>
                    </div>
                   
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>



<script type="text/javascript">

$(document).ready(function(){
	   
	var from;
	var date;
	
	if($("#firstdate").val()=="0")
	{
		date=0;
	} 
	else
	{
		from = $("#firstdate").val().split("-");
	 	date = new Date(from[2], from[1] - 1, from[0]);
	 	date = date.getDate()+6;
	}
   
    $(function(){
     $("#datepicker").datepicker({
    	 minDate: date,
		dateFormat: 'dd-mm-yy',
		maxDate: "+3M",
    });
   });
	});

</script>
</body>
</html>