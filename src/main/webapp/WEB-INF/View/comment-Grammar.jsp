<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
</head>
<body>



                
               
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
              
            
 


</body>
</html>