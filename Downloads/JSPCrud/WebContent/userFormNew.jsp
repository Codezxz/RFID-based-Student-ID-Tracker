<%-- 
    Document   : userFormNew
    Created on : 22 Nov 2022, 06:10:52
    Author     : netaj
--%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
    </head>
    <body>
         <!--navBar-->
        <%@include file = "navBar.jsp"%>
        <main class="primary-background  banner-background"  style="padding-bottom: 80px;">

            <div class="container">

                <div class="col-md-6 offset-md-3">

                    <div class="card">
                        <div class="card-header text-center primary-background text-white">
                            <span class="fa fa-3x fa-user-circle"></span>
                            <br>
                           <br><h1 align="center">Add New User</h1><br>
                            <link rel="stylesheet" type=text/css href="bootstrap.css"/>
                        </div>
                        <div class="card-body">
                            <form id="reg-form" action="adduser.jsp" method="POST">

                                <div class="form-group">
                                    <label for="user_name">User Name</label>
                                    <input name="name" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter name">
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>



                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input  name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Contact Number</label>
                                    <input name="contact" type="text" class="form-control" id="contact" aria-describedby="emailHelp" placeholder="Enter Contact Number">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your contact number with anyone else.</small>
                                </div>
                                
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Date of Birth</label>
                                    <input name="date" type="date" class="form-control" id="dob" aria-describedby="emailHelp" placeholder="Enter your Date of Birth">
                                    <!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
                                </div>
                                
                                
                                    
<!--                                <ul class="navbar-nav mr-auto">
                                     <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="	fa fa-check-square-o"></span> Select Country
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">India</a>
                            <a class="dropdown-item" href="#">England</a>
                            <a class="dropdown-item" href="#">Berma</a>
                            <a class="dropdown-item" href="#">America</a>
                            <div class="dropdown-divider"></div>
                            
                        </div>
                    </li>
                                </ul>-->
                                        
                                    <div class="form-group">
                                    <label for="exampleInputEmail1">Country</label>
                                    <!--<input name="dob" type="text" class="form-control" id="dob" aria-describedby="emailHelp" placeholder="Enter your Date of Birth">-->
                                    <!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
                              
                                    <Select  name="country">
                                    <!--<input name="country" type="text" class="form-control" id="country" aria-describedby="emailHelp" placeholder="Enter your Country">-->
                                    <option>India</option>
                                    <option>America</option>
                                    <option>Berlin</option>
                                       <option>Berma</option>
                                    <option>Other</option>
                                    </select>
                                          </div>
<div class="form-check">
                                    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">agree terms and conditions</label>
                                </div>

                                <br>

                                <div class="container text-center" id="loader" style="display: none;">
                                    <span class="fa fa-refresh fa-spin fa-4x"></span>
                                    <h4>Please wait..</h4>
                                </div>

                                <button id="sumbimt-btn" type="submit" class="btn btn-primary">Submit</button>
                           
                                    </form>
                                    <!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
                                </div>




                                

                        </div>


                    </div>




                </div>
            

        </main>
    </body>
</html>
