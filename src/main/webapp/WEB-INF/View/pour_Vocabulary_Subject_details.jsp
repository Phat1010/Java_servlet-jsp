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
        
        
        
                
        
        <!-- HeaderHeader -->
     	
	
	
	<!-- core CSS -->
    <link href="${pageContext.request.contextPath}/Template_frontend/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/Template_frontend/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/Template_frontend/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/Template_frontend/css/prettyPhoto.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/Template_frontend/css/main.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/Template_frontend/css/responsive.css" rel="stylesheet">
 
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/Template_frontend/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/Template_frontend/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/Template_frontend/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/Template_frontend/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/Template_frontend/images/ico/apple-touch-icon-57-precomposed.png">
  <!-- HeaderHeader -->
        



        <script type="text/javascript">


        function Display()
        {
        	
        	   var today = new Date();
        	   var date = today.getDate()+'-'+(today.getMonth()+1)+'-'+today.getFullYear();
        	   var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
        	   var dateTime = date+' '+time;
        	   
        	var xhttp;
        
        	var comment = document.myform.comment.value;
            
        	var id = document.myform.id.value;
            
        	var name = document.myform.name.value;
        	var url = "Comment_Grammar?comment="+comment+"&id="+id+"&name="+name+"&dateTime="+dateTime;
        	
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
        			document.getElementById("ketqua").innerHTML=data;
        		}
        			

        	}
        	xhttp.open("POST",url,true);
        	xhttp.send();

        }
        	

        </script>
    </head>
    <body id="page-top"> 
    
<jsp:include page="header.jsp"></jsp:include>

        <header class="bg-primary bg-gradient text-white">
            <div class="container px-4 text-center">
                <h1 class="fw-bolder">Welcome to Scrolling Nav</h1>
                <p class="lead">A functional Bootstrap 5 boilerplate for one page scrolling websites</p>
                <a class="btn btn-lg btn-light"  href="${pageContext.request.contextPath}/template_scroll/#about">Start scrolling!</a>
            </div>
        </header>
      
      
      
      
      
      		<c:forEach items="${content_pour}" var="content_pour">
                <div class="col-sm-6 col-md-4" > 
                
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left" >
   <p>${content_pour.num} .${content_pour.vocabularydetailsname} </p>
   <p> transcribe : ${content_pour.transcribe} </p>
   
      <p> transcribe : ${content_pour.mean} </p>
 <img class="img-responsive" src="${pageContext.request.contextPath}/multifile_Vocabulary/${content_pour.image}" style=" width: 200px;height: 200px;">
                        </div>
                        <div class="media-body">
                           <audio controls>
    <source src="${pageContext.request.contextPath}/multifile_Vocabulary/${content_pour.audiomp3}">
</audio>
                        
                        </div>
                    </div>
                </div>
</c:forEach>
      
 
        <!-- Contact section-->
     
               <!-- Services section-->
        <section class="bg-light" id="services">
            <div class="container px-4">
                <div class="row gx-4 justify-content-center">
                    <div class="col-lg-8">
                        <h2>Comment</h2>
                        <p id="account" style="color: red;"><%=session.getAttribute("accountsession")!=null?session.getAttribute("accountsession"):"user"  %></p>
	<% if(session.getAttribute("accountsession")==null) 
	{	
	%>
<form name="myform">
<textarea rows="5" cols="120" name="comment"></textarea>


<br/>
<br/>
<input type="button" value="Post" onclick="Comment()" disabled="disabled"/>

</form>

<% }
	else{
		
	
%>
<form name="myform">


<textarea rows="5" cols="120" name="comment"></textarea>


<br/>
<br/>
<input type="button" value="comment" onclick="Display()" />
<input type="text" name="id" value="${idgrammar}" hidden="true">
<input type="text" name="name" value="<%= session.getAttribute("accountsession")%>" hidden="true"> 

</form>
	
	



<%} %>

                    </div>
                </div>
            </div>
        </section>
        
        
        
          <!-- About comment-->
    
        <section id="about">
            <div class="container px-4">
                <div class="row gx-4 justify-content-center">
                    <div class="col-lg-8">
                    <p id="ketqua">  <jsp:include page="comment-Grammar.jsp"/></p>
                   
                        
                        <p class="lead" >This is a great place to talk about your webpage. This template is purposefully unstyled so you can use it as a boilerplate or starting point for you own landing page designs! This template features:</p>
                        <ul>
                            <li>Clickable nav links that smooth scroll to page sections</li>
                            <li>Responsive behavior when clicking nav links perfect for a one page website</li>
                            <li>Bootstrap's scrollspy feature which highlights which section of the page you're on in the navbar</li>
                            <li>Minimal custom CSS so you are free to explore your own unique design options</li>
                        </ul>
                        
                 
                    </div>
                </div>
            </div>
        </section>
        
        
        
        
        
        
        
        
        
  <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
