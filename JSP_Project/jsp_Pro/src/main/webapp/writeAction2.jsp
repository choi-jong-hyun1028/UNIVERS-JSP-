<%@page import="java.io.PrintWriter"%>
<%-- <%@page import="user.BbsDAO"%> --%>
<%@page import="user.Test" %>
<%@page import="user.UserDao4" %>
<%@page import="java.io.PrintWriter" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%--
		/* // 현재 세션 상태를 체크한다
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		// 로그인을 한 사람만 글을 쓸 수 있도록 코드를 수정한다
		if(userID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요')");
			script.println("location.href='Login_W.jsp'");
			script.println("</script>");
		}else{
			// 입력이 안 된 부분이 있는지 체크한다
			if(bbs.getBbsTitle() == null || bbs.getBbsContent() == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다')");
				script.println("history.back()");
				script.println("</script>");
			}else{
				// 정상적으로 입력이 되었다면 글쓰기 로직을 수행한다
				BbsDAO bbsDAO = new BbsDAO();
				int result = bbsDAO.write(bbs.getBbsTitle(), userID, bbs.getBbsContent());
				// 데이터베이스 오류인 경우
				if(result == -1){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글쓰기에 실패했습니다')");
					script.println("history.back()");
					script.println("</script>");
				// 글쓰기가 정상적으로 실행되면 알림창을 띄우고 게시판 메인으로 이동한다
				}else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글쓰기 성공')");
					script.println("location.href='bbs.jsp'");
					script.println("</script>");
				}
			}
		} */
		/* ---------------------------------------------------------------------------------------------------- */
		--%>
		<%
			request.setCharacterEncoding("utf-8");
			Test test = new Test();
		%>
	<%--
			if(request.getParameter("Title")!=null)
			{
				/* NewUser.setUserID(request.getParameter("userID")); */
				test.setTitle(request.getParameter("Title"));
			}
			if(test.getTitle().equals(""))
			{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('제목을 입력하세요.')"); 
				script.println("location.href='Board.jsp'");  //확인 누르면 이동하는 페이지 
				script.println("</script>");
				script.close();
				return;
			}
			
			if(request.getParameter("Contents")!=null)
			{
				//NewUser.setUserPassword(request.getParameter("userPassword")); 
				test.setContents(request.getParameter("Contents"));
			}
			
			if(test.getContents().equals(""))
			{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('내용을 입력하세요.')"); 
				script.println("location.href='Board.jsp'");  //확인 누르면 이동하는 페이지 
				script.println("</script>");
				script.close();
				return;
			}
		
			
			UserDao4 userDao4 = new UserDao4();
			int result = userDao4.join(test.getTitle(), test.getContents());
			if(result == 1)
			{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('게시글이 등록 되었습니다.')");
				script.println("location.href='useDB.jsp'");
				script.println("</script>");
				script.close();
			}
		
	
	--%>
</body>
</html>