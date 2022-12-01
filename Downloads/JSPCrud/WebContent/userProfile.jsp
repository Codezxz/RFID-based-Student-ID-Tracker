<%-- 
    Document   : userProfile
    Created on : 22 Nov 2022, 06:43:55
    Author     : netaj
--%>
<%@page import="com.javad.dao.UserDao"%>
<%@page import="com.javab.bean.User"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="u" class="com.javab.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<!--< %
int i=UserDao.update(u);
response.sendRedirect("userProfile.jsp");
%>-->


<%
//    User u = (User) session.getAttribute("User");
    if (u == null) {
        response.sendRedirect("userProfile.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User</title>
    </head>
    <body>
        
            
       
        <main class="primary-background  banner-background"  style="padding-bottom: 80px;">
            <link rel="stylesheet" type=text/css href="bootstrap.css"/>
             <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  
            
      <!--navBar-->
      
           <nav class="navbar navbar-expand-lg navbar-dark primary-background">
    <a class="navbar-brand" href="index.jsp"><span class="fa fa-code"></span>   Crud Assignment</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

 <!--<div class="collapse navbar-collapse" id="navbarSupportedContent">-->
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">About me <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="userLogin1.jsp">Login</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link disabled" href="#">CRUD Assignment v1.0</a>
      </li>
    </ul>
        <ul class="navbar-nav mr-right">
          <li class="nav-item">
              
              <a class="nav-link" data-toggle="modal" data-target="#profile-modal"><span class="fa fa-user-circle "></span> <%=u.getName()%> </a>
              <!--<a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal"><span></span>< %=u.getName()%></a>-->
      </li>
      <li class="nav-item mr-right">
          <form action="Logout" ><input type="submit" value="Logout" class="btn btn-primary"></form>
        <!--<a class="nav-link" data-toggle="modal" data-target="#profile-modal" href="Logout">Log Out</a>-->
        
      </li>
      </ul>
 </nav>
<!--      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>-->
      

  <!--</div>-->

            
     <!--navBarEnd-->
        
            <!--profileModal-->
            <!-- Button trigger modal -->
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Profile</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

<!--profileModalEnds-->




 <!--javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        </main>
    </body>
</html>
