<!DOCTYPE html>
<html>
<head>
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>User Not Added!</title>
</head>
<body>
<center>
<p>Please fill in all the fields correctly!</p>
<jsp:include page="userFormNew.jsp"></jsp:include>
<!--
< %!
    String email_regex = "^[\\w-\\+]+(\\.[\\w]+)*@[\\w-]+(\\.[\\w]+)*(\\.[a-z]{2,})$";
%>
< %
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String contact = request.getParameter("contact");
            String dob = request.getParameter("dob");
            String country = request.getParameter("country");  
            String blank="";
 
//            if(name.equals(blank)){
//            out.println("<font color = red> Please enter the Name </font>");
//            }
//            if(!email.matches(email_regex)){
//            out.println("<font color = red> Please enter a valid Email ID </font>");
//            }
%>

<br><br>

-->
</center>
</body>
</html>