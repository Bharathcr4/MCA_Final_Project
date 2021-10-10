<!DOCTYPE HTML>
<html>
<head>
<title>Cloud Computing</title>
<link href="css/megastyle.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
<script src="jquery/jquery.min.js"></script>
</head>
<body background="images/enc1.jpg">
	<jsp:include page="header.jsp" />
<center><h1 class="pageTitle"><b>User Login</b></h1></center>	
	<form action="userlogincheck.jsp" method="post">
		<div style="min-height: 450px; padding: 10px;" align="center">
			<div>
				<%
					String message = (String) request.getAttribute("msg");
					if (message != null) {
						out.println(message);
					}
				%>
			</div>
			<table class="login_style">
				<tr>
					<td><b>Login Name</b></td>

					<td><input type="text" name="username" id="USERNAME" style="" /></td>
				</tr>
				<tr>
					<td><b>Password</b></td>
					<td><input type="password" name="password" id="PASSWORD"
						MaxLength="8" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" name="Submit" value="Submit"
						id="submit" onclick="login()" /></td>
				</tr>

				<tr>

					<td colspan="2"><a href="userreg.jsp">New User? Register
							here</a></td>
				</tr>
			</table>
		</div>
	</form>
	<br />
	<br />
	<jsp:include page="footer.jsp" />
</body>
<script>
	document.getElementById('contentdiv').innerHTML = '${message}';
</script>
</html>