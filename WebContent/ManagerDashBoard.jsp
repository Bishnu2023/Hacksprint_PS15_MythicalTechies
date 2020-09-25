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
    <link rel="stylesheet" href="manager.css">
</head>
<body>
<%
	String USER_NAME=(String)session.getAttribute("username");
	session.setAttribute("username",USER_NAME);
%>

<!--  <h1>MANAGER DASHBOARD</h1>
<a href="Manager_AddProject.html">ADD PROJECT</a>
<a href="Manager_ViewProgress.jsp">VIEW PROJECTS</a>
<a href="Manager_Modify.jsp">MODIFY PROJECT</a>
<a href="Manager_Delete.jsp">DELETE PROJECT</a>
<a href="Manager_ViewLiveReport.jsp">VIEW LIVE REPORT</a>-->

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
            <h2 style="font-weight: 800;">Manager Dashboard</h2>
        </div>
    </section>


    <!-----------------------------------------------content--------------------------------------------------------->

    <section class="content">
        <div class="container">

            <div class="row" style="padding-top: 20px;">

                <div class="col-5 container1" style="  background-image: url('add.jpg');">

                </div>
                <div class="col-md-4 col-9 con1" ">
                    Lorem ipsum dolor sitpora ipsum quos nam voluptatem minima error mollitia in laudantium
                    repudiantatibus, asperiores quia?adfhjdskhfakjshdfjwqdhahsadjahdjashjksahk<br>
                 <a href="Manager_AddProject.html"> <input type="submit" class="btn btn-danger button"
                        value="Add Projects"></a>
                </div>
            </div>
            <div class="row" style="margin-top: 50px;">
                <div class="col-5 container1 order-md-2" style="margin-left: 100px;  background-image: url('view.jpg');">

                </div>
                <div class="col-md-4 col-9 order-md-1 con1">
                    You can choose to View a Project, modify an existing project, or Delete an existing Project. Whether
                    you choose to view a project or Edit an existing one, you will be brought to a new window in which
                    you will modify or delete information that the program needs to be able to upload your website.<br>
                    <a href="Manager_ViewProgress.jsp"><input type="submit" class="btn btn-danger button" value="View Project"></a>
                </div>
            </div>

            
            <div class="row" style="padding-top: 20px;">

                <div class="col-5 container1" style="  background-image: url('add.jpg');">

                </div>
                <div class="col-md-4 col-9 con1" ">
                    Lorem ipsum dolor sitpora ipsum quos nam voluptatem minima error mollitia in laudantium
                    repudiantatibus, asperiores quia?adfhjdskhfakjshdfjwqdhahsadjahdjashjksahk<br>
                 <a href="Manager_Delete.jsp"> <input type="submit" class="btn btn-danger button"
                        value="Delete "></a>
                </div>
            </div>
            <div class="row" style="margin-top: 50px;">
                <div class="col-5 container1 order-md-2" style="margin-left: 100px;  background-image: url('view.jpg');">

                </div>
                <div class="col-md-4 col-9 order-md-1 con1">
                    You can choose to View a Project, modify an existing project, or Delete an existing Project. Whether
                    you choose to view a project or Edit an existing one, you will be brought to a new window in which
                    you will modify or delete information that the program needs to be able to upload your website.<br>
                   <a href="Manager_Modify.jsp"><input type="submit" class="btn btn-danger button" value="Modify"></a> 
                </div>
            </div>
            <div class="row" style="padding-top: 20px;">

                <div class="col-5 container1" style="  background-image: url('add.jpg');">

                </div>
                <div class="col-md-4 col-9 con1" ">
                    Lorem ipsum dolor sitpora ipsum quos nam voluptatem minima error mollitia in laudantium
                    repudiantatibus, asperiores quia?adfhjdskhfakjshdfjwqdhahsadjahdjashjksahk<br>
                 <a href="Manager_ViewLiveReport.jsp"> <input type="submit" class="btn btn-danger button"
                        value="View Live Project "></a>
                </div>
            </div>
        </div>
    </section>


    <script type="text/JavaScript">
    function header(){
        document.getElementById("head").style.backgroundColor="#95afc0";
        document.getElementById("head").style.color="#fff";
    }
            </script>
</body>
</html>