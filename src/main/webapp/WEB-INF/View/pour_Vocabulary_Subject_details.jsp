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


        
        	

        </script>
    </head>
    <body id="page-top"> 
    
<jsp:include page="header.jsp"></jsp:include>

        <header class="bg-primary bg-gradient text-white">
            <div class="container px-4 text-center" style=" background: #2d2c2b;">
                <h1 class="fw-bolder">vocabulary by topic</h1>
                <p class="lead"></p>
               
            </div>
        </header>
      
      
      
      
      
      		<c:forEach items="${content_pour}" var="content_pour">
                <div class="col-sm-6 col-md-4" > 
                
                    <div class="media services-wrap wow fadeInDown">
                        
   <p>${content_pour.num} .${content_pour.vocabularydetailsname} </p>
   <p> transcribe : ${content_pour.transcribe} </p>
   
      <p> transcribe : ${content_pour.mean} </p>
       <audio controls style="display: block;margin: auto;">
    <source src="${pageContext.request.contextPath}/multifile_Vocabulary/${content_pour.audiomp3}">
</audio>
 <img class="img-responsive" src="${pageContext.request.contextPath}/multifile_Vocabulary/${content_pour.image}" style=" width: 200px;height: 200px;margin: auto;">
                        
                       
                    </div>
                </div>
</c:forEach>
      
 
        <!-- Contact section-->
     
               <!-- Services section-->
        <section class="bg-light" id="services">
            <div class="container px-4" style="clear: both;">
                <div class="row gx-4 justify-content-center">
                    <div class="col-lg-8">
         

                    </div>
                </div>
            </div>
        </section>
        
        
        
          <!-- About comment-->
    

        
        
        
        
        
        
        
        
  <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
