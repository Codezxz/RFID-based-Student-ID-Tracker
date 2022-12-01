<%-- 
    Document   : index
    Created on : 19 Nov 2022, 12:54:40
    Author     : netaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD Assignment</title>
    
        <!--css-->
        <link rel="stylesheet" type=text/css href="bootstrap.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    </head>
    <body>
        <!--navBar-->
        <%@include file = "navBar.jsp"%>
        
        <!--banner-->
        <div class = "container-fluid p-0 m-0">
            
            <div class="jumbotron">
            <div class="container">
                <h3 class="display-4"> Welcome to my CRUD Assignment </h3>
                <!--<br><br>-->
                <!--<center><button class="btn btn-outline-light btn-lg"> Click to proceed </button></center>-->
            </div>
             
            </div>
        </div>
        
        <!--cards-->
                        <div class="container">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="card">
                                  <div class="card-body">
                                    <h5 class="card-title">Admin Login</h5>
                                    <p class="card-text"> Please click here for Administrator login  </p>
                                    <a href="adminLogin.jsp" class="btn primary-background text-white ">Admin Login</a>
                                  </div>
                            </div>
                        </div>
                                
                                <div class="col-md-4">
                                    <!--<div class="card">-->
<!--                                  <div class="card-body">-->
                                    <!--<h5 class="card-title"></h5>-->
                                    <!--<p class="card-text">   </p>-->
                                    <!--<a href="#" class="btn primary-background text-white "></a>-->
                                  <!--</div>-->
                            <!--</div>-->
                        </div>
                                
                                <div class="col-md-4">
                                    <div class="card">
                                  <div class="card-body">
                                    <h5 class="card-title">User Login</h5>
                                    <p class="card-text"> Please click here for User login  </p>
                                    <a href="userLogin1.jsp" class="btn primary-background text-white ">User Login</a>
                                  </div>
                            </div>
                        </div>
                            </div>
                        </div>
        
          <!--javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        
        

    </body>
</html>

