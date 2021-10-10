<%@page import="java.sql.*"%>
<%@ page import="com.mega.database.DB"%>
<html>
<head>
<title>IBE - TPA Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
<script src="jquery/jquery.min.js"></script>
<script
	src="js/bootstrap.min.js"></script>
</head>
<body background="images/enc1.jpg">
	<!-- start header -->
	<jsp:include page="header.jsp" />

	<center><h1 class="pageTitle"><b>Third Party Auditor</b></h1></center>
	<div class="container" style="height: 50%">
		<div class="row">
			<div class="col-sm-3">
				<h3>
					<a href="validatefiles.jsp"><b>Validate Files</b></a>
				</h3>
			</div>
			<div class="col-sm-3">
				<h3>
					<a href="validateusers.jsp"><b>Validate Users</b></a>
				</h3>
			</div>
			<!-- 			<div class="col-sm-3">
				<h3>
					<a href="giveAuth.jsp">SecretKey Generation</a>
				</h3>
			</div> -->
			<div class="col-sm-3">
				<h3>
					<a href="index.jsp"><b>Log Out</b></a>
				</h3>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />

</body>
</html>