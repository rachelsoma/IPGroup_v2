<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="../global.jsp"%>


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
						if (session.getAttribute(loggedIn)=="true") {
					%>
					<p>logged in</p>
						<%out.println("UID: " + session.getAttribute(userID));%>
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