<%@page import ="java.sql.*" %>
<%@page import ="java.io.IOException" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.io.*"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

    <html> 
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Validation</title> 
        </head> 
        <body> 
             <sql:setDataSource var = "test" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/test" user = "root"  password = ""/>
            <sql:query dataSource = "${test}" var = "result">
                SELECT EXISTS (SELECT * from register where email="?" and password="?")
            </sql:query>
                
        <center><br><br><br><br><br><a href="viewusers.jsp">View All Records</a><br/></center>
                
                <!--
            < %
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String contact = request.getParameter("contact");
            String dob = request.getParameter("dob");
            String country = request.getParameter("country");
            String dbURL = "jdbc:mysql://localhost:3306/test";
            String dbuser = "root";
            String dbpassword = "";
            Connection con = null;
            String sqlOption="SELECT * FROM USERS where email = ? and password = ?";
//            PreparedStatement ps = con.prepareStatement("select * from register where email=? and password=?");
	try{
//		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement(sqlOption);
		ps.setString(1,email);
		ps.setString(2,password);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
//			u=new User();
//			u.setId(rs.getInt("id"));
			
			rs.getString("email");
			rs.getString("password");
			
		}
	}catch(Exception e){out.println(e);}
	  

            %> -->
    </body> 
    </html>