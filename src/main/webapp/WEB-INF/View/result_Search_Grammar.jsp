<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
    <head>


    </head>
    <body>
    

    
            <div class="row">
         
				<c:forEach items="${listTitle}" var="listTitle">
                <div class="col-sm-6 col-md-4" > 
                
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left" >
                          <a href="Pour_Content_Grammar?id=${listTitle.idgrammarguide}"> <img class="img-responsive" src="${pageContext.request.contextPath}/ImageUpload/${listTitle.grammarguideimage}"></a> 
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading" >${listTitle.grammarguidename}</h3>
                        
                        </div>
                    </div>
                </div>
</c:forEach>
                                                      
            </div><!--/.row-->
          
<!--/ moDEL BOOTSTRAP -->
</body>
</html>
