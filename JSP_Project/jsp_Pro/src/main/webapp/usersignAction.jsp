<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="user.UserDto" %>
<%@page import="user.UserDao2" %>
<%@page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입:절차</title>
</head>
<body>

<%
	request.setCharacterEncoding("EUC-KR");
	UserDto NewUser = new UserDto();
	
	if(request.getParameter("userID")!=null)
	{
		NewUser.setUserID(request.getParameter("userID"));
	}
	if(NewUser.getUserID().equals(""))
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('아이디를 입력하세요.')"); 
		script.println("location.href='Sign_W.jsp'");  //확인 누르면 이동하는 페이지 
		script.println("</script>");
		script.close();
		return;
	}
	
	if(request.getParameter("userPassword")!=null)
	{
		NewUser.setUserPassword(request.getParameter("userPassword"));
	}
	
	if(NewUser.getUserPassword().equals(""))
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비번을 입력하세요.')"); 
		script.println("location.href='Sign_W.jsp'");  //확인 누르면 이동하는 페이지 
		script.println("</script>");
		script.close();
		return;
	}
	
	if(request.getParameter("userName")!=null)
	{
		NewUser.setUserName(request.getParameter("userName"));
	}
	
	if(NewUser.getUserName().equals(""))
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이름을 입력하세요.')"); 
		script.println("location.href='Sign_W.jsp'");  //확인 누르면 이동하는 페이지 
		script.println("</script>");
		script.close();
		return;
	}
	
	if(request.getParameter("userEmail")!=null)
	{
		NewUser.setUserEmail(request.getParameter("userEmail"));
	}
	
	if(NewUser.getUserEmail().equals(""))
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('E-mail을 입력하세요.')"); 
		script.println("location.href='Sign_W.jsp'");  //확인 누르면 이동하는 페이지 
		script.println("</script>");
		script.close();
		return;
	}
	
	
	
	
	//id와 비밀번호가 있는경우
	UserDao2 userDao2 = new UserDao2();
	int result = userDao2.join(NewUser.getUserID(), NewUser.getUserPassword(), NewUser.getUserName(), NewUser.getUserEmail());
	
	if(result == 1)
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('가입완료')");
		script.println("location.href='Main_W.jsp'");
		script.println("</script>");
		script.close();
	}
	
%>


</body>
</html>