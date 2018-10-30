<%-- 
    Document   : validate
--%>
 
<%@ page import ="java.sql.*" %>
<%@include file="global.jsp" %>


<%

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/record";
String user = "root";
String dbpsw = "root";


//     try{
        String username = request.getParameter("username");   
        String password = request.getParameter("password");

        String loginQry="Select user,pass from login where username="+username+" AND pass="+password;
        pst.setString(1, username);
        pst.setString(2, password);
        statement.executeQuery(loginQry);                        
        if(rs.next())           
           out.println("Valid login credentials");        
        else
           out.println("Invalid login credentials");            
//    }
//    catch(Exception e){       
//        out.println("Something went wrong !! Please try again");       
//    }      
%>