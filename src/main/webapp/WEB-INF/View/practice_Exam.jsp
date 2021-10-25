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
	  <link href="${pageContext.request.contextPath}/cssExtra/practiceexam.css" rel="stylesheet">
	  	  <link href="${pageContext.request.contextPath}/cssExtra/exam.css" rel="stylesheet">
	  	   <link href="${pageContext.request.contextPath}/cssExtra/practiceexam2.css" rel="stylesheet">
	  	     	   <link href="${pageContext.request.contextPath}/cssExtra/practiceexam3.css" rel="stylesheet">
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

<!-- Count Down timmer --><!-- Count Down timmer -->

  <script src="${pageContext.request.contextPath}/countdowntimmer/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/countdowntimmer/jquery.simple.timer.js"></script>
     <link href="${pageContext.request.contextPath}/countdowntimmer/timmer.css" rel="stylesheet">
    <script>
  $(function(){
    $('.timer').startTimer();
  });
</script>

<script type="text/javascript">
	function auto_submit() {
		document.form.submit();
	}
	function auto_submit1() {
		setTimeout(auto_submit, 500000);
	}
	
</script>




<!-- Count Down timmer --><!-- Count Down timmer -->
    </head>
    <body onload="auto_submit1()">
    <jsp:include page="header.jsp"></jsp:include>
    
    <div class="timer" data-seconds-left="25"></div>
    <div class="left">
    
    
    
    
    
   
    
<c:forEach items="${listpourdata}" var="list">

	<img src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>
	
	<audio controls>
    <source src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
</audio>
	

	<p >paragraph:  ${list.paragraph}</p>

	 <p > Question:${list.question}</p>

	A. ${list.option1}
	<br>
	B. ${list.option2}
	<br>
	C. ${list.option3}
	
	<br>
	D. ${list.option4}
	<br>

</c:forEach>
    
    
<ul class="pagination pull-right" style="width: 57%;">

  

  <c:if test="${currentpage==1}">
  	

    <li class="disabled"><a class="page-link" href="#">Previous</a></li>
   <!--  <li ><a class="page-link" href="pagination?pageid=1">1</a></li>
    <li ><a class="page-link" href="pagination?pageid=2">2</a></li>
    <li ><a class="page-link" href="pagination?pageid=3">3</a></li> -->
    <li ><a class="page-link" href="practice_Exam?id=${id}&pageid=${currentpage+1}">Next</a></li>
 	   	
  	</c:if>
  	<c:if test="${currentpage == totalpage}">
  	

    <li class=""><a class="page-link" href="practice_Exam?id=${id}&pageid=${currentpage-1}">Previous</a></li>
      <!--  <li ><a class="page-link" href="pagination?pageid=1">1</a></li>
    <li ><a class="page-link" href="pagination?pageid=2">2</a></li>
    <li ><a class="page-link" href="pagination?pageid=3">3</a></li> -->
    <li class="disabled"><a class="page-link" href="#">Next</a></li>
 	   	
  	</c:if>
  		<c:if test="${(currentpage >1) && (currentpage <totalpage)}">
  	

    <li class="page-item"><a class="page-link" href="practice_Exam?id=${id}&pageid=${currentpage-1}">Previous</a></li>
   <!--  <li ><a class="page-link" href="pagination?pageid=1">1</a></li>
    <li ><a class="page-link" href="pagination?pageid=2">2</a></li>
    <li ><a class="page-link" href="pagination?pageid=3">3</a></li> -->
    <li class="page-item"><a class="page-link" href="practice_Exam?id=${id}&pageid=${currentpage+1}">Next</a></li>
 	   	
  	</c:if>
  
</ul>
     
</div>
            
            

    
    
    
    
    
    
    
<form action="practice_Exam" method="post" name="form">
<input type="text" value="${accountsession}" name="namesession" hidden="true">
    <div class="right">
    <div class="container mt-sm-5 my-1">
    <div class="question ml-sm-5 pl-sm-5 pt-2">
    
     
<c:forEach items="${listpouranswer}" var="list">
        <div class="ml-md-3 ml-sm-3 pl-md-5 pt-sm-0 pt-3" id="options" style="overflow: ::-webkit-scrollbar"> 
        <label class="options"> <B>${list.num}</B> </label> 
        <label class="options"><input type="radio" name="${list.idexaminationquestion}" value="${list.option1}"> <span class="checkmark"></span> </label> 
        <label class="options"><input type="radio" name="${list.idexaminationquestion}" value="${list.option2}"> <span class="checkmark"></span> </label>
         <label class="options"><input type="radio" name="${list.idexaminationquestion}" value="${list.option3}"> <span class="checkmark"></span> </label> 
         <label class="options"> <input type="radio" name="${list.idexaminationquestion}" value="${list.option4}"> <span class="checkmark"></span> 
         </label> </div>
         
         </c:forEach>
         
  
         
    </div>
    
 </div> 
    </div>


 
		<input type="submit" class="btn btn-outline-primary mr-md-3 mb-md-0 mb-2" value="submit">			
				
				<input type="text" value="<%=request.getParameter("id")%>" name="idExam" hidden="true">
				<input type="text" value="${get_Id_Head}" name="idExam" hidden="true">
				<input type="text" value="<%=request.getAttribute("get_Id_Last")%>" name="idExam" hidden="true">
				</form>
				
				
				
				
		
				
				
				
         <div class="clearfix"></div>
      
            
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>