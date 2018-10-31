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
	String endDateIn = request.getParameter("endDate");
	int userIn = 0; //TODO this should be id of current user
	
	SimpleDateFormat d=new SimpleDateFormat("yyyy-MM-dd");
    Date dateDb=d.parse(endDateIn);          
String dateString=dateDb.toString();
    java.sql.Date sqlDate = new java.sql.Date(dateDb.getTime());    

// 	try {

		String input;
		input = String.format("INSERT INTO auction(itemID,reserve,endTime,currentHighBid) VALUES ('%s','%s','"+dateString+"','0')", itemIn,reserveIn);
		int insert = statement.executeUpdate(input);
		response.sendRedirect("home.jsp");
// 	} catch (Exception e) {
// 		System.out.print(e);
// 		e.printStackTrace();
// // 		response.sendRedirect("home.jsp");
// 		out.println("Something is wrong");

// 	}
%></html>