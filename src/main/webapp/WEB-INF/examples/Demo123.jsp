<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
           <h3>Exam Details</h3></div>
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
                    <h2>Input Mask</h2>
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
                    <form class="form-horizontal form-label-left" action="../walkindates/saveOrUpdate" method="POST">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-3">Walk in Dates</label>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                          <input type="text" class="form-control" data-inputmask="'mask': '99/99/9999'">
                          <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                        </div>
                      </div>
                                          
                      <div class="ln_solid"></div>

                      <div class="form-group">
                        <div class="col-md-9 col-md-offset-3">
                        <button class="btn btn-primary" type="reset">Delete</button>
                        <input type="submit" class="btn btn-success" value="Insert">
                        </div>
                      </div>
                      

                    </form>
                  </div>
                </div>
              </div>
      </div>
   </body>
</html>