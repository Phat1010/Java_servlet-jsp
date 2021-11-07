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
                  
                   <div id="ketqua">
                   
                   
                   
                   
                     <c:forEach items="${listcomment }" var="listcomment">
                <!-- COMMENT 1 - START -->
                <div class="media">
                    <a class="pull-left" href="#"><img class="media-object" src="${pageContext.request.contextPath}/imagesmall/comment.png" alt=""></a>
       
                    <div class="media-body">
                        <h4 class="media-heading">${listcomment.comment_Grammar_Username}</h4>
                        <p>${listcomment.comment_Grammarcontent}</p>
                        <ul class="list-unstyled list-inline media-detail pull-left">
                            <li><i class="fa fa-calendar"> ${listcomment.times}</i></li>
                            <li><i class="fa fa-thumbs-up"></i>1</li>
                        </ul>
                        <ul class="list-unstyled list-inline media-detail pull-right">
                            <li class=""><a href="">Like</a></li>
                            <li class=""><a href="">Reply</a></li>
                        </ul>
                    </div>
                </div>
                <!-- COMMENT 1 - END -->
                 </c:forEach>
                   
                   </div>
                        
                       
                 
                    </div>
                </div>
            </div>
        </section>
        
        
        
        
        
        
        
        
        
  <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
