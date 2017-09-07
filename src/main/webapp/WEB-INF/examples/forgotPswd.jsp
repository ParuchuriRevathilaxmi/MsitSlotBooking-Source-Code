<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                 
                  <div class="x_content">
                    <br />
                    <form:form name="sendpswd" action="sendpswd" method="POST">	
                       <p style="size:8px;color:red;">${error}</p>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Enter Your Email Id <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="email"  required="required" name="email"  class="form-control col-md-7 col-xs-12" >
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
						  <button class="btn btn-primary" type="reset">Reset</button>
                          <input type="submit" class="btn btn-success" value="Submit">
                        </div>
                      </div>
                      </form:form>

                    </div>
                    
                  </div>
                </div>
              </div>
</body>
</html>