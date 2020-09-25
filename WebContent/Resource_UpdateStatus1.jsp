<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	hiii
	<%
		int PROJECT_ID=Integer.parseInt(request.getParameter("projectid"));
		int TASK_ID=Integer.parseInt(request.getParameter("taskid"));
		String TASK_STATUS="";
		
		String status=request.getParameter("taskstatus");
		if(status.equals("COMPLETED"))
		{
			TASK_STATUS="COMPLETED";
		}
		else
		{
			TASK_STATUS="IN PROGRESS";
		}
		
		out.println(PROJECT_ID);
		out.println(TASK_ID);
		out.println(TASK_STATUS);
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
			String query="UPDATE TASK_DETAILS SET TASK_STATUS=? WHERE PROJECT_ID=? AND TASK_ID=?";
			PreparedStatement psmt=con.prepareStatement(query);
			psmt.setString(1,TASK_STATUS);
			psmt.setInt(2,PROJECT_ID);
			psmt.setInt(3,TASK_ID);
			psmt.executeUpdate();
			%>
				
			<%
			//out.print("SUCCESSFUL");
			response.sendRedirect("Resource_ViewTasks.jsp");
		}
		catch(Exception ex)
		{
			out.println("Exception: "+ex);	
		}
	%>
</body>
</html>