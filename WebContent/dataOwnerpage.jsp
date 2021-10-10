<%@page import="java.sql.*"%>
<html>
	<head>	
<title>IBE - Data owner</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
<script src="jquery/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
	<body background="images/enc1.jpg">
<!-- start header -->
<jsp:include page="header.jsp"/>

<center><h1 class="pageTitle"><b>Data Owner</b></h1></center>
<div class="container" style="height: 50%">
<div class="row">
		
			<div class="col-sm-3">
				<h3>
					<a href="uploadFile.jsp"><b>Upload Files</b> </a>
				</h3>
			</div>
	
		<div class="col-sm-3">
				<h3>
					<a href="viewfiles.jsp?userId=<%=session.getAttribute("userId")%>"><b>View Files</b> </a> 
				</h3>
			</div>
			
			<div class="col-sm-3">
				<h3>
					<a href="index.jsp">   <b>Log Out</b> </a>
				</h3>
			</div>

</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>