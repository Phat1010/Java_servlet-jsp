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
   
   
   <!-- table -->
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
     <!-- table --> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  
  
  
  
  
  
  
  
  
  
  
     
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
   

  
  
  
  <!-- Extra -->
  



  <!-- popup -->
 
 <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js">
	</script>
	<script>
	    $(document)
	            .ready(
	                    function() {
	                        //add more file components if Add is clicked
	                        $('#addFile')
	                                .click(
	                                        function() {
	                                            var fileIndex = $('#fileTable tr')
	                                                    .children().length - 1;
	                                            $('#fileTable')
	                                                    .append(
	                                                            '<tr><td>'
	                                                                    + '   <input type="file" name="files['+ fileIndex +']" />'
	                                                                    + '</td></tr>');
	                                        });
	 
	                    });
	</script>
 
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
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="white-box">
                            <h3 class="box-title">Programming</h3>
                        </div>
                    </div>
                </div>
       <!-- table dynamic -->  
       
       
    
<div class="container">
	<div class="row">
		
        
        <div class="col-md-12">
        <h4>Bootstrap Snipp for Datatable</h4>
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   
              <tr>
                       <th> <input type="checkbox" id="checkall" /></th>
                   <th>ID</th>
                    <th>Grammar Title</th>
                         <th>Content</th>
                
                     
                      <th>Edit</th>
                      
                       <th>Delete</th>
                       <th>Checked data</th>
                       </tr>
                   </thead>
                     
  <!--   <tbody>--> 

    

 
   
  <c:forEach items="${listexamination}" var="listexamination">
    <tr>
    <td><input type="checkbox" class="checkthis" /></td>
<td>${listexamination.idexamination}</td>
      <td>${listexamination.examinationname}</td> 
      
    
           <td>${listexamination.examinationimage}</td>
              

 

    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><a href="upload_file_excel_exam?id=${listexamination.idexamination}"> <button  class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" value="${listexamination.idexamination}"  name="edit1"><span class="glyphicon glyphicon-pencil"></span></button></a></p></td>
    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><a href="Delete_Table_Exam?delete1=${listexamination.idexamination}"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete"  value="${listexamination.idexamination}"  name="delete1"><span class="glyphicon glyphicon-trash"></span></button></a></p></td>
    	
    	<c:if test="${listexamination.checktable==1}">
    	<td><p data-placement="top" data-toggle="tooltip" title="Checked data"><a><!--  --><span class="far fa-check-circle"></span></a></p></td>
    	
    	</c:if>
    	
    	   	
    	<c:if test="${listexamination.checktable==0}">
    	<td><p data-placement="top" data-toggle="tooltip" title="Checked data"><a><!--  --><span class="fas fa-file-excel"></span></a></p></td>
    	
    	</c:if>
    	</tr>
    
   </c:forEach>
    
  <!--   </tbody>--> 
        
</table>



<!-- table -->
 <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
      </div>
          <div class="modal-body">
       
       <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>
       
      </div>
      
        <div class="modal-footer ">
        
      
          <input type="button" class="btn btn-success" class="glyphicon glyphicon-ok-sign" value="yes"> 
     
      
        <!--<button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>  -->
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
    
    <!-- End table dynamic -->





















<div class="clearfix"></div>
<ul class="pagination pull-right">

  
  
  <c:if test="${currentpage==1}">
  	

    <li class="disabled"><a class="page-link" href="#">Previous</a></li>
   <!--  <li ><a class="page-link" href="pagination?pageid=1">1</a></li>
    <li ><a class="page-link" href="pagination?pageid=2">2</a></li>
    <li ><a class="page-link" href="pagination?pageid=3">3</a></li> -->
    <li ><a class="page-link" href="manageexam?pageid=${currentpage+1}">Next</a></li>
 	   	
  	</c:if>
  	<c:if test="${currentpage == totalpage}">
  	

    <li class=""><a class="page-link" href="manageexam?pageid=${currentpage-1}">Previous</a></li>
      <!--  <li ><a class="page-link" href="pagination?pageid=1">1</a></li>
    <li ><a class="page-link" href="pagination?pageid=2">2</a></li>
    <li ><a class="page-link" href="pagination?pageid=3">3</a></li> -->
    <li class="disabled"><a class="page-link" href="#">Next</a></li>
 	   	
  	</c:if>
  		<c:if test="${(currentpage >1) && (currentpage <totalpage)}">
  	

    <li class="page-item"><a class="page-link" href="manageexam?pageid=${currentpage-1}">Previous</a></li>
   <!--  <li ><a class="page-link" href="pagination?pageid=1">1</a></li>
    <li ><a class="page-link" href="pagination?pageid=2">2</a></li>
    <li ><a class="page-link" href="pagination?pageid=3">3</a></li> -->
    <li class="page-item"><a class="page-link" href="manageexam?pageid=${currentpage+1}">Next</a></li>
 	   	
  	</c:if>
  
</ul>
                
            </div>
            
        </div>
	</div>
</div>

<!-- MODEL --><!-- MODEL --><!-- MODEL -->
<form action="manageexam" method="post">
<div class="container">
  <h2>Modal Example</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Add Exam</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
          <input type="text" name="titleExam" required>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default" >Next</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
</form>






<div class="container">
  <h2>Modal Example</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal2">Add file and image</button>


  <!-- Modal -->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <!-- <p>Some text in the modal.</p>
          <input type="text" name="titleExam" required>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default" >Next</button> -->
          
           <form method="POST" enctype="multipart/form-data" action="Upload_Audio_Image">
		 	<table id="fileTable">
		 			 <tr>
                   		 <td><input name="files[0]" type="file" /></td>
               		 </tr>
                	<tr>
                   		 <td><input name="files[1]" type="file" /></td>
                	</tr>		  	
		 	 </table>
			 <br/>
			 <input type="submit" value="Upload multiple file">
			 <input id="addFile" type="button" value="Add File" />
	</form>
          
        </div>
      </div>
      
    </div>
  </div>

</div>







<!-- MODEL --><!-- MODEL --><!-- MODEL -->





















                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
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