<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<title>Create a Database using JSP</title>
</head>
<body>
	<h1>Create a Database using JSP</h1>
	<%
	String dbName = "ipgroup";
	
	String drop = "DROP DATABASE IF EXISTS " + dbName;
	String createDb = "CREATE DATABASE " + dbName;
	
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "");
			Statement statement = connection.createStatement();
			statement.executeUpdate(drop);
			statement.executeUpdate(createDb);
			out.println("Database test created sucessfully.");
			
			
		} catch (Exception e) {
			out.println("An error occurred.");
		}
	%>
</body>
</html>