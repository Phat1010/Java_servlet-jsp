<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">


        function search()
        {
        	
        	 
        	var search = document.myform.search.value;
         
        	var url = "find_Grammar_Client;
        	
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
        			document.getElementById("findgrammar").innerHTML=data;
        		}
        			

        	}
        	xhttp.open("GET",url,true);
        	xhttp.send();

        }
        	

        </script>
</head>
<body>

<form name="myform">
 <input type="text" name="search" onkeyup="search()">
</form>

<div id="findgrammar">
hello
	
</div>

</body>
</html>