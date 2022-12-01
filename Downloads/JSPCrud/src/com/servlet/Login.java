
package com.servlet;

import com.javab.bean.*;
import com.javad.dao.*;
import com.connection.ConnectionProvider;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Login extends HttpServlet {

    public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
	}catch(Exception e){e.printStackTrace();}
	return con;
}
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        response.setContentType("text/html;charset=UTF-8");
        try {PrintWriter out = response.getWriter();
        
            String _username=request.getParameter("email");
            String _password=request.getParameter("password");
            
            UserDao dao = new UserDao(ConnectionProvider.getConnection());
            User u=dao.getUserByEmailAndPassword(_username, _password);
            if(u == null){
                String msg = "Invalid Details !";
                out.println("Invalid Details, Please try again!");
                HttpSession s = request.getSession();
                s.setAttribute("msg", msg);
            }else{
                HttpSession s = request.getSession();
                s.setAttribute("currentUser", u);
                response.sendRedirect("userProfile.jsp");
            }
            
        }
//                        Connection con= getConnection();
//			
//			PreparedStatement ps=con.prepareStatement("select * from register where email=? and password=?");
//			ps.setString(1,_username);
//			ps.setString(2, _password);
//			ResultSet rs=ps.executeQuery(); 
//                       if(rs != null && rs.next()){
//                          
//                           boolean isAdmin = rs.getBoolean(7);
//                           if(isAdmin){
//                               response.sendRedirect("viewusers.jsp");
//                           }else{
//                               response.sendRedirect("welcome.jsp");
//                           }
//                      }else{
//                           response.sendRedirect("userLogin.jsp");
//                          out.println("Invalid Username / Password");
//                      }
                 
                catch(Exception ex)
                 {
                     ex.printStackTrace();
                     System.out.println("Error :"+ex.getMessage());
                 }
                 finally
                 {
                 
                 }
        }
        
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}


