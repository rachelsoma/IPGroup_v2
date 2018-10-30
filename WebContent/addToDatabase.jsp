<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%@include file="global.jsp" %>
<%
String usernameIn=request.getParameter("username");
String emailIN =request.getParameter("email");
String passwordIn=request.getParameter("password");

try
{
/* Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", ""); */


statement.executeUpdate(usedb); 
int insert=statement.executeUpdate("INSERT INTO user(username,password,email) VALUES ('"+usernameIn+"','"+passwordIn+"','"+emailIN+"');");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>