<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
 
    <title>Ample Admin</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/template_admin/plugins/images/favicon.png">
    <!-- Custom CSS -->
   <link href="${pageContext.request.contextPath}/template_admin/css/style.min.css" rel="stylesheet">
   

   

   
   
   
   
   
   
   <!-- Markdown -->
   
       <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href=" ${pageContext.request.contextPath}/template_Markdown/css/markdown-editor.css" media="all" rel="stylesheet" type="text/css"/>
    <link href=" ${pageContext.request.contextPath}/template_Markdown/plugins/highlight/github-gist.min.css" media="all" rel="stylesheet" type="text/css"/>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/template_Markdown/plugins/markdown-it/markdown-it.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/template_Markdown/plugins/markdown-it/markdown-it-deflist.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/template_Markdown/plugins/markdown-it/markdown-it-footnote.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/template_Markdown/plugins/markdown-it/markdown-it-abbr.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/template_Markdown/plugins/markdown-it/markdown-it-sub.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/template_Markdown/plugins/markdown-it/markdown-it-sup.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/template_Markdown/plugins/markdown-it/markdown-it-ins.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/template_Markdown/plugins/markdown-it/markdown-it-mark.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/template_Markdown/plugins/markdown-it/markdown-it-smartarrows.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/template_Markdown/plugins/markdown-it/markdown-it-checkbox.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/template_Markdown/plugins/markdown-it/markdown-it-cjk-breaks.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/template_Markdown/plugins/markdown-it/markdown-it-emoji.min.js" type="text/javascript"></script>
    <script src="http://twemoji.maxcdn.com/2/twemoji.min.js?11.0"></script>
    <!-- script src="   ${pageContext.request.contextPath}/template_Markdown/plugins/marked/marked.min.js" type="text/javascript"></script -->
    <!-- script src="   ${pageContext.request.contextPath}/template_Markdown/js/plugins/js-markdown-extra.js" type="text/javascript"></script -->
    <script src="${pageContext.request.contextPath}/template_Markdown/plugins/highlight/highlight.min.js" type="text/javascript"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/template_Markdown/js/markdown-editor.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/template_Markdown/themes/fa4/theme.js" type="text/javascript"></script>
   
   
   
   
   
   
   
   <!-- EXtra -->
      <link href="${pageContext.request.contextPath}/cssExtra/txtgrammar.css" rel="stylesheet">
   
   
</head>

<body>
  
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
     <jsp:include page="header.jsp"></jsp:include>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
       <jsp:include page="barmenu.jsp"></jsp:include>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper" style="min-height: 250px;">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb bg-white">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h1 class="page-title">ADD EXCEl Vocabulary </h1>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <div class="d-md-flex">
                            <ol class="breadcrumb ms-auto">
                                <li><a href="#" class="fw-normal">Dashboard</a></li>
                            </ol>
                            <a href="https://www.wrappixel.com/templates/ampleadmin/" target="_blank"
                                class="btn btn-danger  d-none d-md-block pull-right ms-3 hidden-xs hidden-sm waves-effect waves-light text-white">Upgrade
                                to Pro</a>
                        </div>
                    </div>
                </div>
                <!-- /.col-lg-12 -->
            </div>

          
          
                    <div class="page-breadcrumb bg-white">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">IMAGE</h4>
                    </div>
                   
              
          <!-- image -->
          
   

</div>
             <form method="post" action="upload_file_excel_vocabulary" enctype="multipart/form-data">
      

      
    Select file to upload: <input type="file" name="file" size="60" /><br />
    <input type="submit" value="Upload" />
  </form>
             	<h5>${requestScope.message}</h5>
             	 	<h5>${requestScope.message1}${requestScope.message2}</h5>
         
           
          
          
          
          
          
          
         
          
          <form action="addfileExcel_Vocabulary_details" method="post">
          	<input type="text" value="${requestScope.message1}${requestScope.message2}" name="address" hidden="true">
          	<input type="text" value="<%= session.getAttribute("id") %>" name="idvocabulary"  hidden="true">
          <br>
          	<input type="submit">
          </form>
          
          
          
          
    
          
          
          
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
          <jsp:include page="footer.jsp"></jsp:include>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="${pageContext.request.contextPath}/template_admin/plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/template_admin/js/app-style-switcher.js"></script>
    <!--Wave Effects -->
    <script src="${pageContext.request.contextPath}/template_admin/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="${pageContext.request.contextPath}/template_admin/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="${pageContext.request.contextPath}/template_admin/js/custom.js"></script>
</body>

</html>