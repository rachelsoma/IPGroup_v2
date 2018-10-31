<%@page import="java.sql.*,java.util.*"%>

<%@include file="global.jsp"%>
<%
	String catIn = request.getParameter("category");
	String nameIn = request.getParameter("itemName");
	String descIn = request.getParameter("description");
	int userIn= 0; //TODO this should be id of current user

	try {

		statement.executeUpdate(usedb);
		String input = "INSERT INTO item(itemTitle,description,category,vendor) VALUES (%s,%s,%s,%d)"+ nameIn, descIn,catIn,userIn;
		   rs = connection.createStatement().executeQuery(input);
		out.println("Data is successfully inserted!");
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>