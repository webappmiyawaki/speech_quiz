<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="model.ResultError" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>miyawaki/local quiz</title>
<link rel="stylesheet" type="text/css" href="css/index.css" />
</head>
<body>
<%
ResultError qre = (ResultError)request.getAttribute("ansError");
if(qre==null){

}else{
if(qre.getQuizResultError().equals("error")){
%>
<h1 class="error">
エラー：未入力の項目があります。回答をすべてチェックしてください。
</h1>
<%
}
}
%>
	<div class="parent">
	<h1>スピーチ用 QUIZ</h1>
	<h3>福岡に関する問題５点。<br>
	回答ボタンを押すと個人結果とクラスの結果が集計されます。</h3>

		<form method="get" action="QuizResult">
			<div class="quiz_box_main">
				<h3 class="border_text">1: 現在の福岡市長の名前は？</h3>
					<div class="quiz_box_sub">
					<img class="quiz_img" src="img/9.jpg">
					<div class="quiz border_radio">
						<input type="radio" name="ans1" value="1">　高島 宗一郎<br>
						<input type="radio" name="ans1" value="2">　長岡 大雅<br>
						<input type="radio" name="ans1" value="3">　高橋 徹郎<br>
						<input type="radio" name="ans1" value="4">　高橋 総一郎<br>
					</div>
				</div>
			</div>

			<br>

			<div class="quiz_box_main">
				<h3 class="border_text">2: 福岡で大人気の芸能人「なべ」さんが組んでいたコンビの名は?</h3>
				<div class="quiz_box_sub">

					<img class="quiz_img" src="img/nobosemon_nabe.jpg">
					<div class="quiz border_radio">
						<input type="radio" name="ans2" value="1">　空中ズボン<br>
						<input type="radio" name="ans2" value="2">　だんごばーな<br>
						<input type="radio" name="ans2" value="3">　ノボせもん<br>
						<input type="radio" name="ans2" value="4">　のぼせもん<br>
					</div>
				</div>
			</div>

			<br>

			<div class="quiz_box_main">
				<h3 class="border_text">3: 現在のソフトバンクホークスロゴはどれ？</h3>
				<div class="quiz_box_sub">

					<img class="quiz_img" src="img/ogor.jpg">
					<div class="quiz border_radio">
						<input type="radio" name="ans3" value="1">　１<br>
						<input type="radio" name="ans3" value="2">　２<br>
						<input type="radio" name="ans3" value="3">　３<br>
						<input type="radio" name="ans3" value="4">　４<br>
					</div>
				</div>
			</div>

			<br>

			<div class="quiz_box_main">
				<h3 class="border_text">
				4: 毎年5月5日・4日に福岡市で行われる年中行事の名前は？<br>
				（市民が仮装姿でしゃもじを叩いて町を練り歩き、舞台や広場で踊りを披露する。）
				</h3>
				<div class="quiz_box_sub">

					<img class="quiz_img" src="img/dontaku.png">
					<div class="quiz border_radio">
						<input type="radio" name="ans4" value="1">　博多どんたく港まつり<br>
						<input type="radio" name="ans4" value="2">　博多ぞんたく港まつり<br>
						<input type="radio" name="ans4" value="3">　博多祇園山笠<br>
						<input type="radio" name="ans4" value="4">　放生会<br>
					</div>
				</div>
			</div>
			<br>

			<div class="quiz_box_main">
				<h3 class="border_text">
				5: Java Webアプリ開発技術者育成課の担当講師は「古賀先生」ですが、<br>
				「古賀先生」のフルネームは？
				</h3>
				<div class="quiz_box_sub">
					<img class="quiz_img" src="img/JavaP.jpg">
					<div class="quiz border_radio">
						<input type="radio" name="ans5" value="1">古賀　シュウ<br>
						<input type="radio" name="ans5" value="2">古賀　修一<br>
						<input type="radio" name="ans5" value="3">古賀　憲太郎<br>
						<input type="radio" name="ans5" value="4">古賀　慎也<br>
					</div>
				</div>
			</div>
			<br>

						<div class="quiz_box_main">
				<h3 class="border_text">
				アンケート:４月にご飯食べに行くなら何処？<br>
				</h3>
				<div class="quiz_box_sub">

					<img class="quiz_img" src="img/doof.jpg">
					<div class="quiz border_radio">
						<input type="radio" name="ans6" value="1">　もつ鍋　やま中<br>
						<input type="radio" name="ans6" value="2">　てんぷら　ひらお<br>
						<input type="radio" name="ans6" value="3">　イタリアン　らるきぃ<br>
						<input type="radio" name="ans6" value="4">　屋台　小金ちゃん<br>
					</div>
				</div>
			</div>
			<br>
			<br>
			<div>
			回答を送信する＞＞＞＞<input type="submit" value="Submit" /><br><br>
			回答をリセットする＞＞<input type="reset" value="Reset" />
			</div>
		</form>
	</div>
</body>
</html>