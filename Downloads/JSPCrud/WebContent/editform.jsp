<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Edit Form</title>
</head>
<body>
<%@page import="com.javad.dao.UserDao,com.javab.bean.User"%>

<%
String id=request.getParameter("id");
User u=UserDao.getRecordById(Integer.parseInt(id));
%>
<!--
<link rel="stylesheet" type=text/css href="bootstrap.css"/>
<br><h1 align="center">Edit Form</h1><br>
<form action="edituser.jsp" method="post">
<input type="hidden" name="id" value="<%=u.getId() %>"/>
<table align="center">
<tr><td>Name:</td><td><input type="text" name="name" value="<%= u.getName()%>"/></td></tr>
<tr><td>Email:</td><td><input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>
<tr><td>Password:</td><td><input type="password" name="password" value="<%= u.getPassword()%>"/></td></tr>
<tr><td>Contact:</td><td><input type="text" name="email" value="<%= u.getContact()%>"/></td></tr>
<tr><td>DOB:</td><td><input type="text" name="dob" value="<%= u.getDate()%>"/></td></tr>
<tr><td>Country:</td><td>
<select name="country">
<option>India</option>
<option>America</option>
<option>Berlin</option>
<option>Berma</option>
<option>Other</option>
</select>
</td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="Edit User" class="btn btn-primary" /></td></tr>
</table>
</form>
-->
                            <div class="container">

                <div class="col-md-6 offset-md-3">

                    <div class="card">
                        <div class="card-header text-center primary-background text-white">
                            <span class="fa fa-3x fa-user-circle"></span>
                            <br>
                           <br><h1 align="center">Edit User Details</h1><br>
                            <link rel="stylesheet" type=text/css href="bootstrap.css"/>
                        </div>
                        <div class="card-body">
                            <form id="reg-form" action="adduser.jsp" method="POST">

                            <div class="form-group">
                                    <label for="user_name">User Name</label>
                                    <input value="<%= u.getName()%>" name="name" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter name">
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input value="<%= u.getEmail()%>" name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>



                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input value="<%= u.getPassword()%>" name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Contact Number</label>
                                    <input value="<%= u.getContact()%>" name="contact" type="text" class="form-control" id="contact" aria-describedby="emailHelp" placeholder="Enter Contact Number">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your contact number with anyone else.</small>
                                </div>
                                
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Date of Birth</label>
                                    <input value="<%= u.getDate()%>" name="date" type="text" class="form-control" id="dob" aria-describedby="emailHelp" placeholder="Enter your Date of Birth">
                                    <!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
                                </div>
                                    
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
                                    <button id="sumbimt-btn" type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>
                    </div>
                </div>
                            </div>
                                    

</body>
</html>