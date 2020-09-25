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
	<h1 align="center">VIEW TASKS</h1>
	<table id="customers">
	<tr>
		<th>PROJECT ID</th>
		<th>TASK ID</th>
		<th>TASK DESCRIPTION</th>
		<th>DEADLINE</th>
		<th>TASK STATUS</th>
		<th>UPDATE STATUS</th>
	</tr>
	<%int RESOURCE_ID=0; %>
	<%
			String USER_NAME=(String)session.getAttribute("username");
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
				String query="SELECT* FROM RESOURCESDETAILS WHERE USER_NAME=?";
				PreparedStatement psmt=con.prepareStatement(query);
				psmt.setString(1,USER_NAME);
				ResultSet rs=psmt.executeQuery();
				while(rs.next())
				{
					RESOURCE_ID=rs.getInt(1);
				}
			}
			catch(Exception ex)
			{
				out.println("Exception: "+ex);
			}
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
			String query="SELECT* FROM TASK_DETAILS WHERE RESOURCES_ID=?";
			PreparedStatement psmt=con.prepareStatement(query);
			psmt.setInt(1,RESOURCE_ID);
			ResultSet rs=psmt.executeQuery();
			while(rs.next())
			{
				out.print("<form action='Resource_UpdateStatus.jsp'");
				out.print("<tr>");
				//out.print("<td><input type='text' name='projectid' value='"+rs.getInt(1)+"' readonly></td>");
				
				out.print("<td><input type='text' name='projectid' readonly value='"+rs.getString(2)+"' </td>");
				out.print("<td><input type='text' name='taskid' readonly value='"+rs.getString(1)+"' </td> ");
				out.print("<td>"+rs.getString(3)+"</td>");
				out.print("<td>"+rs.getString(4)+"</td>");
				//out.print("<td>"+rs.getString(5)+"</td>");
				out.print("<td><h2>"+rs.getString(6)+"</h2></td>");
				//out.print("<td><input type='submit' value='IN PROGRESS'>&nbsp<input type='submit' value='COMPLETED'></td>");
				%>
					<!-- <td><select name="taskstatus">
    				<option value="IN PROGRESS">IN PROGRESS</option>
    				<option value="COMPLETED">COMPLETED</option>
  					</select></td>-->
				<%
				out.print("<td><input type='submit' value='UPDATE STATUS'></td>");
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