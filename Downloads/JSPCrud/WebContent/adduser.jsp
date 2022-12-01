<%@page import="com.javad.dao.UserDao"%>
<%@page import="java.sql.Date"%>
<jsp:useBean id="u" class="com.javab.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=UserDao.save(u);
if(i>0){
response.sendRedirect("adduser-success.jsp");
}else{
response.sendRedirect("adduser-error.jsp");
}    
%>
