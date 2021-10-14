<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />





<!-- HeaderHeader -->

<!-- core CSS -->
<link
	href="${pageContext.request.contextPath}/cssExtra/practiceexam.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/cssExtra/exam.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/cssExtra/practiceexam2.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/cssExtra/practiceexam3.css"
	rel="stylesheet">

<link href="${pageContext.request.contextPath}/cssExtra/result_icon.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/Template_frontend/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/Template_frontend/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/Template_frontend/css/animate.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/Template_frontend/css/prettyPhoto.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/Template_frontend/css/main.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/Template_frontend/css/responsive.css"
	rel="stylesheet">

<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/Template_frontend/images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="${pageContext.request.contextPath}/Template_frontend/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="${pageContext.request.contextPath}/Template_frontend/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="${pageContext.request.contextPath}/Template_frontend/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="${pageContext.request.contextPath}/Template_frontend/images/ico/apple-touch-icon-57-precomposed.png">
<!-- HeaderHeader -->

<!-- Count Down timmer -->
<!-- Count Down timmer -->

<script
	src="${pageContext.request.contextPath}/countdowntimmer/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/countdowntimmer/jquery.simple.timer.js"></script>
<link
	href="${pageContext.request.contextPath}/countdowntimmer/timmer.css"
	rel="stylesheet">
