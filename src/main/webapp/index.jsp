<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>MSIT ADMISSIONS</title>
  <meta name="description" content="User login page">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <!-- bootstrap & fontawesome -->
  <link rel="stylesheet" href="resources/assets/MSIT ADMISSIONS_files/bootstrap.css">
  <link rel="stylesheet" href="resources/assets/MSIT ADMISSIONS_files/font-awesome.css">
  <!-- text fonts -->
  <link rel="stylesheet" href="resources/assets/MSIT ADMISSIONS_files/ace-fonts.css">
  <!-- ace styles -->
  <link rel="stylesheet" href="resources/assets/MSIT ADMISSIONS_files/ace.css">
  <link rel="stylesheet" href="resources/assets/MSIT ADMISSIONS_files/ace-rtl.css">
  <link rel="stylesheet" href="resources/assets/MSIT ADMISSIONS_files/index.css">
  </head>
 <body class="login-layout" >
 
    <div class="main-container">
      <div class="main-content">
        <div class="row">
          <table border="0" width="80%" align="center">
            <tbody>
              <tr>
                <td width="100%">
                  <br><br><br>
                  <div id="login-box" class="login-box visible widget-box no-border" style="width:100%;">
                    <div class="widget-body">
                      <div class="widget-main">
                        <div class="center">
                          <img src="resources/assets/MSIT ADMISSIONS_files/logo.gif"><img src="resources/assets/MSIT ADMISSIONS_files/UniversityLogos.png">
                        </div>
                        <h5 class="center header blue bigger" style="font-weight:bold;">
                          <div class="space-4"></div>
                        </h5>
                        <div class="clearfix center">
                          <table width="100%">
                            <tbody>
                              <tr>
                                <td align="center" width="60%">
                                  <img id="imagemain" src="resources/assets/MSIT ADMISSIONS_files/msitprocess.png">
                                </td>
                                <td align="center" width="40%">
                                  <p></p>
                                  <h2>Welcome</h2>
                                  <p></p>
                                  <p></p>
                                  <h2>MSIT ADMISSION 2017</h2>
                                  <p></p>
                                  <br><br>
                                  <form:form action="users/log"><input type="submit" class="loginBtn" value="LOGIN" ></form:form>
                                  &nbsp;&nbsp;&nbsp;&nbsp;
                                  <form:form action="users/reg"><input type="submit" class="registerBtn" value="REGISTER"></form:form>
                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                        <h5 class="center header blue bigger">
                          <div class="space-4"></div>
                        </h5>
                        <h6 class="center bigger">
                          <i class="ace-icon fa fa-envelope bigger-120 red"></i> enquiries@msitprogram.net												&nbsp;&nbsp;|&nbsp;&nbsp;
                          <i class="ace-icon fa fa-phone bigger-120 red"></i> 040-23001970, 7799834583, 7799834585 												
                        </h6>
                        <div class="space-4"></div>
                      </div>
                      <!-- /.widget-main -->		
                    </div>
                    <!-- /.widget-body -->
                  </div>
                  <!-- /.login-box -->
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        <!-- /.row -->
      </div>
      <!-- /.main-content -->
    </div>
    <!-- /.main-container -->
    <!-- basic scripts -->
    <!--[if !IE]> -->
    <script type="text/javascript">
      window.jQuery || document.write("<script src='../assets/js/jquery.js'>"+"<"+"/script>");
    </script><script src="resources/assets/MSIT ADMISSIONS_files/jquery.js.download"></script>
    <script type="text/javascript">
      if('ontouchstart' in document.documentElement) document.write("<script src='../assets/js/jquery.mobile.custom.js'>"+"<"+"/script>");
    </script>
    <script src="resources/assets/MSIT ADMISSIONS_files/bootstrap.js.download"></script>
    <script src="resources/assets/MSIT ADMISSIONS_files/jquery-ui.custom.js.download"></script>
    <script src="resources/assets/MSIT ADMISSIONS_files/jquery.ui.touch-punch.js.download"></script>
    <script src="resources/assets/MSIT ADMISSIONS_files/jquery.gritter.js.download"></script>
    <script src="resources/assets/MSIT ADMISSIONS_files/bootbox.js.download"></script>
    <script src="resources/assets/MSIT ADMISSIONS_files/jquery.easypiechart.js.download"></script>
    <script src="resources/assets/MSIT ADMISSIONS_files/bootstrap-datepicker.js.download"></script>
    <script src="resources/assets/MSIT ADMISSIONS_files/jquery.hotkeys.js.download"></script>
    <script src="resources/assets/MSIT ADMISSIONS_files/bootstrap-wysiwyg.js.download"></script>
    <script src="resources/assets/MSIT ADMISSIONS_files/select2.js.download"></script>
    <script src="resources/assets/MSIT ADMISSIONS_files/fuelux.spinner.js.download"></script>
    <script src="resources/assets/MSIT ADMISSIONS_files/bootstrap-editable.js.download"></script>
    <script src="resources/assets/MSIT ADMISSIONS_files/ace-editable.js.download"></script>
    <script src="resources/assets/MSIT ADMISSIONS_files/jquery.maskedinput.js.download"></script>
    <!-- inline scripts related to this page -->
    <script type="text/javascript">
      jQuery(function($) {
      	
       $(document).on('click', '.toolbar a[data-target]', function(e) {
      	e.preventDefault();
      	var target = $(this).data('target');
      	$('.widget-box.visible').removeClass('visible');//hide others
      	$(target).addClass('visible');//show target
       });
      });      
    </script>
    <script src="resources/assets/MSIT ADMISSIONS_files/jquery.validate.js.download"></script>
    <script src="resources/assets/MSIT ADMISSIONS_files/sha512.js.download"></script>
    <script src="resources/assets/MSIT ADMISSIONS_files/validation.js.download"></script>
  </body>
</html>