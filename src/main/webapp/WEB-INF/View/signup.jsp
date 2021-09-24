<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form by Colorlib</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Template_register/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link href="../template_admin/bootstrap/dist/css/bootstrap-reboot.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/Template_register/css/style.css">
      
      <link rel="stylesheet" href="${pageContext.request.contextPath}/cssExtra/error-signup.css">
      <script type="text/javascript">
  	function Validate()
	{
		var username = document.myform.name.value;
		var email = document.myform.email.value;
		var password = document.myform.pass.value;
		var repass = document.myform.repass.value;
		
		if (username == "")
		{
			document.getElementById("errorname").innerHTML = "not to blank username";
			return false;
		}
		else 
		{
			document.getElementById("errorname").innerHTML = "";
		}
		
		
		
		
		
		if (email == "")
		{
			document.getElementById("erroremail").innerHTML = "not to blank email";
			return false;
			
		}
		else 
		{
			document.getElementById("erroremail").innerHTML = "";
			
		}
		
		
		if (password == "")
		{
			document.getElementById("errorpassword").innerHTML = "not to blank password";
			return false;
			
		}
		else 
		{
			document.getElementById("errorpassword").innerHTML = "";
			if (password.length<=6)
				
			{
				document.getElementById("errorpassword").innerHTML = "Large length over 6";
				return false;
			}
			else if(password !=repass ){
				document.getElementById("errorrepassword").innerHTML = "Re-entered password is wrong";
				return false;
				
			}
			else if(password ==repass )
				{
				document.getElementById("errorrepassword").innerHTML = "";
				}
			else 
			{
				document.getElementById("errorpassword").innerHTML = "";
				
			}
		}
	}
	
	</script>
</head>
<body>

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form name="myform" method="POST" class="register-form" id="register-form" action="SignUpController" onsubmit="return Validate()">
                            <div class="form-group">
                            
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="name" placeholder="Your Name" onkeyup="Validate()"/>
                               
                                
                            </div>
                            <div class="form-group">
                          
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email" onkeyup="Validate()"/>
                           		
                            </div>
                            <div class="form-group">
                            	
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="text" name="pass" id="pass" placeholder="Password" onkeyup="Validate()"/>
                            
                            </div>
                            <div class="form-group">
                            
                                <label for="repass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="text" name="repass" id="repass" placeholder="Repeat your password" onkeyup="Validate()"/>
                            
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="error-singup">
                             <p id="errorname"></p>
                              <p id="erroremail"></p>
                            <p id="errorpassword"></p>
                            	<p id="errorrepassword"></p>
                            		
                            </div>
                            
                            
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Register"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="${pageContext.request.contextPath}/Template_register/images/signup-image.jpg" alt="sing up image"></figure>
                        <a href="LoginForward" class="signup-image-link">I am already member</a>
                    </div>
                </div>
                     <div style="text-align: center"><%= request.getAttribute("mgsregister")!=null?request.getAttribute("mgsregister"):""  %></div> 
            </div>
        </section>
        


 

    </div>

    <!-- JS -->
    <script src="${pageContext.request.contextPath}/Template_register/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/Template_register/js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>