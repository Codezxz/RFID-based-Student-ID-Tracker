<%@page import="com.javad.dao.UserDao"%>
<%@page import="com.javab.bean.User"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="u" class="com.javab.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
//    User u = (User) session.getAttribute("User");
    if (u == null) {
        response.sendRedirect("userProfile.jsp");
    }
%>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>View Users</title>
</head>
<body>
    <!--||-->
     <!--navBar-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
           <nav class="navbar navbar-expand-lg navbar-dark primary-background">
    <a class="navbar-brand" href="index.jsp"><span class="fa fa-code"></span>   Crud Assignment</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

 <!--<div class="collapse navbar-collapse" id="navbarSupportedContent">-->
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Contact Developer  <span class="material-icons-e1b0" ></span></a>
      </li>
<!--      <li class="nav-item">
        <a class="nav-link" href="userLogin1.jsp">Login</a>
      </li>-->
      
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
    
 <link rel="stylesheet" type=text/css href="bootstrap.css"/>
<%@page import="com.javad.dao.UserDao,com.javab.bean.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1 align="center">Users List</h1>

<%
List<User> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>


<br/><a  href="userFormNew.jsp" class="nav-link">Add New User</a>
<!--<form action="Logout"><input type="submit" value="Logout" class="btn btn-primary"></form></center>-->

    <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        
        if(session.getAttribute("email") == null ) //|| (session.getAttribute("password") == null)){
                response.sendRedirect("userLogin.jsp");    
    %>

    <table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Username</th>
      <th scope="col">E-Mail</th>
      <th scope="col">Password</th>
      <th scope="col">Contact</th>
      <th scope="col">Date of Birth</th>
      <th scope="col">Country</th>
    </tr>
  
  </thead>
  <tbody class="table table-hover">
      
    <tr>
      <th colspan="4" scope="row"></th>
      <td>  <c:forEach items="${list}" var="u">
	<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getEmail()}</td><td>${u.getPassword()}</td><td>${u.getContact()}</td><td>${u.getDate()}</td><td>${u.getCountry()}</td><td><a href="editform.jsp?id=${u.getId()}">Edit</a></td><td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>
</c:forEach> 
      
   
    
    
  </tbody>
  
</table>
    
</body>
</html>