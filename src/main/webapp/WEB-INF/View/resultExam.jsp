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

    
    
    
    
    
   
    
<c:forEach items="${listansweruser}" var="list">

	

	<p >paragraph:  ${list.idexaminationquestion}</p>

	 <p > Question:${list.answerUser}</p>


</c:forEach>

    
<c:forEach items="${list}" var="list">

	
Question: <p>${list.question}</p>

							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option1}">${list.option1}
	<br>
							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option2}">${list.option2}
	<br>
							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option3}">${list.option3}
	<br>
							<img alt="" src="./image/iconok.png">
							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option4}">${list.option4}
	<br>


</c:forEach>


	<form action="handleCorrect" method="post">
		<c:forEach items="${list}" var="list">

			<!-- answer appear at first-->

			<!-- END answer appear at first-->
			<!--  444444444444444444 -->
			<c:forEach items="${listansweruser}" var="list2">
				<c:if test="${list2.idexaminationquestion == list.idexaminationquestion}">
					<!-- list code in exam  and code i do (list2)-->
					<c:if test="${list.result == list2.answerUser}">
						<!-- list result in exam  and answer i do (list2)  == equal-->
						<c:if test="${list.option4 == list.result}">
							<!-- I pick position 4-->
				Question: <p>${list.question}</p>

							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option1}">${list.option1}
	<br>
							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option2}">${list.option2}
	<br>
							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option3}">${list.option3}
	<br>
							<img alt="" src="./image/iconok.png">
							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option4}">${list.option4}
	<br>
						</c:if>
						<!--  444444444444444444 -->


						<!--  33333333333333333333333 -->
						<c:if test="${list.option3 == list.result}">
				Question: <p>${list.question}</p>

							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option1}">${list.option1}
	<br>
							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option2}">${list.option2}
	<br>
							<img alt="" src="./image/iconok.png">
							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option3}">${list.option3}
	<br>
							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option4}">${list.option4}
	<br>
						</c:if>
						<!--  33333333333333333333333 -->

						<!--  2222222222222222222222222222 -->
						<c:if test="${list.option2 == list.result}">
				Question: <p>${list.question}</p>

							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option1}">${list.option1}
	<br>
							<img alt="" src="./image/iconok.png">
							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option2}">${list.option2}
	<br>
							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option3}">${list.option3}
	<br>
							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option4}">${list.option4}
	<br>
						</c:if>
						<!--  2222222222222222222222222222 -->


						<!--  1111111111111111111111 -->
						<c:if test="${list.option1 == list.result}">
				Question: <p>${list.question}</p>
							<img alt="" src="./image/iconok.png">
							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option1}">${list.option1}
	<br>
							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option2}">${list.option2}
	<br>
							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option3}">${list.option3}
	<br>

							<input type="radio" name="${list.idexaminationquestion}"
								value="${list.option4}">${list.option4}
	<br>
						</c:if>
						<!--  1111111111111111111111 -->


					</c:if>




<!-- PICK ERRORRRRRRRRRRRRRRRRRRRRRRRRR -->


					<!-- pick error -->


					<c:if test="${list.result != list2.answerUser}">
					
					
					
					<!-- IF PICK ERROR   --> <!-- IF PICK ERROR   --> <!-- IF PICK ERROR   -->
					
					
					
					
					
					
						<!-- list result in exam  and answer i do (list2)  != UNEQUAL-->
						
						
						
						
						
						
						
						
						
						
						<c:if test="${(list.option4 == list.result)}">
							<!-- CORRECT question is POSSITION4-->  
							<c:if test="${list2.answerUser ==list.option1 }">
								<!-- we pick 1 -->
				
									Question: <p>${list.question}</p>
								<img alt="" src="./image/error.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option1}">${list.option1}
	<br>
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option2}">${list.option2}
	<br>
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option3}">${list.option3}
	<br>
								<img alt="" src="./image/iconok.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option4}">${list.option4}
	<br>

							</c:if>



							<c:if test="${list2.answerUser ==list.option2 }">
								<!-- we pick 2 -->
				
									Question: <p>${list.question}</p>

								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option1}">${list.option1}
	<br>
								<img alt="" src="./image/error.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option2}">${list.option2}
	<br>
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option3}">${list.option3}
	<br>
								<img alt="" src="./image/iconok.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option4}">${list.option4}
	<br>

							</c:if>


							<c:if test="${list2.answerUser ==list.option3 }">
								<!-- we pick 3 -->
				
									Question: <p>${list.question}</p>
							
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option1}">${list.option1}
	<br>
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option2}">${list.option2}
	<br>
								<img alt="" src="./image/error.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option3}">${list.option3}
	<br>
								<img alt="" src="./image/iconok.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option4}">${list.option4}
	<br>

							</c:if>






						</c:if>
						
							<!-- END PICK ERROR 4-->
						
						
						<!-- COMPLETE -->
						
						
						<!--  PICK ERROR 1-->
						<c:if test="${(list.option1 == list.result)}">
							<!-- CORRECT question is POSSITION1-->  
							<c:if test="${list2.answerUser ==list.option2 }">
								<!-- we pick 2 -->
				
									Question: <p>${list.question}</p>
								<img alt="" src="./image/iconok.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option1}">${list.option1}
	<br>
								<img alt="" src="./image/error.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option2}">${list.option2}
	<br>
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option3}">${list.option3}
	<br>
								
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option4}">${list.option4}
	<br>

							</c:if>



							<c:if test="${list2.answerUser ==list.option3 }">
								<!-- we pick 3 -->
				
									Question: <p>${list.question}</p>
