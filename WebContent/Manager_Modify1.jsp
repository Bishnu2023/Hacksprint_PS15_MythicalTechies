<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
    <link rel="stylesheet" href="add_project.css">
<title>Insert title here</title>
</head>
<body>
<%
			int PROJECT_ID=Integer.parseInt(request.getParameter("projectid"));
			request.setAttribute("projectid", PROJECT_ID);
			String PROJECT_NAME="";
			String PROJECT_DESCRIPTION="";
			String DEADLINE="";
			String LEAD_ID="";
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hacksprint","root","1234");
				String query="SELECT* FROM PROJECT_DETAILS WHERE PROJECT_ID=?";
				PreparedStatement psmt=con.prepareStatement(query);
				psmt.setInt(1,PROJECT_ID);
				ResultSet rs=psmt.executeQuery();
				if(rs.next())
				{
					PROJECT_NAME=rs.getString(2);
					PROJECT_DESCRIPTION=rs.getString(3);
					DEADLINE=rs.getString(4);
					LEAD_ID=rs.getString(5);
				}
			}
			catch(Exception ex)
			{
				out.print("Exception: "+ex);
			}
		%>
		 <!-- ------------------------------------Navigation-------------------------------------- -->

    <section>
        <nav class="navbar navbar-expand-lg bg-light navbar-light p-2">
            <a class="navbar-brand" href="#">HackSprint</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navid">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse nav-pills text-center" id="navid">
                <ul class="navbar-nav ml-auto">

                    <li class="nav-item">
                        <a class="nav-link" href="#">HOME</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">SERVICES</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">CONTACT-US</a>
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
                    <h3>MODIFY PROJECT</h3>
                </div>
            </div>
        </div>
    </section>


    <!---------------------------------contnent------------------------------->

    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-5  image">
                    <img src="project.jpg" alt="project Image" class="img-fluid">
                </div>
                     <div class="row project">
                     <form action="Manager_Modify2.jsp">
                    <div class="col-ld-12  name" style="margin-top: 30px; margin-left:10px">
                    
                    	<label for='projectid' style='font-size: 19px;font-weight: 500;'>Project ID : </label>
                    
						<% 
                       		out.print("<input type='text' class='form-control' id='projectid' name='projectid' style='width:467px' value='"+PROJECT_ID+"' readonly>");
                       %>                    
                    
                    
                    	<label for='name' style='font-size: 19px;font-weight: 500;'>Project Name : </label>
                    
                        
                       <% 
                       		out.print("<input type='text' class='form-control' id='name' name='projectname' style='width:467px' value='"+PROJECT_NAME+"'>");
                       %>
                        <label for="name" style="font-size: 19px;font-weight: 500;">Project Description : </label>
                        <% out.print("<textarea class='form-control' style='height:200px' name='projectdescription'>"+PROJECT_DESCRIPTION+"</textarea>");%>
                        <label for="deadline" style="font-size: 19px;font-weight: 500;">Deadline : </label>
                        <% out.print("<input type='date' class='form-control' id='deadline' name='deadline' value='"+DEADLINE+"'>"); %>
                        <label for="lead" style="font-size: 19px;font-weight: 500;">Lead ID : </label>
                        <% out.print("<input type='text' class='form-control' id='lead' name='leadid' value='"+LEAD_ID+"'>"); %>
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