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
    <link rel="stylesheet" href="assign_task.css">
</head>
<body>
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

    <!-- ----------------------------------------------------heading----------->


    <section class="head">
        <div class="container">
            <div class="row">
                <div class="col-12 heading">
                    <h3 style="font-weight: bolder;">Assign Task</h3>
                </div>
            </div>
        </div>
    </section>


    <!---------------------------------contnent------------------------------->

    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-5  image">
                    <img src="task.jpg" alt="project Image" class="img-fluid">
                </div>
                     <div class="row project">
                     <form action="Lead_AssignTasks2.jsp">
                    <div class="col-ld-12  name" style=" margin-left:40px">
                    	<label for="projectid" style="font-size: 19px;font-weight: 500;margin-top: 20px;">Project ID : </label>
                        <% out.print("<input type='text' class='form-control' id='lead' name='projectid' value='"+request.getParameter("projectid")+"'readonly>");%>
                        <label for="description" style="font-size: 19px;font-weight: 500;">Task Description : </label>
                        <textarea class="form-control" style="height:200px; width:460px;" name="taskdescription"></textarea>
                        <label for="deadline" style="font-size: 19px;font-weight: 500;margin-top: 20px;">Deadline : </label>
                        <input type="date" class="form-control" id="deadline" name="deadline">
                        <label for="resource" style="font-size: 19px;font-weight: 500;margin-top: 20px;">Resources ID : </label>
                        <input type="text" class="form-control" id="lead" name="resourcesid">
                        <input type="submit" class="btn btn-primary button" >
                   </div>
                   </form>
                </div>
            </div>
        </div>
        </div>
    </section>


    <script src="" async defer></script>

</body>
</html>