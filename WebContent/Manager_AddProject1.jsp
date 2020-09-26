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
	int MANAGER_ID=0;
	String USER_NAME=(String)session.getAttribute("username");
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
		String query="SELECT* FROM MANAGERDETAILS WHERE USER_NAME=?";
		PreparedStatement psmt=con.prepareStatement(query);
		psmt.setString(1,USER_NAME);
		ResultSet rs=psmt.executeQuery();
		while(rs.next())
		{
			MANAGER_ID=rs.getInt(1);
		}
	}
	catch(Exception ex)
	{
		out.print("Exception: "+ex);
	}
	
	

	String PROJECT_NAME=request.getParameter("projectname");
	String PROJECT_DESCRIPTION=request.getParameter("projectdescription");
	String DEADLINE=request.getParameter("deadline");
	String LEAD_ID=request.getParameter("leadid");
	
	//out.print("PROJECT NAME: "+PROJECT_NAME);
	//out.print("PROJECT DESCRIPTION: "+PROJECT_DESCRIPTION);
	//out.print("DEADLINE: "+DEADLINE);
	//out.print("LEAD ID: "+LEAD_ID);
	try
	{
		out.println(MANAGER_ID);
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
		Statement st=con.createStatement();
		st.executeUpdate("insert into PROJECT_DETAILS(PROJECT_NAME,PROJECT_DESCRIPTION,DEADLINE,LEAD_ID,MANAGER_ID) VALUES('"+PROJECT_NAME+"','"+PROJECT_DESCRIPTION+"','"+DEADLINE+"','"+LEAD_ID+"','"+MANAGER_ID+"')");
		request.getRequestDispatcher("ManagerDashBoard.jsp").include(request,response);
		
		
		
	}
	catch(Exception ex)
	{
		out.print("Exception: "+ex);
	}
%>
</body>
</html>