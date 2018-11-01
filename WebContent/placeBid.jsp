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
		
<!-- get auction number from place bid button on home page  and display the auction details-->
<% String itemID = request.getParameter("item");%>
<!-- get user id from session -->

<!-- if current user == vendor say "You cannot bid on your own item" -->

<!-- else enter bid amount -->

<!-- send to db.  if bid is > current highest say "You must bid an amount higher than <current highest>" -->
		
		
		
	</div>
</body>
</html>