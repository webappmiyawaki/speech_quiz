<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="description" content="speech0325">
<meta name="viewport" content="width=device-width">
<title>SPEECH 0325 </title>
<link rel="stylesheet" media="all" href="css/styleNew.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<script src="script.js"></script>
</head>

<body>

<nav id="mainnav">
	<p id="menuWrap"><a id="menu"><span id="menuBtn"></span></a></p>
	<div class="panel">
		<ul>
			<li><a href="#header">TOP</a></li>
			<li><a href="#sec01">問題</a></li>
			<li><a href="#sec03">解答</a></li>
			<li><a href="#sec05">グラフ</a></li>
		</ul>
	</div>
</nav>

<header id="header">
	<img src="img/presentation_kaigi_man.png">
	<div id="slogan">
		<h1>SPEECH0330</h1>
		<h2>QUIZ</h2>
	</div>
</header>

<section id="sec01">

</section>

<section id="sec03">
	<div class="inner">
		<ul class="col3">
			<li>
				<h2>CONTENTS</h2>

				<div class="img_wrap">
				<a href="quiz.jsp" >
				<img src="img/test_print_mondaiyoushi.png" width=125px alt="">
				</a>
				</div>

				<p>問題</p>
			</li>
			<li>
				<h2>RESULT</h2>
				<div class="img_wrap">
				<img src="img/juken_goukakuhappyou_happy.png" width=125px height="75" alt="">
				</div>
				<p>結果</p>
			</li>
			<li>
				<h2>CLASS</h2>
				<div class="img_wrap">
				<img src="img/kojinjouhou_businessman.png" width=125px height="75" alt="">
				</div>
				<p>全員の結果</p>
			</li>
		</ul>
	</div>
</section>

<section id="sec05">
		<h2><%= new java.util.Date() %>？</h2>
</section>


<footer id="footer">
</footer>

</body>
</html>