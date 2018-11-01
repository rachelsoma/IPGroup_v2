<%@page import="java.sql.*,java.util.*, java.util.Date, java.util.Enumeration,java.text.*"%>

<%@include file="global.jsp"%>
<%

	statement.executeUpdate(usedb);
	int itemDb = 0;

	String itemIn = request.getParameter("item");

	rs = statement.executeQuery(String.format("SELECT itemID from item WHERE itemID='%s'", itemIn));
	while (rs.next()) {
		itemDb = rs.getInt(1);
	}
	String reserveIn = request.getParameter("reserve");
	String endDateHrIn = request.getParameter("endDateHr");
	String endDateMinIn = request.getParameter("endDateMin");
	int userIn = 0; //TODO this should be id of current user
	
	int HrInt = Integer.parseInt(endDateHrIn); 
	int minInt = Integer.parseInt(endDateMinIn);
	int countdown = HrInt * 60 + minInt;



// 	try {

		String input;
		input = String.format("INSERT INTO auction(itemID,reserve,endTime,currentHighBid) VALUES ('%s','%s','"+countdown+"','0')", itemIn,reserveIn);
		int insert = statement.executeUpdate(input);
		response.sendRedirect("home.jsp");
// 	} catch (Exception e) {
// 		System.out.print(e);
// 		e.printStackTrace();
// // 		response.sendRedirect("home.jsp");
// 		out.println("Something is wrong");

// 	}
%></html>