<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--
	int num = 100;
	System.out.println("num : " + num);
	out.print("num : " + num); //웹페이지에 내보낼때는 이 코드를 사용해준다.
--%>
<%!
 int num = 1234;

%>

<%
	out.print("num : <b>" + num + "</b>");
%>
<br>
num : <h4><%= num++ %></h4>
</body>
</html>