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
	<%
		//PROJECT STATUS TO BE UPDATED AS COMPLETED IF ALL THE TASKS OF THE PROJECT IS COMPLETE
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("SELECT* FROM PROJECT_DETAILS");
			while(rs.next())
			{
				
				int flag=1;
				//out.println(flag);
				int PROJECT_ID=rs.getInt(1);
				Class.forName("com.mysql.jdbc.Driver");
				Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
				PreparedStatement psmt1=con1.prepareStatement("SELECT* FROM TASK_DETAILS WHERE PROJECT_ID=?");
				psmt1.setInt(1,PROJECT_ID);
				ResultSet rs1=psmt1.executeQuery();
				while(rs1.next())
				{
					String status=rs1.getString(6);
					if(!status.equals("COMPLETED"))
					{
						flag=0;
						break;
					}
				}
				out.println(flag);
				if(flag==1)
				{
					try
					{
						Class.forName("com.mysql.jdbc.Driver");
						Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
						PreparedStatement psmt2=con2.prepareStatement("UPDATE PROJECT_DETAILS SET PROJECT_STATUS=? WHERE PROJECT_ID=?");
						psmt2.setString(1,"COMPLETED");
						psmt2.setInt(2,PROJECT_ID);
						psmt2.executeUpdate();
					}
					catch(Exception ex)
					{
						out.println("Exception: "+ex);
					}
				}
			}
		}
	    catch(Exception ex)
		{
	    		out.println("Exception: "+ex);
		}
	%>
	<h1 align="center">VIEW PROJECTS</h1>
	<table id="customers">
	<tr>
		<th>PROJECT ID</th>
		<th>PROJECT NAME</th>
		<th>PROJECT DESCRIPTION</th>
		<th>DEADLINE</th>
		<th>LEAD DETAILS</th>
		<th>PROJECT STATUS</th>
		<th>VIEW PROGRESS</th>
	</tr>
	<%
		String USER_NAME=(String)session.getAttribute("username");
		//out.println(USER_NAME);
		int MANAGER_ID=0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
			//String query="SELECT* MANAGERDETAILS WHERE USER_NAME=?";
			PreparedStatement psmt=con.prepareStatement("SELECT* FROM MANAGERDETAILS WHERE USER_NAME=?");
			psmt.setString(1,USER_NAME);
			ResultSet rs=psmt.executeQuery();
			if(rs.next())
			{
				MANAGER_ID=rs.getInt(1);
			}
		}
		catch(Exception ex)
		{
			out.print("Exception: "+ex);
		}
	%>
	<%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
			String query="SELECT* FROM PROJECT_DETAILS WHERE MANAGER_ID=?";
			PreparedStatement psmt=con.prepareStatement(query);
			psmt.setInt(1,MANAGER_ID);
			ResultSet rs=psmt.executeQuery();
			while(rs.next())
			{
				int LEAD_ID=rs.getInt(5);
				String LEAD_NAME="";
				String LEAD_EMAIL="";
				String LEAD_CONTACTNO="";
				Class.forName("com.mysql.jdbc.Driver");
				Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
				String query1="SELECT* FROM LEADDETAILS WHERE LEAD_ID=?";
				PreparedStatement psmt1=con.prepareStatement(query1);
				psmt1.setInt(1,LEAD_ID);
				ResultSet rs1=psmt1.executeQuery();
				while(rs1.next())
				{
					LEAD_NAME=rs1.getString(4);
					LEAD_EMAIL=rs1.getString(5);
					LEAD_CONTACTNO=rs1.getString(6);
				}
				out.print("<form action='Manager_ViewProgress1.jsp'");
				out.print("<tr>");
				out.print("<td><input type='text' name='projectid' value='"+rs.getInt(1)+"' readonly></td>");
				out.print("<td>"+rs.getString(2)+"</td>");
				out.print("<td>"+rs.getString(3)+"</td>");
				out.print("<td>"+rs.getString(4)+"</td>");
				out.print("<td><h3>"+LEAD_NAME+"<br>"+LEAD_EMAIL+"<br>"+LEAD_CONTACTNO+"</h3></td>");
				out.print("<td>"+rs.getString(7)+"</td>");
				out.print("<td><input type='submit' value='VIEW PROGRESS'></td>");
				out.print("</tr>");
				out.print("</form>");
			}
		}
		catch(Exception ex)
		{
			out.println("Exception"+ex);	
		}
	
	%>
	<%
	int COMPLETE_COUNT=0;
	int INCOMPLETE_COUNT=0;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
		String query="SELECT* FROM PROJECT_DETAILS";
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(query);
		//psmt.setInt(1,PROJECT_ID);
		//psmt.executeUpdate();
		
			while(rs.next())
			{
				String status=rs.getString(7);
				if(status.equals("NOT COMPLETED"))
				{
					INCOMPLETE_COUNT++;	
				}
				else if(status.equals("COMPLETED"))
				{
					COMPLETE_COUNT++;
				}
			}
			//out.println(COMPLETE_COUNT);
			//out.println(INCOMPLETE_COUNT);
	}
	catch(Exception ex)
	{
		out.println("Exception: "+ex);
	}
	
	%>
	<div id="piechart" style="width: 900px; height: 500px; margin: 0 auto"></div>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Completed',     <%=COMPLETE_COUNT%>],
          ['Not Completed',  <%=INCOMPLETE_COUNT%>]
        ]);
		
        
        var options = {
          title: 'Project Status'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
    
    
	</table>
</body>
</html>