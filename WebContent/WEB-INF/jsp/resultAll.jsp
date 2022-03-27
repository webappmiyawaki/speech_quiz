<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Random"%>
	<%@ page import="java.util.Arrays" %>
	<%@ page import="java.util.Map" %>
<% Map<Integer,int[]> resultMap = (Map<Integer,int[]>)session.getAttribute("classResult"); %>

<!DOCTYPE html>
<html lang="ja">

<head>
<link rel="stylesheet" href="css/sample.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.js"></script>
<meta charset="utf-8">
<title>グラフ</title>
</head>
<body>
	<%
	Random rnd = new Random();
	int x1 = rnd.nextInt(100);
	int x2 = rnd.nextInt(100);
	int x3 = rnd.nextInt(100);
	int x4 = rnd.nextInt(100);
	int x5 = rnd.nextInt(100);
	int x6 = rnd.nextInt(100);
	int x7 = rnd.nextInt(100);
	int x8 = rnd.nextInt(100);
	%>

	<a href="quiz.jsp"> quiz.jsp </a>
	<h2>問題別解答選択</h2>
	<div class="parent">
	<div class="child">
	<canvas id="myPieChart1"></canvas>
	</div>
	<div class="child">
	<canvas id="Pie2"></canvas>
	</div>
	</div>
	<br>
	<div class="parent">
	<div class="child">
	<canvas id="chart3"></canvas>
	</div>
	<div class="child">
	<canvas id="myPieChart4"></canvas>
	</div>
	</div>
