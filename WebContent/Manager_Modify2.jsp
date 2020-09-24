<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page  import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<%
			int PROJECT_ID=Integer.parseInt(request.getParameter("projectid"));
			String PROJECT_NAME=request.getParameter("projectname");
			String PROJECT_DESCRIPTION=request.getParameter("projectdescription");
			String DEADLINE=request.getParameter("deadline");
			int LEAD_ID=Integer.parseInt(request.getParameter("leadid"));
			out.println(PROJECT_ID);
			out.println(PROJECT_NAME);
			out.println(PROJECT_DESCRIPTION);
			out.println(DEADLINE);
			out.println(LEAD_ID);
			
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
				String query="UPDATE PROJECT_DETAILS SET PROJECT_NAME=?,PROJECT_DESCRIPTION=?,DEADLINE=?,LEAD_ID=? WHERE PROJECT_ID=? ";
				PreparedStatement psmt=con.prepareStatement(query);
				psmt.setInt(5,PROJECT_ID);
				psmt.setString(1,PROJECT_NAME);
				psmt.setString(2,PROJECT_DESCRIPTION);
				psmt.setString(3,DEADLINE);
				psmt.setInt(4,LEAD_ID);
				psmt.executeUpdate();
				out.print("SUCCESSFUL!!!");
			}
			catch(Exception ex)
			{
				out.print("EXCEPTION: "+ex);
			}
			
			
		%>
		
</body>
</html>