<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String usernameIn=request.getParameter("username");
String emailIN=request.getParameter("email");
String passwordIn=request.getParameter("password");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into users(username,password,email)values('"+usernameIn+"','"+passwordIn+"','"+emailIn+")");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>