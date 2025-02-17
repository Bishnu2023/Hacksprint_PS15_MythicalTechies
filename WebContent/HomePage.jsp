<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Candidate Recuiter</title>
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
    <script src="jquery.backgroundMove.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
</head>

<body>
	
    <!-- ------------------------------------Navigation-------------------------------------- -->
    <a name="home"></a>
    <section>
        <nav class="navbar navbar-expand-lg bg-light navbar-light p-2">
            <a class="navbar-brand" href="#" style="font-weight: 900;">ProjectZone</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navid">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse nav-pills text-center" id="navid">
                <ul class="navbar-nav ml-auto">

                    <li class="nav-item">
                        <a class="nav-link" href="#home">HOME</a>
                    </li>
                 
                    <li class="nav-item">
                        <a class="nav-link" href="#contact">CONTACT-US</a>
                    </li>
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="#login">LOG IN</a>
                    </li> -->
                </ul>
            </div>
        </nav>
    </section>

   <!--------------------------------------------------Inage Heading------------------------------------------------------>
    
   <div class="container heading">

</div>
<div class="image">
    <div class="img"></div>
    <div class="container-fluid image text-center pt-5">

       
        <div class="row">
            <div class="col-md-7">
                <h2 style="color: black;font-weight: 700;margin-top: 70px;"> <span
                        style="color: #111;font-weight: 300; font-size: 70px;letter-spacing: 1px;">Home Page</span>
                </h2>
                <p class="pt-4 para" style="color: #fff;font-weight: 450; margin-top: 45px; font-size: 23px;">
                    Welcome to ProjectZone.This website will help you to<br>
                     handle/manage your projects easily and efficiently.<br>
                     You can login according to you Role.
                   </p>

            </div>
            <div class="col-md-5">
                     <a href="ManagerLogin.html">
                        <div class="btn btn-light bt3">Log In</div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>





 <!-- ---------------------------------------------Footer------------------------------------------- -->
 <a name="contact"></a>
 <div class="content-box-4">
     <div class="container">
         <h1>Contact Us</h1>

         <div class="row footer text-center">

             <div class="col-md-3 col-sm-6 mt-4 foot1">
                 <img width="60" height="60"
                     src="https://ld-wp73.template-help.com/wordpress/prod_8033/v1/wp-content/uploads/2019/07/icon-5.png"
                     class="attachment-full size-full" alt="">
                 <div style="color: #fff;">
                     <h2>Address</h2>
                     908 New Make India <br>North #100, Haryana,<br> DC 131402, India
                 </div>
             </div>

             <div class="col-md-3 col-sm-6 mt-4  foot2">
                 <img width="60" height="60"
                     src="https://ld-wp73.template-help.com/wordpress/prod_8033/v1/wp-content/uploads/2019/07/icon-6.png"
                     class="attachment-full size-full" alt="">
                 <div style="color: #fff;">
                     <h2>Phones</h2>
                     Phone: +91 999-999-9999<br>
                     Mobile: +91 999-999-9999<br>
                     Fax: +91 999-999-9999
                 </div>
             </div>
             <div class="col-md-3 col-sm-6 mt-4  foot3">
                 <img width="60" height="60"
                     src="https://ld-wp73.template-help.com/wordpress/prod_8033/v1/wp-content/uploads/2019/07/icon-7.png"
                     class="attachment-full size-full" alt="">
                 <div style="color: #fff;">
                     <h2>Contacts</h2>
                     anuragsaini2472002@gmail.com<br>
                     Candidate-1@demolink.org<br>
                     recuiter-2@demolink.org
                 </div>
             </div>
             <div class="col-md-3 col-sm-6 mt-4  foot4">
                 <img width="60" height="60"
                     src="https://ld-wp73.template-help.com/wordpress/prod_8033/v1/wp-content/uploads/2019/07/icon-8.png"
                     class="attachment-full size-full" alt="">
                 <div style="color: #fff;">
                     <h2>Working Hours</h2>
                     Monday-Friday: 9:00 – 18:00<br>
                     Saturday: 11:00 – 17:00<br>
                     Sunday: Closed
                 </div>
             </div>
         </div>
     </div>
 </div>

 
 <!-----------------------------------------Social Media----------------------->


 <section class="content-box-3">
     <div class="container">
         <div class="row">
             <div class="col-12 icon">
                 <a href=""><i class="fa fa-facebook"></i></a>
                 <a href="#"><i class="fa fa-twitter"></i></a>
                 <a href="#"><i class="fa fa-google-plus"></i></a>
                 <a href="#"><i class="fa fa-pinterest"></i></a>
                 <a href="#"><i class="fa fa-instagram"></i></a>

             </div>
         </div>
     </div>
     <div class="footer-bottom-sec">
         <div class="container">
             <div class="row">
                 <div class="col-md-12">
                     <div class="copy-right">
                         <p class="text-center" style="font-size: 15px;padding-top: 20px; color:black">&copy;
                             2020
                             <span>Candidate Recuiter
                             </span>.
                             <abbr title="Anurag Saini">
                                 Designed by: <span> A.S</span> </p></abbr>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </section>
  
</body>

</html>