<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
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
</body>
</html>