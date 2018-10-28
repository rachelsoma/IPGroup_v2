<%-- 
    Document   : validate
--%>
 
<%@ page import ="java.sql.*" %>


<%

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/record";
String user = "root";
String dbpsw = "root";


    try{
        String username = request.getParameter("username");   
        String password = request.getParameter("password");
        Class.forName(driverName);  // MySQL database connection
		Connection con = DriverManager.getConnection(url, user, dbpsw);    
        PreparedStatement pst = con.prepareStatement("Select user,pass from login where user=? and pass=?");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())           
           out.println("Valid login credentials");        
        else
           out.println("Invalid login credentials");            
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>