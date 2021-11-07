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


      <h2> &nbsp;&nbsp;<ins>  Excercise ${currentpage}:</ins></h2>
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
  	

 <a href="#" > <button type="button" class="btn btn-outline-secondary">previous</button></a>
   <!--  <li ><a class="page-link" href="pagination?pageid=1">1</a></li>
    <li ><a class="page-link" href="pagination?pageid=2">2</a></li>
    <li ><a class="page-link" href="pagination?pageid=3">3</a></li> -->
    <li > <button type="button" onclick="next()" class="btn btn-outline-primary">next</button></li>
 	<input type="text" name="id" value="${id}" hidden="true">
 	<input type="text" name="pageid" value="${currentpage+1}" hidden="true">
 	
  	</c:if>
  	<c:if test="${currentpage == totalpage && totalpage!=1 }">
  	
<input type="text" name="idp" value="${id}" hidden="true">
 	<input type="text" name="pageidp" value="${currentpage-1}" hidden="true">

  <li > <button type="button" onclick="prev()" class="btn btn-outline-primary">previous</button></li>
      <!--  <li ><a class="page-link" href="pagination?pageid=1">1</a></li>
    <li ><a class="page-link" href="pagination?pageid=2">2</a></li>
    <li ><a  href="pagination?pageid=3">3</a></li> -->
  
 	 <a href="#" > <button type="button" class="btn btn-outline-secondary">next</button></a>
  	</c:if>
  		<c:if test="${(currentpage >1) && (currentpage <totalpage)}">
  		
  		    <li > <button type="button" onclick="prev()" class="btn btn-outline-primary">previous</button></li>
 	<input type="text" name="idp" value="${id}" hidden="true">
 	<input type="text" name="pageidp" value="${currentpage-1}" hidden="true">
  		
  	
     <li > <button type="button" onclick="next()" class="btn btn-outline-primary">next</button></li>
 	<input type="text" name="id" value="${id}" hidden="true">
 	<input type="text" name="pageid" value="${currentpage+1}" hidden="true">
   
   
   
  
 	   	
  	</c:if>
  	
  	
  
</ul>
</body>
</html>