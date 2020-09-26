<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  	<%
  		int N=25;
  		int IN_PROGRESS=25;
  		int COMPLETED=25;
  		int BACKLOG=5;
  	%>
  	<%
  			int PROJECT_ID=0;
  			Class.forName("com.mysql.jdbc.Driver");
  			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
  			Statement st=con.createStatement();
  			ResultSet rs=st.executeQuery("SELECT * FROM PROJECT_DETAILS");
  			while(rs.next())
  			{
  				out.println(rs.getInt(1));
  				PROJECT_ID=rs.getInt(1);
  				out.println("<h3>PROJECT NAME: "+rs.getString(2)+"</h3>");
  				int N_COUNT=0;
  				int INPROGRESS_COUNT=0;
  				int COMPLETED_COUNT=0;
  				int BACKLOG_COUNT=0;
  				//Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3305/hacksprint","root","1234");
  				String query1="SELECT* FROM TASK_DETAILS WHERE PROJECT_ID=?";
  				PreparedStatement psmt1=con.prepareStatement(query1);
  				psmt1.setInt(1,PROJECT_ID);
  				ResultSet rs1=psmt1.executeQuery();
  				while(rs1.next())
  				{
  					String PROJECT_STATUS=rs1.getString(6);
  					if(PROJECT_STATUS.equals("NEW"))
  					{
  						N_COUNT++;
  					}
  					if(PROJECT_STATUS.equals("IN PROGRESS"))
  					{
  						INPROGRESS_COUNT++;
  					}
  					if(PROJECT_STATUS.equals("COMPLETED"))
  					{
  						COMPLETED_COUNT++;
  					}
  					if(PROJECT_STATUS.equals("BACKLOG"))
  					{
  						BACKLOG_COUNT++;
  					}
  				}
  				
  				out.println("NEW TASKS: "+N_COUNT);
  				out.println("IN PROGRESS TASKS: "+INPROGRESS_COUNT);
  				out.println("COMPLETED TASKS: "+COMPLETED_COUNT);
  				out.println("BACKLOG TASKS: "+BACKLOG_COUNT);
  			
  		
  	
    out.println("<script type='text/javascript' src='https://www.gstatic.com/charts/loader.js'></script>");
    out.println("<script type='text/javascript'>");
    %>
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task_Category', 'Task_Count'],
          ['NEW',     <%=N%>],
          ['IN PROGRESS',  <%=IN_PROGRESS%>],
          ['COMPLETED',  <%=COMPLETED%>],
          ['BACKLOG', <%=BACKLOG%>],
        ]);

        var options = {
         // title: 'PROJECT NAME: CANDIDATE RECRUIT'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
      <%
  			}
      %>
      
    </script>");
  </head>
  <body>
    <div id="piechart" style="width: 900px; height: 500px;"></div>
  </body>
</html>