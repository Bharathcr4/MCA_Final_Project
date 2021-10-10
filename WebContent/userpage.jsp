<%@page import="java.sql.*"%>
<html>
<head>
<title>IBE - User Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
<script src="jquery/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body background="images/enc1.jpg">
	<!-- start header -->
	<jsp:include page="header.jsp" />

	<center><h1 class="pageTitle"><b>User Home</b></h1></center>
	<div class="container" style="height: 50%">
		<div align="center">
			<%
				String msg = "";
				msg = (String) request.getAttribute("msg");
				if (msg != null) {
			%>
			<span style="color: green; font-size: 18px; padding: 10px;"><%=msg%></span>
			<%
				}
			%>
		</div>
		<br />
		<div class="row">
			<div class="col-sm-2">
				<h3>
					<a href="search.jsp"><b>Search Files</b> </a>
				</h3>
			</div>
			<div class="col-sm-2">
				<h3>
					<a href="downloadfile.jsp"><b>Download File</b></a>
				</h3>
			</div>
			<div class="col-sm-2">
				<h3>
					<a href="index.jsp"><b>Log Out</b> </a>
				</h3>
			</div>


			<!----//End-content---->
		</div>
	</div>
	<!--------//end-blog----------->
	<div class="footer">
		<div class="wrap">
			<div class="social_2 social_3">
				<ul>
					<li class="facebook"><a href="#"><span> </span></a></li>
					<li class="twitter"><a href="#"><span> </span></a></li>
					<li class="google"><a href="#"><span> </span></a></li>
				</ul>
			</div>
		</div>
		<!-- scroll_top_btn -->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {

				var defaults = {
					containerID : 'toTop', // fading element id
					containerHoverID : 'toTopHover', // fading element hover id
					scrollSpeed : 1200,
					easingType : 'linear'
				};

				$().UItoTop({
					easingType : 'easeOutQuart'
				});

			});
		</script>
		<a href="#" id="toTop" style="display: block;"><span
			id="toTopHover" style="opacity: 1;"></span></a>
		<div class="copy">
			<p>
				 <a href=""
					target="_blank"></a>
			</p>
		</div>
	</div>
</body>
</html>