<%@page import="java.sql.*,java.util.*"%>

<%@include file="global.jsp"%>
<%
	statement.executeUpdate(usedb);
	int catDb = 0;

	String catIn = request.getParameter("category");

	rs = statement.executeQuery(String.format("SELECT catID from category WHERE catID='%s'", catIn));
	while (rs.next()) {
		catDb = rs.getInt(1);
	}
	String nameIn = request.getParameter("itemTitle");
	String descIn = request.getParameter("description");
	String userIn = (String) session.getAttribute(userID); 
	int userInt = Integer.valueOf(userIn);
	
	
	try {

		String input;
		input = String.format(
				"INSERT INTO item(itemTitle,description,category,vendor) VALUES ('%s','%s',%d,%d)", nameIn,
				descIn, catDb, userInt);
		int insert = statement.executeUpdate(input);
		response.sendRedirect("home.jsp");
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
		response.sendRedirect("home.jsp");
		out.println("Something is wrong");

	}
%>