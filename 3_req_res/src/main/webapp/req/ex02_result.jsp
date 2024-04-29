<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>
	<%= request.getParameter("chk") %>
	<hr>
	<%
	String[] chks = request.getParameterValues("chk");
	if(chks != null)
	for(String s : chks) {
		out.print(s + "<br>");
	}
	
	%>
	<hr>
	<h3>주소</h3>
	<% for(String addr : request.getParameterValues("addr")){
		out.print(addr + "<br>");
	}%>
	<%=request.getParameter("a1") %><br>
	<%=request.getParameter("a2") %><br>
	<%=request.getParameter("a3") %><br>
	<hr>
	
	<%
 		Enumeration<String> e = request.getParameterNames();
		while(e.hasMoreElements()){
			String name = e.nextElement();
			out.print(name +" : " + request.getParameter(name) + "<br>");
		}
	%>
	<a href="ex02_form.jsp">form</a>
	
</body>
</html>