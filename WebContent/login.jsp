<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@include file="global.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%!
	String userdbName;
	String userdbPass;
	%>

	<%

		String usernameIn = request.getParameter("username");
		String passwordIn = request.getParameter("password");

		String sql = "select * from userdetail where name='"+usernameIn+"'and password='"+passwordIn+"'";
		
		if ( usernameIn!=null && passwordIn!=null) {
			try {
	
				ps = connection.prepareStatement(sql);
				ps.setString(1, usernameIn);
				ps.setString(2, passwordIn);
		
				rs = ps.executeQuery();
				if (rs.next()) {
					userdbName = rs.getString("username");
					userdbPass = rs.getString("password");
	
					if (usernameIn.equals(userdbName) && passwordIn.equals(userdbPass)) {
						session.setAttribute("username", userdbName);

						response.sendRedirect("home.jsp");
					}
				}

				else
					response.sendRedirect("error.jsp");
				rs.close();
				ps.close();
			}

			catch (SQLException sqe) {
				out.println(sqe);
			}
		}

		else {
	%>
	<center>
		<p style="color: red">Error In Login</p>
	</center>
	<%
		getServletContext().getRequestDispatcher("/home.jsp").include(request, response);
		}
	%>

</body>
</html>