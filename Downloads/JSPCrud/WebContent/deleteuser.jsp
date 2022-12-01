<%@page import="com.javad.dao.UserDao"%>
<jsp:useBean id="u" class="com.javab.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
UserDao.delete(u);
response.sendRedirect("viewusers.jsp");
%>