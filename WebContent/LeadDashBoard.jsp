<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
        <link rel="stylesheet" href="lead_dashboard.css">
    </head>
<body>
	<!--<h1>LEAD DASHBOARD</h1>
	<a href="Lead_AssignTask.jsp">ADD & ASSIGN TASK</a>
	<a href="Lead_ViewTasks.jsp">VIEW TASKS</a>
	<a href="Lead_ViewLiveReport.jsp">VIEW LIVE REPORT</a>-->
	<!-- ------------------------------------Navigation-------------------------------------- -->
	<%
		String USER_NAME=(String)session.getAttribute("username");
		session.setAttribute("username",USER_NAME);
	%>

    <section>
        <nav class="navbar navbar-expand-lg bg-light navbar-light p-2">
            <a class="navbar-brand" href="#" style="font-weight: 900;font-size: 30px;">ProjectZone</a>
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
            <h2 style="font-weight: 800;text-align: center;">Lead Dashboard</h2>
        </div>
    </section>
    
    <!-----------------------------------------------content--------------------------------------------------------->

    <section class="content">
        <div class="container">
          
            <div class="row" style="padding-top: 20px;">
                <div class="col-5 container1" style="background-image: url('assign.jpg');">
                    
                </div>
                <div class="col-md-4 col-9 con1"  ">
                    Lorem ipsum dolor sitpora ipsum quos nam voluptatem minima error mollitia in laudantium
                    repudiantatibus, asperiores quia?adfhjdskhfakjshdfjwqdhahsadjahdjashjksahk<br>
                   <a href="Lead_AssignTasks.jsp"> <input type="submit" class="btn btn-danger button" value="Assign Task "></a>
                </div>
            </div>
            <div class="row" style="margin-top: 50px;">
                <div class="col-5 container1 order-md-2" style="margin-left: 100px;background-image: url('view.jpg');">
                    
                </div>
                <div class="col-md-4 col-9 order-md-1 con1" >
                   You can choose to View a  Project, modify an existing project, or Delete an existing Project. Whether you choose to view a project or Edit an existing one, you will be brought to a new window in which you will modify or delete  information that the program needs to be able to upload your website.<br>
                   <a href="Lead_ViewTasks.jsp"> <input type="submit" class="btn btn-danger button" value=" View Tasks"  ></a>
                </div>
            </div>
            <div class="row" style="padding-top: 20px;">
                <div class="col-5 container1" style="background-image: url('assign.jpg');">
                    
                </div>
                <div class="col-md-4 col-9 con1"  ">
                    Lorem ipsum dolor sitpora ipsum quos nam voluptatem minima error mollitia in laudantium
                    repudiantatibus, asperiores quia?adfhjdskhfakjshdfjwqdhahsadjahdjashjksahk<br>
                   <a href="Lead_ViewLiveReport.jsp"> <input type="submit" class="btn btn-danger button" value="View Live Report "></a>
                </div>
            </div>
        </div>
    </section>


    <script type="text/JavaScript" >
    function header(){
        document.getElementById("head").style.backgroundColor="#95afc0";
        document.getElementById("head").style.color="#fff";
    }
            </script>
        
        
     
    </body>
</body>
</html>