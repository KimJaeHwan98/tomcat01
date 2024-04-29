<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

</head>
<style>
    .center {
        margin: 0 auto;
        width: 50%; /* Adjust the width as needed */
        text-align: center;
    }
</style>

<body>
<div class="center">
<h1>설문조사 폼 만들기</h1>
</div>
<%String path = request.getContextPath();%>
<form action="<%= path %>/quiz/ex01_result.jsp" method="post">

이름 : <input type="text" name ="a1" ><br>

소개 : <input type = "text" name ="a2"><br>

 <fieldset>
        <legend>연령 조사</legend>
        10대 : <input type="radio" name="radio" value="10대">
        20대: <input type="radio" name="radio"  value="20대">
        30대 : <input type="radio" name="radio"  value="30대">
       
    </fieldset>
<fieldset>
        <legend>취미 조사</legend>
       책읽기 : <input type="checkbox" name="chk" value="책읽기">
       춤추기 : <input type="checkbox" name="chk" value="춤추기">
       멍떄리기 : <input type="checkbox" name="chk" value="멍떄리기">
       
    </fieldset>

 <input type="submit" value="전송">
 


	

</form>
</body>
</html>