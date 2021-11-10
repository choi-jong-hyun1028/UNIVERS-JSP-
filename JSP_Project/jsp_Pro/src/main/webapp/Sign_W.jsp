<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UNIVERS: 회원가입</title>
<!-- ----------------------------------------------------------------------------------------  -->
<link href="Sign_D.css" type="text/css" rel="stylesheet">
<!-- --------------------------------------------------------------------------------------- -->
</head>
<body>
	<div id = wrap  >
		<form action="./usersignAction.jsp" method="post">
			<table>
				<tr>
					<td>
						<h1>UNIVERS</h1>
						<!-- <a href="#"><img src="./img/LOGO-img.jpg "></a> -->
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
					<td><input class="Name" type="text" size="60" 
					placeholder="이름" onfocus="this.placeholder=''" 
					onblur="this.placeholder='이름'" name="userName"></td>
				</tr>
				<tr>
					<td><input class="Mail" type="email" size="60" 
					placeholder="E-mail" onfocus="this.placeholder=''" 
					onblur="this.placeholder='E-mail'" name="userEmail"></td>
				</tr>
			</table>
			
			<div class="one_button">
				<button class="signin">가입하기</button>
			</div>
		</form>
		
		
		
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
	</div>	
</body>
</html>