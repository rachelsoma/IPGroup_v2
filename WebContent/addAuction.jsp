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
		<header>
		<div class="row">
			<div class="col-md-8">
				<h1>Auction Site</h1>
				<div class="row">
					<div class="col-md-4">
						<a href="register.jsp">Register</a>
					</div>
					<div class="col-md-4">
						<a href="addItem.jsp">Add item</a>
					</div>
					<div class="col-md-4">
						<a href="addAuction.jsp">Add Auction</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 mr-auto">
				<div class="col-md-12 card">
					<%
						if (loggedIn == true) {
					%>
					<p>logged in</p>
					<%
						} else {
					%>
					<form method="post" action="validate.jsp">
						<p style="color: red;"></p>
						<div class="input-box">
							<label for="username">User name:</label> <input type="text"
								name="username" maxlength="50" id="username"
								class="form-control"> <label for="password">Password:</label>
							<input type="password" name="password" maxlength="20"
								id="password" class="form-control">
						</div>
						<div class="input-box">
							<input type="submit" value="Login" name="submit"
								class="form-control btn.primary">
						</div>
					</form>
					<%
						}
					%>
				</div>

			</div>

		</div>
		</header>
		<div class="row">
			<div class="contentcard">
				<form method="post" action="addAuctionToDatabase.jsp">
					<div class="input-box">
						<%
							int userId = 1;
							try {
								statement.executeUpdate(usedb);
								String getItemsQry = String.format("select * from item");
								rs = statement.executeQuery(getItemsQry);
						%>


						<label>Create a new auction</label> <select id="item" name="item">
							<%
								while (rs.next()) {
							%>
							<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
							<%
								}
							%>
						</select>


						<%
							} catch (Exception e) {
								out.println("wrong entry" + e);
							}
						%>



					</div>
					<div class="input">
						<label for="reserve">Reserve price:</label> <input type="decimal"
							name="reserve" maxlength="6" id="reserve" required>
					</div>


					End Date: <input type="date" name="endDate" id="endDate"> <input
						type="submit" value="Start auction" name="submit">
				</form>
			</div>

		</div>
	</div>
	</div>
</body>