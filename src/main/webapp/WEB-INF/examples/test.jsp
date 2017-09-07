<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.restapi.Connection"%>
<%@ page import="com.google.gson.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.3.1/css/buttons.dataTables.min.css">

</head>
<body>
<table id="datatable" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>S_no</th>
                          <th>Position</th>
                          <th>Office</th>
                          <th>Age</th>

                          <th>Salary</th>
                           </tr>
                              </thead>
                              <tbody>
                          <%
       							String data=Connection.connection("gat");
       					        System.out.println(data+   "              ****");
       					        JsonElement root = new JsonParser().parse(data);
       					        JsonArray  jsonArray = root.getAsJsonArray();   
       					        int length =jsonArray.size();    
       					        for(int i = 0; i < length; i++)
       					        {       
       					        	 JsonObject  jsonObject = jsonArray.get(i).getAsJsonObject();
       					        	 String s0=jsonObject.get("application_no").getAsString();
       					        	String s1=jsonObject.get("email_id").getAsString();
       					        	String s2=jsonObject.get("test_center").getAsString();
       					        	String s3=jsonObject.get("payment_details").getAsString();
       							%>
                                
                                 <tr>
                                    <td><%=i+1%></td>
                                    <td><%=s0%></td>
                                    <td><%=s1%></td>
                                    <td><%=s2%></td>
                                    <td><%=s3%></td>
                                 </tr>
                                  <%
	                             }
	                             %>
                              </tbody>
                    </table>
                    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
                    <script type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
                    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/dataTables.buttons.min.js"></script>
                    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.flash.min.js"></script>
                    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
                    <script type="text/javascript" src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.27/build/pdfmake.min.js"></script>
                    <script type="text/javascript" src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.27/build/vfs_fonts.js"></script>
                    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.html5.min.js"></script>
                    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.print.min.js"></script>
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