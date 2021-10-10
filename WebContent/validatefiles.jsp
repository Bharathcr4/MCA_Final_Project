<%@page import="java.sql.*"%>
<%@ page import="com.mega.database.*"%>
<html>
<head>
<title>IBE - TPA Validate</title>
<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
<script src="jquery/jquery.min.js"></script>
<script
	src="/js/bootstrap.min.js"></script>
</head>
<link href="css/megastyle.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body background="images/enc1.jpg">
	<jsp:include page="header.jsp" />

	<!--------start-blog----------->
	<%
		String redirectPage = "";
	%>

	<center><h1 class="pageTitle"><b>File Details</b></h1></center>
	<div class="table-responsive" style="height: 40%">
		<table class="display_table">
			<%
				try {
					System.out.println("In validate files");
					int i = 1;
					ResultSet resultset1 = DB.stmt()
							.executeQuery("select filename,filekey,userid,server,auth,id from filedetails");
					redirectPage = "authorityPage.jsp";
					ResultSet rs = null;
			%>
			<tr style="font-size: large; color: brown; font-family: serif">
				<th style="text-align: center">SI NO</th>
				<th style="text-align: center">FileName</th>
				<th style="text-align: left">FileKey</th>
				<th style="text-align: left">OwnerName</th>
				<th style="text-align: left">Server</th>
				<th style="text-align: left">Validation</th>
				<th style="text-align: left">Status</th>

			</tr>
			<%!boolean isEmpty = true;%>

			<%
				boolean isEmpty = true;
					while (resultset1.next()) {
						int id = resultset1.getInt(3);
						System.out.println("ID is "+id);
						rs = DB.stmt().executeQuery("select * from dataowner where uid = '" + id + "'");
						isEmpty = false;
						while (rs.next()) {
							int auth = resultset1.getInt(5);
			%>

			<tr style="font-size: large; color: slateblue; font-family: serif">
				<td style="text-align: left"><%=i++%></td>
				<td style="text-align: left"><%=resultset1.getString(1)%></td>
				<td style="text-align: left"><%=resultset1.getString(2)%></td>
				<td style="text-align: left"><%=rs.getString(4)%></td>
				<td style="text-align: left"><%=resultset1.getString(4)%></td>
				<%
					if (auth == 1) {
				%>
				<td style="text-align: left">Validated</td>
				<%
					} else {
				%>
				<td style="text-align: left"><a
					href="validate.jsp?id=<%=resultset1.getInt(6)%>">Validate</a></td>
				<%
					}
								if (auth == 2) {
				%>
				<td style="text-align: left">Attacked</td>
				<%
					} else {
				%>
				<td style="text-align: left">Safe</td>
				<%
					}
				%>
			</tr>
			<%
				}
					}
					if (isEmpty) {
			%>
			<tr>
				<td colspan="5" class="empty_table_text">No Records Found</td>
			</tr>
			<%
				}
				} catch (Exception e) {
					System.out.println(e);
				}
			%>
		</table>
		<div class="backButton button1">
			<a href="<%=redirectPage%>">Go Back</a>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>