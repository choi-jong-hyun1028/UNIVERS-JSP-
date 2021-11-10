<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>UNIVERS</title>
    <!-- ----------------------------------------------------------------------------------------  -->
    <link href="Main_D.css" type="text/css" rel="stylesheet">
    <!-- ----------------------------------------------------------------------------------------  -->
</head>

<body>
    <div id="wrap">
        <header class="boxalign">
            <div id="logo">
                <h1>
                    <a href="#">
                        <img src="img/LOGO-img.jpg" alt="">
                    </a>
                </h1>
            </div>
            <nav>
                <ul>
                    <li><a href="#" >사업소개</a></li>
                    <li><a href="#">갤러리</a></li>
                    <li><a href="#" onclick="location.href='Write_W.jsp'">게시판</a></li>
                    <li><a href="#">온라인몰</a></li>
                    <li><a href="#" onclick="location.href='Login_W.jsp'">로그인</a></li>
                    <li><a href="#" onclick="location.href='Sign_W.jsp'">회원가입</a></li>
                </ul>
            </nav>
        </header>
        
        <main>
            <div class="bgcover"><img class="myMain" alt="" src="./img/Main_bg.gif"></div>
            <div class="textcover">
                <h2>Where Do<br> We come<br> From?</h2>
                <span></span>
                <p>The story of fifteen billion years of cosmic evolution transforming matter and life into
                    consciousness, of how science and civilization grew up together, and of the forces and
                    individuals who helped shape modern science</p>
                <a href="#">MORE</a>
            </div>
        </main>
        
        <section id="contents" class="boxalign">
            <ul>
                <li>
                    <h2>The story of cosmic evolution,<br> science and civilisation</h2>
                    <span></span>
                    <p>Carl Sagan was the Director of the Laboratory<br> for Planetary studies and David Duncan<br>
                        Professor of Astronomy and Space Sciences at Cornell University.</p>
                </li>
                <li>
                    <a href="#"><img src="./img/Main_sub1.jpg" alt="">
                        <span class="context">
                            <span class="title">
                                The Shores of the Cosmic Ocean
                            </span>
                            <span class="btncover">
                                <span class="btn"></span>
                                <span>CHAPTER I</span>
                            </span>
                        </span>
                    </a>
                </li>
                <li>
                    <a href="#"><img src="./img/Main_sub2.jpg" alt="">
                        <span class="context">
                            <span class="title">
                                 the Cosmic to the Lord of the Worlds.
                            </span>
                            <span class="btncover">
                                <span class="btn"></span>
                                <span>CHAPTER II</span>
                            </span>
                        </span>
                    </a>
                </li>
            </ul>
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