<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
<link rel="stylesheet" href="css/components.css">
<link rel="stylesheet" href="css/icons.css">
<link rel="stylesheet" href="css/mybootstrap.css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
</head>
<body background="images/enc1.jpg">
	<div><%@include file="top_nav.jsp"%></div>
	<div class="container">
		<div class="row">
			<div class="col-md-offset-2 col-md-8">
				<div class="panel panel-warning">
					<div class="panel-heading text-center">
						<h3>User Register</h3>
					</div>
					<form action="regischeck.jsp" method="post">
						<input type="hidden" name="utype" value="boys">
						<div class="panel-body">
							<%
								String message = (String) request.getAttribute("message");
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
								<div class="col-md-6">
									<div class="form-group">
										<label>User ID. : </label> <input type="text"
											class="form-control" name="user" placeholder="User ID"
											required="required">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Email ID : </label> <input type="email"
											class="form-control" name="email" placeholder="Email ID">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>First Name : </label> <input type="text"
											class="form-control" name="firstname"
											placeholder="First Name" required="required">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Last Name : </label> <input type="text"
											class="form-control" name="lastname" placeholder="Last Name"
											required="required">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>Date of Birth</label> <input type="date"
											class="form-control" name="dob" required="required">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Mobile Number : </label> <input type="text"
											class="form-control" name="phone" placeholder="Mobile Number">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>Gender</label> <select name="gender"
											class="form-control" required="required">
											<option value="">-- Select Gender --</option>
											<option value="Male">Male</option>
											<option value="Female">Female</option>
										</select>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Address : </label> <input type="text" name="address"
											class="form-control" placeholder="Address">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>Password : </label> <input type="text" name="passwd"
											maxlength="6" class="form-control" placeholder="Password">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Confirm Password : </label> <input type="text"
											name="confirm" maxlength="6" class="form-control"
											placeholder="Confirm Password">
									</div>
								</div>
							</div>
						</div>
						<div class="panel-footer">
							<div class="row">
								<div class="col-md-12 text-center">
									<input type="submit" value="Register" class="btn btn-primary">
									<input type="reset" value="Clear" class="btn btn-default">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<br> <br> <br>
		<div class="empty_height"></div>
	</div>
	<div class="s-12 l-12"><%@include file="footer.jsp"%></div>
</body>
</html>