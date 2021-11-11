<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | Corlate</title>
	
	
	
	
	
	
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

  <link href="${pageContext.request.contextPath}/cssExtra/paginationTemp.css" rel="stylesheet">
  <!-- pagination -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  <!-- pointer block -->

      <link href="${pageContext.request.contextPath}/cssExtra/poiterBlock.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/cssExtra/centerbutton.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/cssExtra/hundered_pagination.css" rel="stylesheet">




   
 
    </head>
    
    

    
  
<body class="homepage">
<jsp:include page="header.jsp"></jsp:include>

	<div class="search" style="  background: #191919;
}">
                                <form role="form" action="Exam_DisplayList" method="post" name="myform">
                                    <input type="text" class="search-form" autocomplete="off" placeholder="Search" id="searchfind" name="search">
                                    <i class="fa fa-search"></i>
                                    
                                     <input type="submit" value="find">
                                </form>
                           </div>


<form action="pagination" method="post" name="myform">
    <section id="services" class="service-item">
	   <div class="container">
            <div class="center wow fadeInDown">
                <h2>List Exam</h2>
                <p class="lead">This web site is for people studying for an English language exam.<br> These pages contain free online practice tests for the most important international </p>
            	 <!--  area find grammar -->
            	   <!-- <input type="text" name="search" onkeyup="search()"> --> 
            </div>


 <!--  area find grammar -->





		<h1 class="notification" style="text-align: center;"> <%=request.getAttribute("msglistexam")!=null?request.getAttribute("msglistexam"):""  %></h1>
<div id="findgrammar">

	<% if(session.getAttribute("accountsession")==null) 
	{	
	%>
	<p style="color: red; text-align: center;" >You need to log in to continue </p>
	  <div class="row">
         
				<c:forEach items="${listexamination}" var="listTitle">
                <div class="col-sm-6 col-md-4" > 
                
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left" >
                        
                        
                        
                        
                        
                          <a href=""> <img class="img-responsive" src="${pageContext.request.contextPath}/imageExamUpload/${listTitle.examinationimage}"></a> 
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" >${listTitle.examinationname}</h3>
                        
                        </div>
                    </div>
                </div>
</c:forEach>
                                                      
            </div>
	
	

<% }
	else{%>
		
		  <div class="row">
         
				<c:forEach items="${listexamination}" var="listTitle">
                <div class="col-sm-6 col-md-4" > 
                
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left" >
                        
                        
                        
                        
                        
                          <a href="practice_Exam?id=${listTitle.idexamination}&pageid=1"> <img class="img-responsive" src="${pageContext.request.contextPath}/imageExamUpload/${listTitle.examinationimage}"></a> 
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" >${listTitle.examinationname}</h3>
                        
                        </div>
                    </div>
                </div>
</c:forEach>
                                                      
            </div>
		
<%	}
		%>
		
	
</div>

         <!--/.row-->
            <!-- PAGINATION -->


<div class="buttonprenex"> 
 <ul class="pagination">
  	<c:if test="${currentpage==1}">
  	

    <li class="disabled"><a class="page-link" href="#">Previous</a></li>
   <!--  <li ><a class="page-link" href="pagination?pageid=1">1</a></li>
    <li ><a class="page-link" href="pagination?pageid=2">2</a></li>
    <li ><a class="page-link" href="pagination?pageid=3">3</a></li> -->
    <li ><a class="page-link" href="Exam_DisplayList?pageid=${currentpage+1}">Next</a></li>
 	   	
  	</c:if>
  	<c:if test="${currentpage == totalpage &&currentpage!=1}">
  	

    <li class=""><a class="page-link" href="Exam_DisplayList?pageid=${currentpage-1}">Previous</a></li>
      <!--  <li ><a class="page-link" href="pagination?pageid=1">1</a></li>
    <li ><a class="page-link" href="pagination?pageid=2">2</a></li>
    <li ><a class="page-link" href="pagination?pageid=3">3</a></li> -->
    <li class="disabled"><a class="page-link" href="#">Next</a></li>
 	   	
  	</c:if>
  		<c:if test="${(currentpage >1) && (currentpage <totalpage)}">
  	

    <li class="page-item"><a class="page-link" href="Exam_DisplayList?pageid=${currentpage-1}">Previous</a></li>
   <!--  <li ><a class="page-link" href="pagination?pageid=1">1</a></li>
    <li ><a class="page-link" href="pagination?pageid=2">2</a></li>
    <li ><a class="page-link" href="pagination?pageid=3">3</a></li> -->
    <li class="page-item"><a class="page-link" href="Exam_DisplayList?pageid=${currentpage+1}">Next</a></li>
 	   	
  	</c:if>
  </ul>
 
 </div>
<!--/ PAGINATION -->


            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                <br><br><br><br><br><br>
        </div><!--/.container-->
    </section><!--/#services-->















</form>
<!--/ moDEL BOOTSTRAP -->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
