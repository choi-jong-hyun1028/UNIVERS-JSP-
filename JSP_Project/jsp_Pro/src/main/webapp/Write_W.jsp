<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<html>
<head>
<title>게시판 목록</title>
<link href="Write_D.css" type="text/css" rel="stylesheet">
</head>

<body>
	<div id=wrap>

		<header class="boxalign">
			<div id="logo">
				<h1>
					<a href="#" onclick="location.href='Main_W.jsp'"> 
						<img src="img/LOGO-img.jpg" alt="">
					</a>
				</h1>
			</div>
			<nav>
				<ul>
					<li><a href="#">사업소개</a></li>
					<li><a href="#">갤러리</a></li>
					<li><a href="#">프로젝트</a></li>
					<li><a href="#">온라인몰</a></li>
					<li><a href="#" onclick="location.href='Login_W.jsp'">로그인</a></li>
					<li><a href="#" onclick="location.href='Sign_W.jsp'">회원가입</a></li>
				</ul>
			</nav>
		</header>
		
		<section id="contents" class="boxalign">
			<h1 style="font-size: 50px; color: white; padding-left: 450px;">게시판 목록</h1>
			<table class="table-primary" >
				<tr class="table-primary">
					<td class="table-primary">제목</td>
					<!-- <td class ="table-primary">Contents</td> -->
					<td class="table-primary">작성날짜</td>
				</tr>

				<%
				// MySQL JDBC Driver Loading 
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection conn = null;
				Statement stmt = null;
				ResultSet rs = null;
				try {
					String jdbcDriver = "jdbc:mysql://localhost:3306/sys?" + "useUnicode=true&characterEncoding=utf8";
					//String jdbcDriver = "jdbc:mysql://localhost:3306/TUTORIAL?useSSL=false&serverTimezone=UTC";
					//String jdbcDriver = "jdbc:mysql://localhost:3306/TUTORIAL?serverTimezone=UTC"; 

					String dbUser = "root";
					String dbPass = "1234";
					String query = "select * from sys.qwe0723"; // Create DB 
					conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
					// Create Statement 
					stmt = conn.createStatement();
					// Run Qeury 
					rs = stmt.executeQuery(query);
					// Print Result (Run by Query) 
					while (rs.next()) {
				%>
				<tr>
					<td><%=rs.getString("Title")%></td>
					<%-- <td><%= rs.getString("Contents") %></td> --%>
					<td><%=rs.getString("Date")%></td>
				</tr>
				<%
				}
				} catch (

				SQLException ex) {
				out.println(ex.getMessage());
				ex.printStackTrace();
				} finally { // Close Statement 
				if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
				if (stmt != null)
				try {
					stmt.close();
				} catch (SQLException ex) {
				}
				// Close Connection 
				if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
				}
				%>
			</table>
			<br>
			<a href="#" onclick="location.href='Board_W.jsp'" 
			style="color: gray;
			background-color:white; 
			font-size: 25px; 
			border: 5px solid white;
			margin-left: 880px; margin-top: 100px;">게시글 작성</a>
		</section>

		<footer>
			<div class="boxalign">
				<ul>
					<li><a href="#">Site Map</a></li>
					<li><a href="#">FOLA</a></li>
					<li><a href="#">Terms of Use</a></li>
					<li><a href="#">Legal</a></li>
					<li><a href="#">korea</a></li>
				</ul>
				<address>COPYRIGHT ⓒ 2021 UNIVERS. ALL RIGHTS RESERVED</address>
			</div>
		</footer>
	</div>



</body>
</html>

