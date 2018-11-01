
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
		<div class="contentcard">

			<form action="addToDatabase.jsp" method="post">
				<div class=col-md-8">
					<label>user name </label><input type="text" name="username">
				</div>
				<div class=col-md-8">
					<label>Password</label> <input type="password" name="password">
				</div>
				<div class=col-md-8">
					<label>email</label> <input type="email" name="email">
				</div>
				<div class=col-md-8">
					<input type="submit" name="submit">
				</div>
			</form>
		</div>
</body>
</html>