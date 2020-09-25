<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String USER_ROLE=request.getParameter("userrole");
		String USER_NAME=request.getParameter("username");
		String PASSWORD=request.getParameter("password");
		
		session.setAttribute("username",USER_NAME);
		session.setAttribute("password",PASSWORD);
		
		out.println(USER_ROLE);
		out.println(USER_NAME);
		out.println(PASSWORD);
		
		if(USER_ROLE.equals("MANAGER"))
		{
			response.sendRedirect("ManagerLogin1.jsp");
		}
		else if(USER_ROLE.equals("LEAD"))
		{
			response.sendRedirect("LeadLogin1.jsp");
		}
		else if(USER_ROLE.equals("RESOURCE"))
		{
			response.sendRedirect("ResourceLogin1.jsp");
		}
		
	%>
</body>
</html>