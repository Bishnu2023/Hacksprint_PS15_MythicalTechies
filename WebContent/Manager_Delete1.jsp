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
	<%
		String PROJECT_ID=request.getParameter("projectid");
		//out.print(PROJECT_ID);
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
			String query="DELETE FROM PROJECT_DETAILS WHERE PROJECT_ID=?";
			PreparedStatement psmt=con.prepareStatement(query);
			psmt.setString(1,PROJECT_ID);
			psmt.executeUpdate();
			%><%
			request.getRequestDispatcher("Manager_Delete.jsp").include(request,response);
		}
		catch(Exception ex)
		{
			out.print("Exception: "+ex);
		}
	%>
</body>
</html>