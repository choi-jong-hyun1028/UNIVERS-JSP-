<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- ----------------여기는 로그인 화면------------------------------------- -->
<title>UNIVERS: 로그인</title>
<!-- ----------------------------------------------------------------------------------------  -->
<link href="Login_D.css" type="text/css" rel="stylesheet">
<!-- --------------------------------------------------------------------------------------- -->
</head>
<body>
	<div id = wrap >
		
	
		<form action="./LoginAction.jsp" method="post">
			<table>
				<tr>
					<td>
						<h1>UNIVERS</h1>
					</td>
				</tr>
				<tr>
					<td><input class="Id" type="text" size="60" 
					placeholder="아이디" onfocus="this.placeholder=''" 
					onblur="this.placeholder='아이디'" name="userID"></td>
				</tr>
				<tr>
					<td><input class="Password" type="password" size="60" 
					placeholder="비밀번호" onfocus="this.placeholder=''" 
					onblur="this.placeholder='비밀번호'" name="userPassword"></td>
				</tr>
				<tr>
					<td><input class="log"  type="submit" value="로그인" size="60" style="border: 2px solid white;"></td>
				</tr>
			</table>
		</form>	
		
		<div class="two_button">
			<button class="find">ID/PW 찾기</button>
			<button class="sign" onClick="window.open('Sign_W.jsp')">회원가입</button>
		</div>
		
	</div>
	
	
	
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
		
		<!-- <form action="./useDB.jsp" method="post">
			<input type="submit" value="조회">
		</form> -->
		
</body>
</html>