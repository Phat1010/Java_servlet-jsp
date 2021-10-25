<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

   
    
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
</body>
</html>