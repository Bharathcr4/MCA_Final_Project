<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="css/components.css">
<link rel="stylesheet" href="css/icons.css">
<link rel="stylesheet" href="css/mybootstrap.css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
</head>
<body style="background-color: #F8F9F9;">
	<div><%@include file="top_nav.jsp"%></div>
	<div class="container">
		<div class="row">
			<div class=""></div>
			<form action="userlogincheck.jsp" method="post">
				<div class="col-md-offset-2 col-md-8">
					<div class="panel panel-warning">
						<div class="panel-heading text-center">
							<h3>User Login</h3>
						</div>
						<div class="panel-body">
							<%
								String message = (String) request.getAttribute("msg");
								if (message != null) {
							%>
							<div class="row">
								<div class="alert alert-success">
									<%=message%>
								</div>
							</div>
							<%
								}
							%>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label>User ID. : </label> <input type="text"
											class="form-control" name="username" placeholder="User ID"
											required="required">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label>Password : </label> <input type="password"
											name="password" maxlength="6" class="form-control"
											placeholder="Password">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<a href="user_register.jsp">New User? Register here</a>
								</div>
							</div>
						</div>
					</div>
					<div class="panel-footer">
						<div class="row">
							<div class="col-md-12 text-center">
								<input type="submit" value="Login" class="btn btn-primary">
								<input type="reset" value="Clear" class="btn btn-default">
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="empty_height"></div>
	<div class="row">
		<div class="col-md-12"><%@include file="footer.jsp"%></div>
	</div>
</body>
</html>