<script>
	$(function() {
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


<!-- Count Down timmer -->
<!-- Count Down timmer -->
</head>

<body onload="auto_submit1()">
	<jsp:include page="header.jsp"></jsp:include>

	<div class="timer" data-seconds-left="25"></div>
	<div class="left">


	
		<!-- CHeck answer -->
		<!-- CHeck answer -->
		<!-- CHeck answer -->
		<!-- CHeck answer -->
		<c:forEach items="${listpourdata}" var="list">
			<c:forEach items="${listansweruser}" var="list2">
				<!-- CHeck NULL -->
				<c:if
					test="${list2.idexaminationquestion == list.idexaminationquestion}">

					<!-- CHECK D -->
					<c:if
						test="${(empty list2.answerUser)&&(list.option4 == list.correctanswser)}">

						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
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
<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/error.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option4}">${list.option4}
							
							</c:if>
					<!-- CHECK D /-->
					
						<!-- CHECK C -->
					<c:if
						test="${(empty list2.answerUser)&&(list.option3 == list.correctanswser)}">

						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
						Question: <p>${list.question}</p>

						
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option1}">${list.option1}
	<br>
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option2}">${list.option2}
	<br>
	<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/error.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option3}">${list.option3}
	<br>

						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option4}">${list.option4}
							
							</c:if>
					<!-- CHECK C /-->
					
						<!-- CHECK B -->
					<c:if
						test="${(empty list2.answerUser)&&(list.option2 == list.correctanswser)}">

						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
						Question: <p>${list.question}</p>

					
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option1}">${list.option1}
	<br>
		<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/error.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option2}">${list.option2}
	<br>
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option3}">${list.option3}
	<br>

						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option4}">${list.option4}
							
							</c:if>
					<!-- CHECK B /-->
					
						<!-- CHECK A -->
					<c:if
						test="${(empty list2.answerUser)&&(list.option1 == list.correctanswser)}">

						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
						Question: <p>${list.question}</p>

						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/error.png"
							class="imgokcheck">
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
							
							</c:if>
					<!-- CHECK D /-->
				</c:if>





				<!-- CHeck NULL -->


				<c:if
					test="${list2.idexaminationquestion == list.idexaminationquestion}">
					<!-- compare answer user and system -->
					<!-- CORRECT PICK ANSWER -->
					<!-- CORRECT PICK ANSWER D-->
					<c:if
						test="${(list.correctanswser == list2.answerUser)&&(list.option4 == list.correctanswser)}">
						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
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
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/iconok.png"
							class="imgokcheck" class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option4}">${list.option4}
						</c:if>

					<!-- CORRECT PICK ANSWER A-->
					<c:if
						test="${(list.correctanswser == list2.answerUser)&&(list.option1 == list.correctanswser)}">
						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
						Question: <p>${list.question}</p>

						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/iconok.png"
							class="imgokcheck" class="imgokcheck">
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
						</c:if>


					<!-- CORRECT PICK ANSWER C-->
					<c:if
						test="${(list.correctanswser == list2.answerUser)&&(list.option3 == list.correctanswser)}">
						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
						Question: <p>${list.question}</p>


						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option1}">${list.option1}
	<br>
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option2}">${list.option2}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/iconok.png"
							class="imgokcheck" class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option3}">${list.option3}
	<br>

						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option4}">${list.option4}
						</c:if>

					<!-- CORRECT PICK ANSWER B-->
					<c:if
						test="${(list.correctanswser == list2.answerUser)&&(list.option2 == list.correctanswser)}">
						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
						Question: <p>${list.question}</p>


						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option1}">${list.option1}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/iconok.png"
							class="imgokcheck" class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option2}">${list.option2}
	<br>
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option3}">${list.option3}
	<br>

						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option4}">${list.option4}
						</c:if>



				</c:if>


				<!-- compare answer user and system -->

				<c:if
					test="${list2.idexaminationquestion == list.idexaminationquestion}">
					<!-- ERROR PICK ANSWER  D-->
					<c:if
						test="${(list.option4 == list.correctanswser)&&(list2.answerUser ==list.option1)}">
						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
									Question: <p>${list.question}</p>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/error.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option1}">${list.option1}
	<br>
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option2}">${list.option2}
	<br>
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option3}">${list.option3}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/iconok.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option4}">${list.option4}
	<br>

					</c:if>
					<c:if
						test="${(list.option4 == list.correctanswser)&&(list2.answerUser ==list.option2)}">
						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
									Question: <p>${list.question}</p>

						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option1}">${list.option1}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/error.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option2}">${list.option2}
	<br>
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option3}">${list.option3}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/iconok.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option4}">${list.option4}
	<br>

					</c:if>
					<c:if
						test="${(list.option4 == list.correctanswser)&&(list2.answerUser ==list.option3)}">
						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
									Question: <p>${list.question}</p>

						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option1}">${list.option1}
	<br>
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option2}">${list.option2}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/error.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option3}">${list.option3}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/iconok.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option4}">${list.option4}
	<br>

					</c:if>

					<!--  ERROR PICK C -->
					<c:if
						test="${(list.option3 == list.correctanswser)&&(list2.answerUser ==list.option1)}">
						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
									Question: <p>${list.question}</p>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/error.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option1}">${list.option1}
	<br>
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option2}">${list.option2}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/iconok.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option3}">${list.option3}
	<br>

						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option4}">${list.option4}
	<br>

					</c:if>
					<!--  ERROR PICK C 1-->
					<c:if
						test="${(list.option3 == list.correctanswser)&&(list2.answerUser ==list.option2)}">
						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
									Question: <p>${list.question}</p>

						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option1}">${list.option1}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/error.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option2}">${list.option2}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/iconok.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option3}">${list.option3}
	<br>

						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option4}">${list.option4}
	<br>

					</c:if>
					<!--  ERROR PICK C 2 -->
					<c:if
						test="${(list.option3 == list.correctanswser)&&(list2.answerUser ==list.option4)}">
						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
									Question: <p>${list.question}</p>

						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option1}">${list.option1}
	<br>
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option2}">${list.option2}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/iconok.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option3}">${list.option3}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/error.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option4}">${list.option4}
	<br>

					</c:if>
					<!--  ERROR PICK C 4 -->
					<!--  ERROR PICK C 4 //-->





					<!--  ERROR PICK B  -->
					<!--  ERROR PICK B 4 -->
					<c:if
						test="${(list.option2 == list.correctanswser)&&(list2.answerUser ==list.option4)}">
						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
									Question: <p>${list.question}</p>

						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option1}">${list.option1}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/iconok.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option2}">${list.option2}
	<br>
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option3}">${list.option3}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/error.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option4}">${list.option4}
	<br>

					</c:if>
					<!--  ERROR PICK B 4 /-->
					<!--  ERROR PICK B 3 -->
					<c:if
						test="${(list.option2 == list.correctanswser)&&(list2.answerUser ==list.option3)}">
						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
									Question: <p>${list.question}</p>

						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option1}">${list.option1}
	<br>

						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/iconok.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option2}">${list.option2}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/error.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option3}">${list.option3}
	<br>

						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option4}">${list.option4}
	<br>

					</c:if>
					<!--  ERROR PICK B 3 /-->
					<!--  ERROR PICK B 1 -->
					<c:if
						test="${(list.option2 == list.correctanswser)&&(list2.answerUser ==list.option1)}">
						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
									Question: <p>${list.question}</p>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/error.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option1}">${list.option1}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/iconok.png"
							class="imgokcheck">
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
					<!--  ERROR PICK B 1 /-->
					<!--  ERROR PICK A -->
					<!--  ERROR PICK A 4-->
					<c:if
						test="${(list.option1 == list.correctanswser)&&(list2.answerUser ==list.option4)}">
						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
									Question: <p>${list.question}</p>

						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/iconok.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option1}">${list.option1}
	<br>
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option2}">${list.option2}
	<br>
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option3}">${list.option3}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/error.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option4}">${list.option4}
	<br>

					</c:if>
					<!--  ERROR PICK A 4/-->
					<!--  ERROR PICK A 3-->
					<c:if
						test="${(list.option1 == list.correctanswser)&&(list2.answerUser ==list.option3)}">
						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
									Question: <p>${list.question}</p>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/iconok.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option1}">${list.option1}
	<br>

						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option2}">${list.option2}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/error.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option3}">${list.option3}
	<br>

						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option4}">${list.option4}
	<br>

					</c:if>
					<!--  ERROR PICK A 3/-->
					<!--  ERROR PICK A 2-->

					<c:if
						test="${(list.option1 == list.correctanswser)&&(list2.answerUser ==list.option2)}">
						<img
							src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.imagequestion}"></img>

						<audio controls>
							<source
								src="${pageContext.request.contextPath}/upLoad_Image_Audio/${list.audio}">
						</audio>


						<p>paragraph: ${list.paragraph}</p>
									Question: <p>${list.question}</p>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/iconok.png"
							class="imgokcheck">
						<input type="radio" name="${list.idexaminationquestion}"
							value="${list.option1}">${list.option1}
	<br>
						<img alt=""
							src="${pageContext.request.contextPath}/imagesmall/error.png"
							class="imgokcheck">
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

				</c:if>




			</c:forEach>
		</c:forEach>



		<!-- CHeck answer -->
		<!-- CHeck answer -->
		<!-- CHeck answer -->

	</div>










	<form action="practice_Exam" method="post" name="form">

		<div class="right">
			<div class="container mt-sm-5 my-1">
				<div class="question ml-sm-5 pl-sm-5 pt-2">

					Answer your choice
					so cau hoi dung ne<%=request.getAttribute("countcorrect") %>
					so cau hoi sai ne<%=request.getAttribute("countincorrect") %>
						so cau hoi sai ne<%=request.getAttribute("name") %>
					<c:forEach items="${listansweruser}" var="list">



						<p>paragraph: ${list.idexaminationquestion}</p>

						<p>Question:${list.answerUser}</p>


					</c:forEach>


				</div>

			</div>
		</div>



		<input type="submit"
			class="btn btn-outline-primary mr-md-3 mb-md-0 mb-2" value="submit">
		<button type="button"
			class="btn btn-outline-primary mr-md-3 mb-md-0 mb-2">Default
			Outline</button>


		<input type="text" value="<%=request.getParameter("id")%>"
			name="idExam"> head <input type="text" value="${get_Id_Head}"
			name="idExam"> last<input type="text"
			value="<%=request.getAttribute("get_Id_Last")%>" name="idExam">
	</form>








	<div class="clearfix"></div>
	<ul class="pagination pull-right">



		<c:if test="${currentpage==1}">


			<li class="disabled"><a class="page-link" href="#">Previous</a></li>
			<!--  <li ><a class="page-link" href="pagination?pageid=1">1</a></li>
    <li ><a class="page-link" href="pagination?pageid=2">2</a></li>
    <li ><a class="page-link" href="pagination?pageid=3">3</a></li> -->
			<li><a class="page-link"
				href="practice_Exam?id=${id}&pageid=${currentpage+1}">Next</a></li>

		</c:if>
		<c:if test="${currentpage == totalpage}">


			<li class=""><a class="page-link"
				href="practice_Exam?id=${id}&pageid=${currentpage-1}">Previous</a></li>
			<!--  <li ><a class="page-link" href="pagination?pageid=1">1</a></li>
    <li ><a class="page-link" href="pagination?pageid=2">2</a></li>
    <li ><a class="page-link" href="pagination?pageid=3">3</a></li> -->
			<li class="disabled"><a class="page-link" href="#">Next</a></li>

		</c:if>
		<c:if test="${(currentpage >1) && (currentpage <totalpage)}">


			<li class="page-item"><a class="page-link"
				href="practice_Exam?id=${id}&pageid=${currentpage-1}">Previous</a></li>
			<!--  <li ><a class="page-link" href="pagination?pageid=1">1</a></li>
    <li ><a class="page-link" href="pagination?pageid=2">2</a></li>
    <li ><a class="page-link" href="pagination?pageid=3">3</a></li> -->
			<li class="page-item"><a class="page-link"
				href="practice_Exam?id=${id}&pageid=${currentpage+1}">Next</a></li>

		</c:if>

	</ul>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>