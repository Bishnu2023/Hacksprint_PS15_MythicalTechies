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

``<%
		int PROJECT_ID=Integer.parseInt(request.getParameter("projectid"));
		//out.print(PROJECT_ID);
	%>
	<h1 align="center">VIEW TASKS</h1>
	<table id="customers">
	<tr>
		<th>TASK ID</th>
		<th>TASK DESCRIPTION</th>
		<th>DEADLINE</th>
		<th>RESOURCES_ID</th>
		<th>TASK_STATUS</th>
	</tr>
	<%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
			//Statement st=con.createStatement();
			PreparedStatement psmt=con.prepareStatement("SELECT* FROM TASK_DETAILS WHERE PROJECT_ID=?");
			psmt.setInt(1,PROJECT_ID);
			ResultSet rs=psmt.executeQuery();
			while(rs.next())
			{
				//out.print("<form action=''");
				out.print("<tr>");
				out.print("<td>"+rs.getInt(1)+"</td>");
				out.print("<td>"+rs.getString(3)+"</td>");
				out.print("<td>"+rs.getString(4)+"</td>");
				out.print("<td>"+rs.getString(5)+"</td>");
				out.print("<td>"+rs.getString(6)+"</td>");
				//out.print("<td>"+rs.getString(6)+"</td>");
				//out.print("<td><input type='button' value='VIEW PROGRESS'></td>");
				out.print("</tr>");
				//out.print("</form>");
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