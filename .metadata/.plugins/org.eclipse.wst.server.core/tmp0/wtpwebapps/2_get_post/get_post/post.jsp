<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
 <H3>post.jsp</H3>
 id : <%= request.getParameter("id") %><br>
 <%
  	String pwd = request.getParameter("pwd");
 %>
 
 pwd : <%= pwd %><br>
 <a href=form.jsp>form 이동</a>
</body>
</html>