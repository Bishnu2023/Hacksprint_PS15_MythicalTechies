<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link rel="stylesheet" href="resource_dashboard.css">
</head>
<body>
<!-- <h1>RESOURCE DASHBOARD</h1> -->
<!--  <a href="Resource_ViewTasks.jsp">VIEW TASKS</a> -->
<%
	String USER_NAME=(String)session.getAttribute("username");
	//out.print(USER_NAME);
	session.setAttribute("username",USER_NAME);
%>
<!-- ------------------------------------Navigation-------------------------------------- -->


    <section>
        <nav class="navbar navbar-expand-lg bg-light navbar-light p-2">
            <a class="navbar-brand" href="#">ProjectZone</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navid">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse nav-pills text-center" id="navid">
                <ul class="navbar-nav ml-auto">

                    <li class="nav-item">
                        <a class="nav-link" href="../index/index.html #home">HOME</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../index/index.html #contact">CONTACT US</a>
                    </li>
                  
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="#login">LOG IN</a>
                    </li> -->
                </ul>
            </div>
        </nav>
    </section>


    <!---------------------------------------heading------------------------------------------------------------->


    <section class="heading" id="head" onmouseover="header()">
        <div class="container">
            <h2 style="font-weight: 800;">Resource Dashboard</h2>
        </div>
    </section>

 <!-----------------------------------------------content--------------------------------------------------------->

 <section class="content">
    <div class="container">
      
        <div class="row" style="padding-top: 20px;">
            <div class="col-5 container1"  style="margin-left: 120px;background-image: url('view.jpg');">
                
            </div>
            <div class="col-md-4 col-9 con1"  ">
                Lorem ipsum dolor sitpora ipsum quos nam voluptatem minima error mollitia in laudantium
                repudiantatibus, asperiores quia?adfhjdskhfakjshdfjwqdhahsadj<br>
                <form action="Resource_ViewTasks.jsp">
                <input type="submit" class="btn btn-danger button" value="View Task">
                </form>
            </div>
        </div>
       
     
       
    </div>
</section>


        
        
        <script src="" async defer></script>
</body>
</html>