<img alt="" src="./image/iconok.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option1}">${list.option1}
	<br>
								
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option2}">${list.option2}
	<br><img alt="" src="./image/error.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option3}">${list.option3}
	<br>
								
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option4}">${list.option4}
	<br>

							</c:if>


							<c:if test="${list2.answerUser ==list.option4 }">
								<!-- we pick 4 -->
				
									Question: <p>${list.question}</p>
							<img alt="" src="./image/iconok.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option1}">${list.option1}
	<br>
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option2}">${list.option2}
	<br>
								
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option3}">${list.option3}
	<br>
								<img alt="" src="./image/error.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option4}">${list.option4}
	<br>

							</c:if>


	



						</c:if>
						
						<!-- END PICK ERROR 1-->

					<!-- COmplete1 -->

	<!--  PICK ERROR 2-->
						<c:if test="${(list.option2 == list.result)}">
																		<!-- CORRECT question is POSSITION4-->  
							<c:if test="${list2.answerUser ==list.option1 }">
								<!-- we pick 1 -->
				
									Question: <p>${list.question}</p>
								<img alt="" src="./image/error.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option1}">${list.option1}
	<br>
		<img alt="" src="./image/iconok.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option2}">${list.option2}
	<br>
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option3}">${list.option3}
	<br>
							
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option4}">${list.option4}
	<br>

							</c:if>



							<c:if test="${list2.answerUser ==list.option3 }">
								<!-- we pick 3 -->
				
									Question: <p>${list.question}</p>

								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option1}">${list.option1}
	<br>
								
								<img alt="" src="./image/iconok.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option2}">${list.option2}
	<br>
						<img alt="" src="./image/error.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option3}">${list.option3}
	<br>
								
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option4}">${list.option4}
	<br>

							</c:if>


							<c:if test="${list2.answerUser ==list.option4 }">
								<!-- we pick 4 -->
				
									Question: <p>${list.question}</p>
							
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option1}">${list.option1}
	<br>
				<img alt="" src="./image/iconok.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option2}">${list.option2}
	<br>
								
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option3}">${list.option3}
	<br>
								<img alt="" src="./image/error.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option4}">${list.option4}
	<br>

							</c:if>


	



						</c:if>
						
							<!-- END PICK ERROR 2-->
							<!-- COMPLETE2 -->
							<!--  PICK ERROR 3-->
						<c:if test="${(list.option3 == list.result)}">
																			<!-- CORRECT question is POSSITION3-->  
							<c:if test="${list2.answerUser ==list.option1 }">
								<!-- we pick 1 -->
				
									Question: <p>${list.question}</p>
								<img alt="" src="./image/error.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option1}">${list.option1}
	<br>
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option2}">${list.option2}
	<br>
									<img alt="" src="./image/iconok.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option3}">${list.option3}
	<br>
								
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option4}">${list.option4}
	<br>

							</c:if>



							<c:if test="${list2.answerUser ==list.option2 }">
								<!-- we pick 2 -->
				
									Question: <p>${list.question}</p>

								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option1}">${list.option1}
	<br>
								<img alt="" src="./image/error.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option2}">${list.option2}
	<br>
										<img alt="" src="./image/iconok.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option3}">${list.option3}
	<br>
								
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option4}">${list.option4}
	<br>

							</c:if>


							<c:if test="${list2.answerUser ==list.option4 }">
								<!-- we pick 4 -->
				
									Question: <p>${list.question}</p>
							
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option1}">${list.option1}
	<br>
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option2}">${list.option2}
	<br>
									<img alt="" src="./image/iconok.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option3}">${list.option3}
	<br>
							
								<img alt="" src="./image/error.png">
								<input type="radio" name="${list.idexaminationquestion}"
									value="${list.option4}">${list.option4}
	<br>

							</c:if>


	



						</c:if>
						
						<!-- END PICK ERROR 3-->
					<!-- COMPLETE 3-->
					</c:if>


				</c:if>



			</c:forEach>


		</c:forEach>

		<input type="submit" value="Tabscript">
		<c:forEach items="${listansweruser}" var="list2">

			<h3>${list2.idexaminationquestion}</h3>
			<h3>${list2.answerUser}</h3>
		</c:forEach>


		<br>
		<h3>${list2.idexaminationquestion}</h3>
		<h3>${list2.answerUser}</h3>
		<h3>
			<%=request.getAttribute("listansweruse1") != null ? request.getAttribute("listansweruse1") : ""%></h3>

	</form>
</body>
</html>
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>