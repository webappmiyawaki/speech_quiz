<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="model.Result" %>
    <%@ page import="model.ResultCompare" %>
    <%Result result = (Result)session.getAttribute("result"); %>
    <%boolean[] resultList = (boolean[])session.getAttribute("resultList"); %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/result.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int correctCounter = 0;
for(boolean b:resultList){
if(b)correctCounter++;
} %>

<a href="/speech_quiz/QuizResultAll">全員の結果へ</a>←のリンクは３０秒ぐらい待ってから押してください<br>
<br><br>
<table class="table5" border=1>
<tr><th colspan="3">個人結果</th><th><%=correctCounter*20 %>points</th></tr>
<tr><td>問題</td><td>正解</td><td>回答</td><td>結果</td></tr>
<tr><td>問1</td><td>1</td><td><%=result.getAns1() %></td><td><% if(resultList[0]){ out.print("〇"); }else{ out.print("×"); } %></td></tr>
<tr><td>問2</td><td>2</td><td><%=result.getAns2() %></td><td><% if(resultList[1]){ out.print("〇"); }else{ out.print("×"); } %></td></tr>
<tr><td>問3</td><td>3</td><td><%=result.getAns3() %></td><td><% if(resultList[2]){ out.print("〇"); }else{ out.print("×"); } %></td></tr>
<tr><td>問4</td><td>4</td><td><%=result.getAns4() %></td><td><% if(resultList[3]){ out.print("〇"); }else{ out.print("×"); } %></td></tr>
<tr><td>問5</td><td>4</td><td><%=result.getAns5() %></td><td><% if(resultList[4]){ out.print("〇"); }else{ out.print("×"); } %></td></tr>
</table>
<br>

<div class="answer">
問題１の解答<br>
１．高島　宗一郎
</div>

<br>

<div class="answer">
問題２の解答<br>
３．ノボせもん
<img class="quiz_img" src="img/nobose.png">
</div>

<br>
<div class="answer">
問題３の解答<br>
４．
<img class="quiz_img" src="img/q3correct.PNG">
</div>
<br>
<div class="answer">
問題４の解答<br>
１．博多どんたく港まつり<br>
<p>博多どんたくの「どんたく」は、オランダ語で「日曜日」「休日」を意味する「Zondag（ゾンターク）」に由来するといわれる。
「Zondag」は、「土曜日」や「半日休み」を意味する「半ドン」の語源でもある。
明治はじめ頃から用いられた語で、慶応4年（1868年）から明治9年（1876年）にかけ、毎月1と6の日が休日だったことから、「一六のどんたく」「一六休暇（ぞんたく）」とも表現された。</p>
</div>
<br>
<div class="answer">
問題５の解答<br>
１．一郎
</div>

</body>
<footer>
<br>
<br>
スピーチ結果
<br>
</footer>
</html>