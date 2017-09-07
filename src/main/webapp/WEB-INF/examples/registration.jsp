<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MSIT ADMISSIONS</title>

    <!-- Bootstrap -->
    <link href="../resources/assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../resources/assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../resources/assets/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="../resources/assets/vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../resources/assets/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
             <form:form name="emailcheck" action="emailcheck" method="POST">
              <h1>Create Account</h1>
              <p style="size:8px;color:green;">${sucess}</p>
              <p style="size:8px;color:red;">${error}</p>
              <div>
                <input type="email" class="form-control" placeholder="Email" required=""  name="email" />
              </div>
              
              <div>
              <input type="submit" value="Submit" class="btn btn-default submit">
             <!--    <a class="btn btn-default submit" href="index.html">Submit</a> -->
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                
                  <a href="../users/reglog" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
 
                  <p>
               MSIT Admissions 
               &copy; <script>document.write(new Date().getFullYear())</script>
            </p>
                </div>
              </div>
            </form:form>
          </section>
        </div>

        <%-- <div id="register" class="animate form registration_form">
          <section class="login_content">
           
            <form:form action="valid"  commandName="userForm">
              <h1>Login Form</h1>
               <p style="size:8px;color:green;">${sucess}</p>
                       <p style="size:8px;color:red;">${error}</p>
              <div>
                <input type="text" class="form-control" placeholder="Username" required="" name="email_id"/>
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="" name="password"/>
              </div>
              <div>
              <input type="submit" class="btn btn-default submit" value="Log in">
               <!--  <a class="btn btn-default submit" href="index.html">Log in</a> -->
                <a class="reset_pass"  href="frgtpswd">Lost your password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                  <a href="../users/log#signup" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                 <p>
                MSIT Admissions &copy; <script>document.write(new Date().getFullYear())</script>
              </p>
                </div>
              </div>
            </form:form>
          </section>
        </div> --%>
      </div>
    </div>
  </body>
</html>