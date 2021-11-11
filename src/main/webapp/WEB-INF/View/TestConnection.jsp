<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Home </title>






<!-- core CSS -->
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


</head>


<body class="homepage">

	<jsp:include page="header.jsp"></jsp:include>


	<!-- SLIDE DOT -->
	<section id="main-slider" class="no-margin">
		<div class="carousel slide">
			<ol class="carousel-indicators">
				<li data-target="#main-slider" data-slide-to="0" class="active"></li>
				<c:forEach items="${listbanner}" var="listbanner">
					<li data-target="#main-slider"
						data-slide-to="${listbanner.idBanner}"></li>
				</c:forEach>


				<!-- SLIDE DOT -->

			</ol>
			<div class="carousel-inner">

				<div class="item active"
					style="background-image: url(${pageContext.request.contextPath}/Template_frontend/images/slider/bg1.jpg)">
					<div class="container">
						<div class="row slide-margin">
							<div class="col-sm-6">
								<div class="carousel-content">
									<h1 class="animation animated-item-1">Rita Mae Brown</h1>
									<h2 class="animation animated-item-2">Language is the road map of a culture. It tells you where its people come from and where they are going.</h2>
									
								</div>
							</div>

							<div class="col-sm-6 hidden-xs animation animated-item-4">
								<div class="slider-img">
									<img
										src="${pageContext.request.contextPath}/Template_frontend/images/slider/mlot.png"
										class="img-responsive">
								</div>
							</div>

						</div>
					</div>
				</div>
				<!--/.item-->
				<c:forEach items="${listbanner}" var="listbanner">
					<div class="item"
						style="background-image: url(${pageContext.request.contextPath}/Template_frontend/images/slider/${listbanner.bannerimage})">
						<div class="container">
							<div class="row slide-margin">
								<div class="col-sm-6">
									<div class="carousel-content">
										<h1 class="animation animated-item-1">${listbanner.bannername}</h1>
										<h2 class="animation animated-item-2">"${listbanner.bannercontent}"</h2>
										
									</div>
								</div>

								<div class="col-sm-6 hidden-xs animation animated-item-4">
									<div class="slider-img">
										<img
											src="${pageContext.request.contextPath}/Template_frontend/images/slider/img${listbanner.idBanner}.png"
											class="img-responsive">
									</div>
								</div>

							</div>
						</div>
					</div>
					<!--/.item-->
				</c:forEach>








			</div>
			<!--/.carousel-inner-->
		</div>
		<!--/.carousel-->
		<a class="prev hidden-xs" href="#main-slider" data-slide="prev"> <i
			class="fa fa-chevron-left"></i>
		</a> <a class="next hidden-xs" href="#main-slider" data-slide="next">
			<i class="fa fa-chevron-right"></i>
		</a>
	</section>
	<!--/#main-slider-->

	<section id="feature">
		<div class="container">
			<div class="center wow fadeInDown">
				<h2>Achieve your goals with English Online</h2>
				<p class="lead">
					Enjoy online activities to improve your language skills in your own
					time. <br>Develop the practical communication skills and
					confidence you need to master real-life situations.
				</p>
			</div>

			<div class="row">
				<div class="features">
					<div class="col-md-4 col-sm-6 wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="600ms">
						<div class="feature-wrap">
							<a href="pagination?pageid=1"> <i> <script
										src="https://cdn.lordicon.com/libs/mssddfmo/lord-icon-2.1.0.js"></script>
									<lord-icon src="https://cdn.lordicon.com/wxnxiano.json"
										trigger="loop" colors="primary:#121331,secondary:#08a88a"
										style="width:100px;height:100px"> </lord-icon>
							</i>
							</a>
							<h2>Grammar</h2>
							<h3>GRAMMATICAL THEORY AND PRACTICE IN AN ENGLISH GRAMMAR CLASS </h3>
						</div>
					</div>
					<!--/.col-md-4-->

					<div class="col-md-4 col-sm-6 wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="600ms">
						<div class="feature-wrap">
							<a href="Exam_DisplayList?pageid=1"><i><script
										src="https://cdn.lordicon.com/libs/mssddfmo/lord-icon-2.1.0.js"></script>
									<lord-icon src="https://cdn.lordicon.com/tvyxmjyo.json"
										trigger="loop" colors="primary:#121331,secondary:#08a88a"
										style="width:100px;height:100px"> </lord-icon></i></a>
							<h2>Exercise</h2>
							<script
								src="https://cdn.lordicon.com/libs/mssddfmo/lord-icon-2.1.0.js"></script>

							<h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
						</div>
					</div>
					<!--/.col-md-4-->

					<div class="col-md-4 col-sm-6 wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="600ms">
						<div class="feature-wrap">
							<a href="Vocabulary_Subject_View?pageid=1"> <i><script
										src="https://cdn.lordicon.com/libs/mssddfmo/lord-icon-2.1.0.js"></script>
									<lord-icon src="https://cdn.lordicon.com/zpxybbhl.json"
										trigger="loop" colors="primary:#121331,secondary:#08a88a"
										style="width:100px;height:100px"> </lord-icon></i></a>
							<h2>Vocabulary</h2>
							<h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>

						</div>
					</div>
					<!--/.col-md-4-->

					<!--   <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <a href="list_Read_View?pageid=1"> <i class="fa fa-leaf"></i></a>
                            <h2>Exercise REad</h2>
                            <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
                        </div>
                    </div> -->
					<!-- 
                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-cogs"></i>
                            <h2>Sed do eiusmod</h2>
                            <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-heart"></i>
                            <h2>Labore et dolore</h2>
                            <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
                        </div>
                    </div>  -->
				</div>
				<!--/.services-->
			</div>
			<!--/.row-->
		</div>
		<!--/.container-->
	</section>
	<!--/#feature-->

	<section id="recent-works">
		<div class="container">
			<div class="center wow fadeInDown">
				<h2>Recent Works</h2>
				<p class="lead">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
					eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut
					enim ad minim veniam
				</p>
			</div>

			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-3">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/Template_frontend/images/portfolio/recent/item1.png"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">Business theme</a>
								</h3>
								<p>There are many variations of passages of Lorem Ipsum
									available, but the majority</p>
								<a class="preview" href="images/portfolio/full/item1.png"
									rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xs-12 col-sm-4 col-md-3">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/Template_frontend/images/portfolio/recent/item2.png"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">Business theme</a>
								</h3>
								<p>There are many variations of passages of Lorem Ipsum
									available, but the majority</p>
								<a class="preview" href="images/portfolio/full/item2.png"
									rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xs-12 col-sm-4 col-md-3">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/Template_frontend/images/portfolio/recent/item3.png"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">Business theme </a>
								</h3>
								<p>There are many variations of passages of Lorem Ipsum
									available, but the majority</p>
								<a class="preview" href="images/portfolio/full/item3.png"
									rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xs-12 col-sm-4 col-md-3">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/Template_frontend/images/portfolio/recent/item4.png"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">Business theme </a>
								</h3>
								<p>There are many variations of passages of Lorem Ipsum
									available, but the majority</p>
								<a class="preview" href="images/portfolio/full/item4.png"
									rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xs-12 col-sm-4 col-md-3">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/Template_frontend/images/portfolio/recent/item5.png"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">Business theme</a>
								</h3>
								<p>There are many variations of passages of Lorem Ipsum
									available, but the majority</p>
								<a class="preview" href="images/portfolio/full/item5.png"
									rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xs-12 col-sm-4 col-md-3">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/Template_frontend/images/portfolio/recent/item6.png"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">Business theme </a>
								</h3>
								<p>There are many variations of passages of Lorem Ipsum
									available, but the majority</p>
								<a class="preview" href="images/portfolio/full/item6.png"
									rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xs-12 col-sm-4 col-md-3">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/Template_frontend/images/portfolio/recent/item7.png"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">Business theme </a>
								</h3>
								<p>There are many variations of passages of Lorem Ipsum
									available, but the majority</p>
								<a class="preview" href="images/portfolio/full/item7.png"
									rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xs-12 col-sm-4 col-md-3">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/Template_frontend/images/portfolio/recent/item8.png"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">Business theme </a>
								</h3>
								<p>There are many variations of passages of Lorem Ipsum
									available, but the majority</p>
								<a class="preview"
									href="${pageContext.request.contextPath}/Template_frontend/images/portfolio/full/item8.png"
									rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--/.row-->
		</div>
		<!--/.container-->
	</section>
	<!--/#recent-works-->


	<jsp:include page="footer.jsp"></jsp:include>

	<script
		src="${pageContext.request.contextPath}/Template_frontend/js/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath}/Template_frontend/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/Template_frontend/js/jquery.prettyPhoto.js"></script>
	<script
		src="${pageContext.request.contextPath}/Template_frontend/js/jquery.isotope.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/Template_frontend/js/main.js"></script>
	<script
		src="${pageContext.request.contextPath}/Template_frontend/js/wow.min.js"></script>

	<!-- moDEL BOOTSTRAP -->
	<!-- Trigger the modal with a button -->
	<!-- <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button> -->



	<!--/ moDEL BOOTSTRAP -->
</body>
</html>
