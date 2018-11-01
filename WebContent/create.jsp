<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@include file="global.jsp" %>
<html>
<head>
<title>Create a Database using JSP</title>
</head>
<body>
	<h1>Create a Database using JSP</h1>
	<%
		int i = 0;
		
		String drop = "DROP DATABASE IF EXISTS " + dbName; 
		String createDb = "CREATE DATABASE " + dbName;
		String createTbl = "CREATE TABLE ";
		
		String[] newTable = { "user", "item", "bids", "auction", "category" }; 
		String[] newCols = { 
				/* user */ "userID int NOT NULL AUTO_INCREMENT, username varchar(50), password varchar(50), email varchar(90), PRIMARY KEY (userID)", 
				/* item */ "itemID int NOT NULL AUTO_INCREMENT,itemTitle varchar(100), description varchar(255), vendor int, category varchar(20), PRIMARY KEY (itemID)",
				/* bids */ " bidID int NOT NULL AUTO_INCREMENT,amount decimal(18,2),userID numeric(10),auctionID numeric(10), bidTime DATETIME, PRIMARY KEY (bidID)",
				/* auction */ " auctionID int NOT NULL AUTO_INCREMENT, itemID int, reserve decimal(18,2), currentHighBid decimal(18,2), startTime DATETIME DEFAULT CURRENT_TIMESTAMP, endTime int,PRIMARY KEY (auctionID)",
				/* category */ " catID int NOT NULL AUTO_INCREMENT, name varchar (20), PRIMARY KEY (catID)" 
				};
		
		//TODO Add foreign keys
		
		String[] categories = {"sedan", "hatchback", "ute", "van", "4x4", "hybrid/electric"};
	
// 		try {

			statement.executeUpdate(drop);
			statement.executeUpdate(createDb);
			out.println("<p>Database test created sucessfully.</p>");
			
 			/* Add tables */
			while (i < newTable.length) {
				statement.executeUpdate(usedb);
				statement.executeUpdate(createTbl + newTable[i]+"("+newCols[i]+");");
				out.println("<p>Table " + newTable[i] + " created sucessfully.</p>");
				i++;
			}
 			
 			/* Populate categories */
 			i = 0;
 			while (i < categories.length){
 					statement.executeUpdate("INSERT INTO category (name) VALUES ('"+categories[i]+"');");
 					out.println("<p>category " + categories[i] + " added sucessfully.</p>");
 					i++;
 			}
 			
// 		} catch (Exception e) {
// 			out.println("An error occurred.");
// 		}
	%>
</body>
</html>