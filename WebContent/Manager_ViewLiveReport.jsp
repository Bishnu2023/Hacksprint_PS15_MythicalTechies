<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  	<%
  		int N=25;
  		int IN_PROGRESS=25;
  		int COMPLETED=25;
  		int BACKLOG=5;
  	%>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
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
          title: 'PROJECT NAME: CANDIDATE RECRUIT'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="piechart" style="width: 900px; height: 500px;"></div>
  </body>
</html>