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


<!-- Count Down timmer --><!-- Count Down timmer -->
    </head>
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

	<input type="radio" name="${list.idexaminationquestion}" value="${list.option1}">${list.option1}
	<br>
	<input type="radio" name="${list.idexaminationquestion}" value="${list.option2}">${list.option2}
	<br>	<input type="radio"  name="${list.idexaminationquestion}" value="${list.option3}">${list.option3}
	<br>	<input type="radio"  name="${list.idexaminationquestion}" value="${list.option4}">${list.option4}
	<br>

</c:forEach>
    
    
     
</div>
            
            

    
    
    
    
    
    
    

    <div class="right">
    <div class="container mt-sm-5 my-1">
    <div class="question ml-sm-5 pl-sm-5 pt-2">
      <!--  -->
       <%=  request.getAttribute("currentstartpage") %>
          curent page <%=  request.getAttribute("currentpage") %>
           total pagge  <%=  request.getAttribute("totalpage") %>
                <%=  request.getAttribute("pageid") %>
                   current page 1 <%=  request.getAttribute("currentpag1") %>
                   total recore <%=  request.getAttribute("total_record") %>
          <h1>alo</h1>
<c:forEach items="${listpouranswer}" var="list">
        <div class="ml-md-3 ml-sm-3 pl-md-5 pt-sm-0 pt-3" id="options"> 
        <label class="options"> <B>${list.num}</B> </label> 
        <label class="options"><input type="radio" name="${list.idexaminationquestion}"> <span class="checkmark"></span> </label> 
        <label class="options"><input type="radio" name="${list.idexaminationquestion}"> <span class="checkmark"></span> </label>
         <label class="options"><input type="radio" name="${list.idexaminationquestion}"> <span class="checkmark"></span> </label> 
         <label class="options"> <input type="radio" name="${list.idexaminationquestion}"> <span class="checkmark"></span> 
         </label> </div>
         
         </c:forEach>
         
         
       <!--   <div class="ml-md-3 ml-sm-3 pl-md-5 pt-sm-0 pt-3" id="options"> 
        <label class="options"> <B>10</B> </label> 
        <label class="options"><input type="radio" name="radio1"> <span class="checkmark"></span> </label> 
        <label class="options"><input type="radio" name="radio1"> <span class="checkmark"></span> </label>
         <label class="options"><input type="radio" name="radio1"> <span class="checkmark"></span> </label> 
         <label class="options"> <input type="radio" name="radio1"> <span class="checkmark"></span> 
         </label> </div><div class="ml-md-3 ml-sm-3 pl-md-5 pt-sm-0 pt-3" id="options"> 
        <label class="options"> <B>1</B> </label> 
        <label class="options"><input type="radio" name="radio2"> <span class="checkmark"></span> </label> 
        <label class="options"><input type="radio" name="radio2"> <span class="checkmark"></span> </label>
         <label class="options"><input type="radio" name="radio2"> <span class="checkmark"></span> </label> 
         <label class="options"> <input type="radio" name="radio2"> <span class="checkmark"></span> 
         </label> </div><div class="ml-md-3 ml-sm-3 pl-md-5 pt-sm-0 pt-3" id="options"> 
        <label class="options"> <B>15</B> </label> 
        <label class="options"><input type="radio" name="radio3"> <span class="checkmark"></span> </label> 
        <label class="options"><input type="radio" name="radio3"> <span class="checkmark"></span> </label>
         <label class="options"><input type="radio" name="radio3"> <span class="checkmark"></span> </label> 
         <label class="options"> <input type="radio" name="radio3"> <span class="checkmark"></span> 
         </label> </div><div class="ml-md-3 ml-sm-3 pl-md-5 pt-sm-0 pt-3" id="options"> 
        <label class="options"> <B>1</B> </label> 
        <label class="options"><input type="radio" name="radio4"> <span class="checkmark"></span> </label> 
        <label class="options"><input type="radio" name="radio4"> <span class="checkmark"></span> </label>
         <label class="options"><input type="radio" name="radio4"> <span class="checkmark"></span> </label> 
         <label class="options"> <input type="radio" name="radio4"> <span class="checkmark"></span> 
         </label> </div>-->
         
    </div>
    
 </div> 
    </div>

  
    
    
<!-- 
<div class="container mt-sm-5 my-1">
    <div class="question ml-sm-5 pl-sm-5 pt-2">
        <div class="py-2 h5"><b>Q. which option best describes your job role?</b></div>
        <div class="ml-md-3 ml-sm-3 pl-md-5 pt-sm-0 pt-3" id="options"> <label class="options">Small Business Owner or Employee <input type="radio" name="radio"> <span class="checkmark"></span> </label> <label class="options">Nonprofit Owner or Employee <input type="radio" name="radio"> <span class="checkmark"></span> </label> <label class="options">Journalist or Activist <input type="radio" name="radio"> <span class="checkmark"></span> </label> <label class="options">Other <input type="radio" name="radio"> <span class="checkmark"></span> </label> </div>
    </div>
    <div class="d-flex align-items-center pt-3">
        <div id="prev"> <button class="btn btn-primary">Previous</button> </div>
        <div class="ml-auto mr-sm-5"> <button class="btn btn-success">Next</button> </div>
    </div>
</div>
 -->
		<button type="button" class="btn btn-outline-primary mr-md-3 mb-md-0 mb-2">Default Outline</button>
				<button type="button" class="btn btn-outline-primary mr-md-3 mb-md-0 mb-2">Default Outline</button> 
				
         <div class="clearfix"></div>
<ul class="pagination pull-right">

  

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
      
            
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>