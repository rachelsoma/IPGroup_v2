<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>


<%
Connection connection = null;
String dbName = "ipgroup";
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "");
Statement statement = connection.createStatement();
String usedb = "USE "+dbName+";";
ResultSet rs = null;
PreparedStatement ps = null;


String driverName = "com.mysql.jdbc.Driver";

%>