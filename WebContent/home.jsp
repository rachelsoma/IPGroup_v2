<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="global.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" href="CSS/bootstrap.css">
<link rel="stylesheet" href="CSS/styles.css">
<title>Auction Site</title>
</head>
<body>
	<div class="container">

		<!-- 	includes header -->
		<jsp:include page="pageParts/header.jsp" />

		<div class="row content">
			<!-- 	for each item -->

			<%
				statement.executeUpdate(usedb);
				rs = statement.executeQuery("select * from auction");
				while (rs.next()) {
			%>
			<div class="col-md-4">
				<div class="card">
					<%
						// 						ResultSet displayItems = statement.executeQuery("select " + rs.getString(2) + " from item");
					%>
					<form method="post" action="placeBid.jsp">
						<h3><%=rs.getString(2)%></h3>
						<!-- name -->
						<p><%=rs.getString(3)%></p>
						<!-- reserve -->
						<p><%=rs.getString(6) %></p>
						<!-- time remaining -->
						
						<input type="submit" value="Bid now" name="<%=rs.getString(2)%>">
					</form>
				</div>
			</div>
			<%
				}
			%>

			<!-- 	end for each -->

		</div>
	</div>
</body>
</html>