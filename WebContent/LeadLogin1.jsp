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
		String u=(String)session.getAttribute("username");
		String p=(String)session.getAttribute("password");
		out.println("USERNAME: "+u);
	    out.println("PASSWORD: "+p	);
	    session.setAttribute("username",u);
	    try
	    {
	    	Class.forName("com.mysql.jdbc.Driver");
	    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
	    	String query="SELECT USER_NAME,PASSWORD FROM LEADDETAILS WHERE USER_NAME=? AND PASSWORD=?";
	    	PreparedStatement psmt=con.prepareStatement(query);
	    	psmt.setString(1,u);
	    	psmt.setString(2,p);
	    	ResultSet rs=psmt.executeQuery();
	    	if(rs.next())
	    	{
	    		response.sendRedirect("LeadDashBoard.jsp");
	    	}
	    	else
	    	{
	    		
	    		%>
	    		<script>
	    			alert("INVALID USERNAME/PASSWORD");
	    		</script>
	    		<%
	    	}
	    	
	    }
	    catch(Exception ex)
	    {
	    	out.println("Exception: "+ex);
	    }
	%>
</body>
</html>