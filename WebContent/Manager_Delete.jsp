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
		<th>LEAD ID</th>
		<th>PROJECT STATUS</th>
		<th>DELETE</th>
	</tr>
	<%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("SELECT* FROM PROJECT_DETAILS");
			while(rs.next())
			{
				%><form action="Manager_Delete1.jsp">
				<%
				out.print("<tr>");
				out.print("<td><input type='text' name='projectid' value='"+rs.getInt(1)+"' readonly></td>");
				out.print("<td>"+rs.getString(2)+"</td>");
				out.print("<td>"+rs.getString(3)+"</td>");
				out.print("<td>"+rs.getString(4)+"</td>");
				out.print("<td>"+rs.getString(5)+"</td>");
				out.print("<td>"+rs.getString(6)+"</td>");
				out.print("<td><input type='submit' value='DELETE'></td>");
				out.print("</tr>");
				%></form><%
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