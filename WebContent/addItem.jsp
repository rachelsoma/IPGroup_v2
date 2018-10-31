<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>

<%@include file="global.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<title>Auction Site: Add item</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<form method="post" action="addItemToDatabase.jsp">
					<div class="input-box">
						<label for="itemTitle">Item Name: </label> <input type="text"
							name="itemTitle" maxlength="50" id="itemTitle" required>
					</div>
					<div class="input">
						<label for="description">Description:</label> <input type="text"
							name="description" maxlength="20" id="description" required>
					</div>
					<div class="input-box">


						<%
							try {
							
								statement.executeUpdate(usedb); 
							rs =statement.executeQuery("select * from category");
						%>

				
							<label>Drop down box to select category</label>
				
							<select id="category" name="category">
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
					<div class="input-box">
						<input type="submit" value="Add item" name="submit">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
