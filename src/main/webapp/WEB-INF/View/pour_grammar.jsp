<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        
        
        <title>Scrolling Nav - Start Bootstrap Template</title>
        <link rel="icon" type="image/x-icon"  href="${pageContext.request.contextPath}/template_scroll/assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link  href="${pageContext.request.contextPath}/template_scroll/css/styles.css" rel="stylesheet" />
        
        <script type="text/javascript">
        


        function comment()
        {
        	var xhttp;

        	var comment = document.myform.comment.value;
        	
        	var url = "Comment_Grammar?comment="+comment+"";
        	
        	if (window.XMLHttpRequest) 
        	{        
        	    xhttp = new XMLHttpRequest(); 
        	} 
        	else
        	{            
        		xhttp = new ActiveXObject("Microsoft.XMLHTTP");
        	}
        	
        	
        	xhttp.onreadystatechange= function()
        	{
        		if (xhttp.readyState == 4)
        		{
        			var data = xhttp.responseText;
        			document.getElementById("result").innerHTML=data;
        		}
        			

        	}
        	xhttp.open("POST",url,true);
        	xhttp.send();

        }
        </script>
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
            <div class="container px-4">
                <a class="navbar-brand"  href="${pageContext.request.contextPath}/template_scroll/#page-top">Start Bootstrap</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link"  href="${pageContext.request.contextPath}/template_scroll/#about">About</a></li>
                        <li class="nav-item"><a class="nav-link"  href="${pageContext.request.contextPath}/template_scroll/#services">Services</a></li>
                        <li class="nav-item"><a class="nav-link"  href="${pageContext.request.contextPath}/template_scroll/#contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-primary bg-gradient text-white">
            <div class="container px-4 text-center">
                <h1 class="fw-bolder">Welcome to Scrolling Nav</h1>
                <p class="lead">A functional Bootstrap 5 boilerplate for one page scrolling websites</p>
                <a class="btn btn-lg btn-light"  href="${pageContext.request.contextPath}/template_scroll/#about">Start scrolling!</a>
            </div>
        </header>
      
 
        <!-- Contact section-->
            <c:forEach items="${content_pour}" var="content_pour">
        <section id="contact">
            <div class="container px-4">
                <div class="row gx-4 justify-content-center">
                    <div class="col-lg-8">
                        <h2>${content_pour.grammarguidename } </h2>
                        <c:set var="content" value="${fn:replace(content_pour.content,n_in_database,n_in_html) }"></c:set>
                        <p class="lead"><c:out value="${ content}" escapeXml="false"></c:out> </p>
                        
                    </div>
                </div>
            </div>
        </section>
        </c:forEach>
               <!-- Services section-->
        <section class="bg-light" id="services">
            <div class="container px-4">
                <div class="row gx-4 justify-content-center">
                    <div class="col-lg-8">
                        <h2>Comment</h2>
                        <p id="account">commentdata21</p>
<form name="myform">


<textarea rows="10" cols="100" name="comment"></textarea>


<br/>
<br/>
<input type="button" value="Post" onclick="Comment()"/>

</form>
                    </div>
                </div>
            </div>
        </section>
        
        
        
          <!-- About comment-->
    
        <section id="about">
            <div class="container px-4">
                <div class="row gx-4 justify-content-center">
                    <div class="col-lg-8">
                        <h2 >About this page</h2>
                        <p class="lead">This is a great place to talk about your webpage. This template is purposefully unstyled so you can use it as a boilerplate or starting point for you own landing page designs! This template features:</p>
                        <ul>
                            <li>Clickable nav links that smooth scroll to page sections</li>
                            <li>Responsive behavior when clicking nav links perfect for a one page website</li>
                            <li>Bootstrap's scrollspy feature which highlights which section of the page you're on in the navbar</li>
                            <li>Minimal custom CSS so you are free to explore your own unique design options</li>
                        </ul>
                        
                       <p id="result"></p>
                    </div>
                </div>
            </div>
        </section>
        
        
        
        
        
        
        
        
        
        
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container px-4"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="${pageContext.request.contextPath}/template_scroll/js/scripts.js">
        </script>
    </body>
</html>
