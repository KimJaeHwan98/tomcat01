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
<h1>설문 조사 결과</h1>
이름 :<%=request.getParameter("a1") %><br>
소개 :<%=request.getParameter("a2") %><br>

연령조사 : <%
	String[] chks1 = request.getParameterValues("radio");
	if(chks1 != null)
	for(String s : chks1) {
		out.print(s + "<br>");
	}
	
	%>
취미 : <%
	String[] chks = request.getParameterValues("chk");
	if(chks != null)
	for(String s : chks) {
		out.print(s + "<br>");
	}
	
	%><br>
	
	<hr>
	
	<%
 		Enumeration<String> e = request.getParameterNames();
		while(e.hasMoreElements()){
			String name = e.nextElement();
			if(request.getParameterValues(name).length >= 2) {
	     	String[] chk = request.getParameterValues(name);
	     	out.print(name+":");
	     	for(String s : chk) {
	     		out.print(s+" ");	
	     	}	        
	     	out.print("<br>");
	     	}else { 
	     		out.print(name + " : " + request.getParameter(name)+"<br>");
	     	}
		}
	   
	%>
<a href="ex01_form.jsp">form</a>
</body>
</html>