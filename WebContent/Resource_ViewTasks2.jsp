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
			String PROJECT_ID=request.getParameter("projectid");
			String TASK_ID=request.getParameter("taskid");
			String TASK_STATUS=request.getParameter("progess");
			
			out.println(PROJECT_ID);
			out.println(TASK_ID);
			out.println(TASK_STATUS);
	%>
</body>
</html>