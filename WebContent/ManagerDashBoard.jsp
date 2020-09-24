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
	String USER_NAME=(String)session.getAttribute("username");
	session.setAttribute("username",USER_NAME);
%>

<h1>MANAGER DASHBOARD</h1>
<a href="Manager_AddProject.html">ADD PROJECT</a>
<a href="Manager_ViewProgress.jsp">VIEW PROJECTS</a>
<a href="Manager_Modify.jsp">MODIFY PROJECT</a>
<a href="Manager_Delete.jsp">DELETE PROJECT</a>
<a href="Lead_ViewLiveReport">VIEW LIVE REPORT</a>
</body>
</html>