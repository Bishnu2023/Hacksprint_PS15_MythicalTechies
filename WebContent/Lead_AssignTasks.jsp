<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
	<h1 align="center">VIEW PROJECTS</h1>
	<table id="customers">
	<tr>
		<th>PROJECT ID</th>
		<th>PROJECT NAME</th>
		<th>PROJECT DESCRIPTION</th>
		<th>DEADLINE</th>
		<th>PROJECT STATUS</th>
		<th>ASSIGN TASK</th>
	</tr>
	<%
		String USER_NAME=(String)session.getAttribute("username");
		//out.print(USER_NAME);
		int LEAD_ID=0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
			//String query="SELECT* MANAGERDETAILS WHERE USER_NAME=?";
			PreparedStatement psmt=con.prepareStatement("SELECT* FROM LEADDETAILS WHERE USER_NAME=?");
			psmt.setString(1,USER_NAME);
			ResultSet rs=psmt.executeQuery();
			if(rs.next())
			{
				LEAD_ID=rs.getInt(1);
			}
		}
		catch(Exception ex)
		{
			out.print("Exception: "+ex);
		}
		//out.print(LEAD_ID);
	%>
	<%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
			String query="SELECT* FROM PROJECT_DETAILS WHERE LEAD_ID=?";
			PreparedStatement psmt=con.prepareStatement(query);
			psmt.setInt(1,LEAD_ID);
			ResultSet rs=psmt.executeQuery();
			while(rs.next())
			{
				out.print("<form action='Lead_AssignTasks1.jsp'");
				out.print("<tr>");
				out.print("<td><input type='text' name='projectid' value='"+rs.getInt(1)+"' readonly></td>");
				out.print("<td>"+rs.getString(2)+"</td>");
				out.print("<td>"+rs.getString(3)+"</td>");
				out.print("<td>"+rs.getString(4)+"</td>");
				//out.print("<td>"+rs.getString(5)+"</td>");
				out.print("<td><h2>"+rs.getString(7)+"<h2></td>");
				out.print("<td><input type='submit' value='ASSIGN TASK'></td>");
				out.print("</tr>");
				out.print("</form>");
			}
		}
		catch(Exception ex)
		{
			out.println("Exception"+ex);	
		}
	%>
	</table>
</body>
</html>