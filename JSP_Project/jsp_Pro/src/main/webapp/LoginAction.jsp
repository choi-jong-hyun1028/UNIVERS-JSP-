<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="user.UserDto" %>
<%@page import="user.UserDao" %>
<%@page import="java.io.PrintWriter" %>
<!-- ----------------여기는 로그인 입력 확인 코드------------------------------------- -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인실행</title>
</head>
<body>

<%
	request.setCharacterEncoding("EUC-KR");
	//id와 비밀번호가 있는경우
	UserDao userDao = new UserDao();
	int result = userDao.login(request.getParameter("userID")
			,request.getParameter("userPassword"));
	
	//로그인 성공
	if(result == 1)
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('환영합니다.')");
		script.println("location.href='Main_W.jsp'");
		script.println("</script>");
		script.close();
	}
	
	//로그인 실패
	else if(result == 0)
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가틀립니다.')");
		script.println("history.back()");
		script.println("</script>");
		script.close();
	}
	
	else if(result == -1)
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('존재하지 않는 아이디 입니다.')");
		script.println("history.back()");
		script.println("</script>");
		script.close();
	}
	
	else if(result == -2)
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('DB오류')");
		script.println("history.back()");
		script.println("</script>");
		script.close();
	}
	

	
	
	
	
	
	
	
%>


</body>
</html>