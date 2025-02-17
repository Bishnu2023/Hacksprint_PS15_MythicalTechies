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
		<th>RESOURCE DETAILS</th>
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
				int RESOURCES_ID=rs.getInt(5);
				String RESOURCE_NAME="";
				String RESOURCE_EMAIL="";
				String RESOURCE_CONTACTNO="";
				Class.forName("com.mysql.jdbc.Driver");
				Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
				String query1="SELECT* FROM RESOURCESDETAILS WHERE RESOURCE_ID=?";
				PreparedStatement psmt1=con.prepareStatement(query1);
				psmt1.setInt(1,RESOURCES_ID);
				ResultSet rs1=psmt1.executeQuery();
				while(rs1.next())
				{
					RESOURCE_NAME=rs1.getString(4);
					RESOURCE_EMAIL=rs1.getString(5);
					RESOURCE_CONTACTNO=rs1.getString(6);
				}
				//out.print("<form action=''");
				out.print("<tr>");
				out.print("<td>"+rs.getInt(1)+"</td>");
				out.print("<td>"+rs.getString(3)+"</td>");
				out.print("<td>"+rs.getString(4)+"</td>");
				out.print("<td><h3>"+RESOURCE_NAME+"<br>"+RESOURCE_EMAIL+"<br>"+RESOURCE_CONTACTNO+"</h3></td>");
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
	
	<%
	int N_COUNT=0;
	int INPROGRESS_COUNT=0;
	int COMPLETED_COUNT=0;
	int BACKLOG_COUNT=0;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
		String query1="SELECT* FROM TASK_DETAILS WHERE PROJECT_ID=?";
		PreparedStatement psmt=con1.prepareStatement(query1);
		psmt.setInt(1,PROJECT_ID);
		ResultSet rs1=psmt.executeQuery();
		while(rs1.next())
		{
			String status=rs1.getString(6);
			//out.println("PROJECT_STATUS: "+status);
			if(status.equals("NEW"))
			{
				N_COUNT++;
			}
			else if(status.equals("COMPLETED"))
			{
				COMPLETED_COUNT++;
			}
			else if(status.equals("IN PROGRESS"))
			{
				INPROGRESS_COUNT++;
			}
			else if(status.equals("BACKLOG"))
			{
				BACKLOG_COUNT++;	
			}
		}
		//out.println("N_COUNT:"+N_COUNT);
		//out.println("INPROGRESS_COUNT:"+INPROGRESS_COUNT);
		//out.println("BACKLOG_COUNT:"+BACKLOG_COUNT);
		//out.println("COMPLETED_COUNT:"+COMPLETED_COUNT);
	}
	catch(Exception ex)
	{
		out.println("Exception: "+ex);
	}
	%>
	<div id="piechart" style="width: 900px; height: 500px; margin: 0 auto "></div>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Count'],
          ['NEW',     <%=N_COUNT%>],
          ['IN PROGRESS',<%=INPROGRESS_COUNT%>],
          ['COMPLETED', <%=COMPLETED_COUNT%>],
          ['BACKLOG', <%=BACKLOG_COUNT%>]
        ]);
		
        
        var options = {
          title: 'Task Status'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
	</table>
</body>
</html>