<br>
	<div class="parent">
	<div class="child">
		<canvas id="myPieChart5"></canvas>
	</div>
	</div>

		<script>
			var ctx = document.getElementById("myPieChart1");
			var myPieChart = new Chart(ctx, {
				type : 'pie',
				data : {
					labels : [ "高島 宗一郎", "長岡 大雅", "高橋 徹郎", "高橋 総一郎" ], //データ項目のラベル
					datasets : [ {
						backgroundColor: [
				            'rgba(255, 99, 132, 0.2)',
				            'rgba(255, 159, 64, 0.2)',
				            'rgba(255, 205, 86, 0.2)',
				            'rgba(75, 192, 192, 0.2)'
				            ],
				            borderColor: [
				                'rgb(255, 99, 132)',
				                'rgb(255, 159, 64)',
				                'rgb(255, 205, 86)',
				                'rgb(75, 192, 192)'
				                ],borderWidth:1,
				                <% int[] q1 = resultMap.get(1); %>
						data : [<%= q1[0] %>, <%= q1[1] %>,<%= q1[2]%>,<%= q1[3] %>]
					//グラフのデータ
					} ]
				},
				options : {
					title : {
						display : true,
						//グラフタイトル
						text : 'クイズ１．正解１'
					}
				}
			});
		</script>
		<br>

		<script>
			var ctx = document.getElementById("Pie2");
			var myPieChart = new Chart(ctx, {
				type : 'pie',
				data : {
					labels : [ "のぼせもん", "ノぼせもん", "ノボせもん", "ノボセもん" ], //データ項目のラベル
					datasets : [ {
						backgroundColor: [
				            'rgba(255, 99, 132, 0.2)',
				            'rgba(255, 159, 64, 0.2)',
				            'rgba(255, 205, 86, 0.2)',
				            'rgba(75, 192, 192, 0.2)'
				            ],
				            borderColor: [
				                'rgb(255, 99, 132)',
				                'rgb(255, 159, 64)',
				                'rgb(255, 205, 86)',
				                'rgb(75, 192, 192)'
				                ],borderWidth:1,
				                <% int[] q2 = resultMap.get(2); %>
						data : [<%= q2[0] %>, <%= q2[1] %>,<%= q2[2]%>,<%= q2[3] %>]
					//グラフのデータ
					} ]
				},
				options : {
					title : {
						display : true,
						//グラフタイトル
						text : 'クイズ２．正解３'
					}
				}
			});
		</script>

		<script>
			var ctx = document.getElementById("chart3");
			var myDoughnutChart = new Chart(ctx, {
				type : 'doughnut',
				data : {
					labels : [ "1", "2", "3", "4" ], //データ項目のラベル
					datasets : [ {
						backgroundColor: [
				            'rgba(255, 99, 132, 0.2)',
				            'rgba(255, 159, 64, 0.2)',
				            'rgba(255, 205, 86, 0.2)',
				            'rgba(75, 192, 192, 0.2)'
				            ],
				            borderColor: [
				                'rgb(255, 99, 132)',
				                'rgb(255, 159, 64)',
				                'rgb(255, 205, 86)',
				                'rgb(75, 192, 192)'
				                ],borderWidth:1,
				                <% int[] q3 = resultMap.get(1); %>
						data : [<%= q3[0] %>, <%= q3[1] %>,<%= q3[2]%>,<%= q3[3] %>]
					//グラフのデータ
					} ]
				},
				options : {
					title : {
						display : true,
						//グラフタイトル
						text : 'クイズ３．正解４'
					},
			      animation: {
			          //アニメーションの有無
			          animateRotate: false
			      }
				}
			});
		</script>

		<script>
			var ctx = document.getElementById("myPieChart4");
			var myPieChart = new Chart(ctx, {
				type : 'pie',
				data : {
					labels : [ "博多どんたく港まつり", "博多ぞんたく港まつり", "博多祇園山笠", "放生会" ], //データ項目のラベル
					datasets : [ {
						backgroundColor: [
				            'rgba(255, 99, 132, 0.2)',
				            'rgba(255, 159, 64, 0.2)',
				            'rgba(255, 205, 86, 0.2)',
				            'rgba(75, 192, 192, 0.2)'
				            ],
				            borderColor: [
				                'rgb(255, 99, 132)',
				                'rgb(255, 159, 64)',
				                'rgb(255, 205, 86)',
				                'rgb(75, 192, 192)'
				                ],borderWidth:1,
				                <% int[] q4 = resultMap.get(1); %>
						data : [<%= q3[0] %>, <%= q3[1] %>,<%= q3[2]%>,<%= q3[3] %>]
					//グラフのデータ
					} ]
				},
				options : {
					title : {
						display : true,
						//グラフタイトル
						text : 'クイズ４．正解１'
					}
				}
			});
		</script>
		<script>
			var ctx = document.getElementById("myPieChart5");
			var myPieChart = new Chart(ctx, {
				type : 'pie',
				data : {
					labels : [ "一郎", "次郎", "三郎", "四郎" ], //データ項目のラベル
					datasets : [ {
						backgroundColor: [
				            'rgba(255, 99, 132, 0.2)',
				            'rgba(255, 159, 64, 0.2)',
				            'rgba(255, 205, 86, 0.2)',
				            'rgba(75, 192, 192, 0.2)'
				            ],
				            borderColor: [
				                'rgb(255, 99, 132)',
				                'rgb(255, 159, 64)',
				                'rgb(255, 205, 86)',
				                'rgb(75, 192, 192)'
				                ],borderWidth:1,
				                <% int[] q5 = resultMap.get(1); %>
						data : [<%= q3[0] %>, <%= q3[1] %>,<%= q3[2]%>,<%= q3[3] %>]
					//グラフのデータ
					} ]
				},
				options : {
					title : {
						display : true,
						//グラフタイトル
						text : 'クイズ５．正解１'
					}
				}
			});
		</script>

		<h2>問題毎正答率：全員</h2>
		<canvas id="myPolarChart2"></canvas>
		<script>
			var ctx = document.getElementById("myPolarChart2");
			var myPolarChart = new Chart(ctx, {
				type : 'polarArea',
				data : {
					labels : [ "1sh", "2nd", "3rd", "4th" ,"5th"], //データ項目のラベル
					datasets : [ {
						backgroundColor: [
				            'rgba(255, 99, 132, 0.2)',
				            'rgba(255, 159, 64, 0.2)',
				            'rgba(255, 205, 86, 0.2)',
				            'rgba(75, 192, 192, 0.2)',
				            'rgba(54, 162, 235, 0.2)'
				            ],
				            borderColor: [
				                'rgb(255, 99, 132)',
				                'rgb(255, 159, 64)',
				                'rgb(255, 205, 86)',
				                'rgb(75, 192, 192)',
				                'rgb(54, 162, 235)'
				                ],borderWidth:1,
								data : [
									<%
									double q1total=(q1[0]/(double)Arrays.stream(q1).sum())*100;
									double q2total=(q2[0]/(double)Arrays.stream(q2).sum())*100;
									double q3total=(q3[0]/(double)Arrays.stream(q3).sum())*100;
									double q4total=(q4[0]/(double)Arrays.stream(q4).sum())*100;
									double q5total=(q5[0]/(double)Arrays.stream(q5).sum())*100;


									%>



								<%= q1total %>,
										<%= q2total %>,
										<%= q3total %>,
										<%= q4total %>,
										<%= q5total %>
								]
					//グラフのデータ
					} ]
				},
				options : {
					title : {
						display : true,
						//グラフタイトル
						text : 'グラフタイトル'
					},
					scales: {
				        ticks: {
		                    min: 0,              // 最小値
		                    max: 100,            // 最大値
		                    stepSize: 20,        // 目盛の間隔
		                    fontSize: 12,        // 目盛り数字の大きさ
				        }
				    }
				}
			});
		</script>

		<h2>アンケート結果</h2>
		<canvas id="ex_chart"></canvas>

		<script>
		var ctx = document.getElementById('ex_chart');

		var data = {
		    labels: ["もつ鍋　やま中", "てんぷら　ひらお", "イタリアン　らるきぃ", "屋台　小金ちゃん"],
		    datasets: [{
		    	<% int[] q6 = resultMap.get(6); %>
		        data: [<%= q6[0] %>, <%= q6[1] %>,<%= q6[2] %>,<%= q6[3] %>],
		        backgroundColor: [
		            'rgba(255, 99, 132, 0.2)',
		            'rgba(255, 159, 64, 0.2)',
		            'rgba(255, 205, 86, 0.2)',
		            'rgba(75, 192, 192, 0.2)'
		            ],
		            borderColor: [
		                'rgb(255, 99, 132)',
		                'rgb(255, 159, 64)',
		                'rgb(255, 205, 86)',
		                'rgb(75, 192, 192)'
		                ],borderWidth:1
		    }]
		};

		var options = {
		    scales: {
		        yAxes: [{
		            ticks: {
		                min: 0
		            }
		        }]
		    }
		};

		var ex_chart = new Chart(ctx, {
		    type: 'bar',
		    data: data,
		    options: options
		});
		</script>
		<br>
		平均点：<%= (q1total+q2total+q3total+q4total+q5total)/5 %>点
</body>
<footer>
<br>
スピーチ用
<br>
</footer>
</html>