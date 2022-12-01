<%-- 
    Document   : index
    Created on : 19 Nov 2022, 12:54:40
    Author     : netaj


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
    
        <link rel="stylesheet" type=text/css href="bootstrap.css"/>
    </head>
<body><br><br><br><br>
<center><h1>Login</h1></center><br><br>
<br><h1 align="center"></h1><br>
<link rel="stylesheet" type=text/css href="bootstrap.css"/>
<form action="controller.jsp"  method="post">
<table align="center">
<tr><td>Email:</td><td><input type="email"  placeholder="E-Mail ID" name="email"/></td></tr>
<tr><td>Password:</td><td><input type="password"  placeholder="Password" name="password"/></td></tr>
<tr><td colspan="2" align="right"><input type="submit" value="Login" class="btn btn-primary" /></td></tr>
</table>
</form>

--%>

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
        <title>User Login</title>
    
        <link rel="stylesheet" type=text/css href="bootstrap.css"/>
    </head>
    <body><br><br><br><br>
        
    <center><h1>Login</h1></center><br><br>
        <form action="./ValidationServ" method ="POST">
            <table align="center">
                <tr>
                    <th align="right">Email:</th>
                    <td><input type="text" name="email" placeholder="E-Mail">
                </tr>
                <tr>
                    <th align="right">Password:</th>
                    <td><input type="password" name="password" placeholder="Password"></td>
                </tr>
                <tr>
                <td colspan="2" align="right"><input type="submit" value="Log in" class="btn btn-primary"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
