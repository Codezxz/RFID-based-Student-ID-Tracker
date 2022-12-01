import static com.servlet.Login.getConnection;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ValidationServ extends HttpServlet {

     public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
	}catch(Exception e){e.printStackTrace();}
	return con;
}
    
     @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ArrayList al = new ArrayList();
        res.setContentType("text/html");
        PrintWriter pw = res.getWriter();
  
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        
        if((email.equals("email")) && (password.equals("password"))){
            System.out.println("Login Successful");
            HttpSession session = req.getSession(); 
            session.setAttribute("email",email);
            session.setAttribute("password",password);
            res.sendRedirect("userProfile.jsp");
            
        }else
        if ((email == null) || (email.equals(""))) {
            al.add("PROVIDE EMAIL ID");
        } 
        if ((password == null) || (password.equals(""))) {
            al.add("PROVIDE PASSWORD");
        } 
        if (!al.isEmpty()) {
            pw.println(al);
        } else {
//            try {
//                Class.forName("com.mysql.cj.jdbc.Driver");
//                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
//                PreparedStatement ps = con.prepareStatement("select * from register where email=? and password=?");// values (?,?)");
//               
//                ps.setString(1, email);
//                ps.setString(2, password);
//                ResultSet rs = ps.executeQuery();
//                while (rs.next()) {
//                    rs.getString("email");
//               
//                    rs.getString("password");
//                }
//                con.close();
//            } 
                try
               {
                   if(email!=null)
                   {
                       if(email.equals("email")&& password.equals("password"))
                       {
                           res.sendRedirect("userProfile.jsp");
                       }else if((!email.equals("email"))&& (!password.equals("password")))
                       {
                           System.out.println("Invalid Username / Password");
                       }
                        Connection con= getConnection();
			
			PreparedStatement ps=con.prepareStatement("select * from register where email=? and password=?");
			ps.setString(1,email);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery(); 
                       if(rs != null && rs.next()){
                          
                           boolean isAdmin = rs.getBoolean(8);
                           if(isAdmin){
                               res.sendRedirect("viewusers.jsp");
                           }else{
                               res.sendRedirect("userProfile.jsp");
                           }
                      }else{
                           
                          System.out.println("Invalid Username / Password");
                          res.sendRedirect("userLogin1.jsp");
                      }
                   }
               }
                catch (Exception e) {
                res.sendError(503, "Unexpected Error in the Database!");
            }
        }
    }

   
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doGet(req, res);
    }
}