<%-- 
    Document   : index
    Created on : 01 21, 18, 1:11:28 AM
    Author     : BavarianHotdog
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
      <jsp:include page="WEB-INF/header.jsp" /> 
    <title>DAR-AMIS | Sign In</title>
  </head>

  <body>

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  <div id="login-page">
              <h1 class="text-center text-bold">Department of Agrarian Reform</h1>
              <h2 class="text-center text-bold">Asset Management Information System</h2>
	  	<div class="container">
	  	
		      <form class="form-login" action="Login" method="post">
		        <h2 class="form-login-heading">Log In to Start your Session</h2>
		        <div class="login-wrap">
		            <input name="username" type="text" class="form-control" placeholder="User ID" autofocus>
		            <br>
		            <input name="password" type="password" class="form-control" placeholder="Password">
		            <label class="checkbox">
		                <span class="pull-right">
		                    <a data-toggle="modal" href="login.html#myModal"> Forgot Password?</a>
		
		                </span>
		            </label>
		            <button class="btn btn-theme btn-block" type="submit"><i class="fa fa-lock"></i> SIGN IN</button>
		            <hr>
		            <div class="registration">
		                Don't have an account yet?<br/>
		                <a class="" href="register.jsp">
		                    Create an account
		                </a>
		            </div>
		
		        </div>
                        
                        </form>
                        <form>
		
		          <!-- Modal -->
		          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
		              <div class="modal-dialog">
		                  <div class="modal-content">
		                      <div class="modal-header">
		                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                          <h4 class="modal-title">Forgot Password ?</h4>
		                      </div>
		                      <div class="modal-body">
		                          <p>Enter your e-mail address below to reset your password.</p>
		                          <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
		
		                      </div>
		                      <div class="modal-footer">
		                          <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
		                          <button class="btn btn-theme" type="button">Submit</button>
		                      </div>
		                  </div>
		              </div>
		          </div>
		          <!-- modal -->
		
		      </form>	  	
	  	
	  	</div>
	  </div>
    
    <jsp:include page="WEB-INF/footer.jsp" /> 


  </body>
</html>
