<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%@include file="global.jsp" %>
<%
statement.executeUpdate(usedb); 
//     try{ 
        String username = request.getParameter("username");   
        String password = request.getParameter("password");

        String loginQry="Select username,password from user where username='"+username+"' AND password='"+password+"'";

        rs = connection.createStatement().executeQuery(loginQry);
                        
        if(rs.next())           
           out.println("Valid login credentials");        
        else
           out.println("Invalid login credentials");            
//    }
//    catch(Exception e){       
//        out.println("Something went wrong !! Please try again");       
//    }      
%>