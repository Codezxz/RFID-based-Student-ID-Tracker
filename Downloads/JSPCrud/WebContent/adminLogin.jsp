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
        <title>CRUD - Admin</title>
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
      
 
        
    <center><h1>Login</h1></center><br><br>
        <main class="d-flex align-itemns-center primary-background " style="height: 55vh ">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            <div class="card-header primary-background text-white">
                                <p>Login here</p>
                            </div>
                            <div class ="card-body ">
<form action="./ValidationServ" method ="POST">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="email" required class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password" required class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Remember me</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
                            </div>
        </main>
    </body>
</html>

