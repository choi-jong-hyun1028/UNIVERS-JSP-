<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<link href="Board_D.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div id=wrap>

		<header class="boxalign">
			<div id="logo">
				<h1>
					<a href="#"> <img src="img/LOGO-img.jpg" alt="">
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

		<!-- 게시판 글쓰기 양식 영역 시작 -->
		<div class="container">
			<div class="row">
				<form method="post" action="writeAction2.jsp">

					<table class="table table-striped">

						<thead>
							<tr class="headw">
								<th colspan="2" style="color: white;">게시글 작성</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td><input type="text" class="form-control"
									placeholder="제목" name="Title" maxlength="50" style="width: 1193px; height: 50px;"></td>
							</tr>
							<tr>
								<td><textarea class="form-control" placeholder="내용"
										name="Contents" maxlength="2000" style="width: 1193px; height: 300px;"></textarea></td>
							</tr>
						</tbody>

					</table>

					<!-- 글쓰기 버튼 생성 -->
					<input type="submit" class="btn btn-primary pull-right" value="등록" 
					style="width: 300px; height: 60px; margin-left: 450px;">
				</form>
			</div>
		</div>
		<!-- 게시판 글쓰기 양식 영역 끝 -->

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