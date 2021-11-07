<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>




  <script type="text/javascript">


        function next()
        {
        	
        	 
        	var id = document.myform.id.value;
         	var pageid = document.myform.pageid.value;
       
        	var url = "nextAjaxExam?id="+id+"&pageid="+pageid;
        	
        
        	
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
        
        
        function prev()
        {
        	
        	 
        	var id = document.myform.id.value;
         	var pageid = document.myform.pageid.value;
       
        	var url = "nextAjaxExam?id="+id+"&pageid="+pageid;
        	
        
        	
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
          <h2>${currentpageajax}</h2>
          <p id="result">1</p>
            <form name="myform">  
<ul class="pagination pull-right" style="width: 57%;">



  <c:if test="${currentpageajax==1}">
  	

    <li class="disabled"><a class="page-link" href="#">Previous</a></li>
   <!--  <li ><a class="page-link" href="pagination?pageid=1">1</a></li>
    <li ><a class="page-link" href="pagination?pageid=2">2</a></li>
    <li ><a class="page-link" href="pagination?pageid=3">3</a></li> -->
    <li > <button type="button" onclick="next()" class="page-link">next</button></li>
 	<input type="text" name="id" value="${id}" hidden="true">
 	<input type="text" name="pageid" value="${currentpageajax+1}" hidden="true">
 	
  	</c:if>
  	<c:if test="${currentpageajax == totalpage && totalpage!=1 }">
  	
<input type="text" name="id" value="${id}" hidden="true">
 	<input type="text" name="pageid" value="${currentpage-1}" hidden="true">
    <li class=""><a class="page-link" onclick="prev()" >Previous</a></li>
      <!--  <li ><a class="page-link" href="pagination?pageid=1">1</a></li>
    <li ><a class="page-link" href="pagination?pageid=2">2</a></li>
    <li ><a class="page-link" href="pagination?pageid=3">3</a></li> -->
    <li class="disabled"><a class="page-link" href="#">Next</a></li>
 	   	
  	</c:if>
  		<c:if test="${(currentpageajax >1) && (currentpageajax <totalpage)}">
  	

    <li > <button type="button" onclick="next()" class="page-link">next</button></li>
 	<input type="text" name="id" value="${id}" hidden="true">
 	<input type="text" name="pageid" value="${currentpageajax+1}" hidden="true">
   <!--  <li ><a class="page-link" href="pagination?pageid=1">1</a></li>
    <li ><a class="page-link" href="pagination?pageid=2">2</a></li>
    <li ><a class="page-link" href="pagination?pageid=3">3</a></li> -->
    <li class="page-item"><a class="page-link" href="practice_Exam?id=${id}&pageid=${currentpage+1}">Next</a></li>
 	   	
  	</c:if>
  	
  	
  
</ul>
     </form>
</body>
</html>