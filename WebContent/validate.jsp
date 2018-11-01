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
		<!-- 	includes header -->
		<jsp:include page="pageParts/header.jsp" />
<%
	statement.executeUpdate(usedb); 
     try{ 
        String username = request.getParameter("username");   
        String password = request.getParameter("password");

        String loginQry="Select username,password from user where username='"+username+"' AND password='"+password+"'";

        rs = connection.createStatement().executeQuery(loginQry);
                        
        if(rs.next())  {         
           	out.println("Valid login credentials");
           	loggedIn = true;
       		response.sendRedirect("home.jsp");
       			} else {
			out.println("Invalid login credentials");
			out.println("username:" + username);
			out.println("password:" + password);
		}
	} catch (Exception e) {
		out.println("Something went wrong !! Please try again");
	}
	
%>