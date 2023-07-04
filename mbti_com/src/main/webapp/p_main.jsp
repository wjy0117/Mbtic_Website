<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>MBTIC_Main</title>
<link rel="stylesheet" href="style/main_head.css">
<link rel="stylesheet" href="style/sharestyle.css">
<link rel="stylesheet" href="style/main_nav.css">
<link rel="stylesheet" href="style/main_style.css">
<link rel="stylesheet" href="style/new_table.css">
<link rel="stylesheet" href="style/main_footer.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<!-- 
가로크기를 알고 싶다면 $(window).width(); 세로크기를 알고싶다면 $(window).height();
 -->
<body>
	<div id="All">
		<!-- 상단 바 하려다가 -->
		<div id="headbar">
			<a href="">인기 글 목록</a> <a href="">로그아웃</a> <a href="">로그인</a>
		</div>
		<!-- 헤더 -->
		<header>
			<div>
				<form method="post" id="mainpage" action="MoveMain">
					<div onclick="logo_main()">
						<img id="mbtic_logo" src="mbtic_logo_trans.png">
					</div>
				</form>
				<form method="post" id="searchpage" action="MoveSearch">
					<div id="head_search">
						<div>
							<input id="search_text" name="search_text" type="text"> <input
								id="btn_search" type="button" value="검색" onclick="func_search()">
						</div>
					</div>
				</form>
			</div>
		</header>
		<!-- 네비 -->
		<form method="post" id="search_subject" action="searchController">
			<nav>
				<div>
					<div id="nav_ul">
						<!-- 
								IT 스포츠 음악 음식 게임 취미 애니 교육
							 -->
						<ul class="category_ul">
							<li class="Category_li" id="nav_it" value="1"
								onclick="func_change_li(this)">IT</li>
							<li class="Category_li" id="nav_sport" value="2"
								onclick="func_change_li(this)">스포츠</li>
							<li class="Category_li" id="nav_music" value="3"
								onclick="func_change_li(this)">음악</li>
							<li class="Category_li" id="nav_food" value="4"
								onclick="func_change_li(this)">음식</li>
							<li class="Category_li" id="nav_game" value="5"
								onclick="func_change_li(this)">게임</li>
							<li class="Category_li" id="nav_hobby" value="6"
								onclick="func_change_li(this)">취미</li>
							<li class="Category_li" id="nav_ani" value="7"
								onclick="func_change_li(this)">애니</li>
							<li class="Category_li" id="nav_ed" value="8"
								onclick="func_change_li(this)">교육</li>
							<li class="Category_li" id="nav_etc" value="9"
								onclick="func_change_li(this)">기타</li>
						</ul>
					</div>
					<div id="nav_stat">
						<span> 오늘 작성된 <i id="stat_sub">글</i>이 <i id="stat">100,000</i>건
							있습니다.
						</span>
						<!-- 
						<span>
							오늘 작성된 <i id="stat_sub">댓글</i>이 <i id="stat">100,000</i>건 있습니다.
						</span>
						-->
					</div>
				</div>
			</nav>
		</form>
		<hr>
		<!-- 
			실제 사용되는 브라우저 안쪽 너비와 높이
			document.body.offsetWidth
			document.body.offsetHeight 
			 -->
		<!-- 메인부 -->
		<form method="post" id="main_controller" action="mainController">
			<main>
				<!-- 사이드 
				800 너비 이하면 사이드는 안보이게 처리
				section을 width: 95%로 변경-->
				<aside>
					<div id="profile">
						<table>
							<tbody>
								<tr>
									<td>닉네임</td>
									<td rowspan="2" align="right">
										<img id="profile_img"src="mbtic_logo_trans.png">
									</td>
								</tr>
								<tr>
									<td>작성글: <a href="">5</a>개
									</td>
								</tr>
								<tr>
									<td>댓글: <a href="">5</a>개
									</td>
									<td align="right">MBTI</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div id="adver">
						<p>광고위치</p>
					</div>
				</aside>
				<!-- 섹션 -->
				<section>
					<article id="hot_content">
						<div class="Hotbox" onclick="viewbox(this)">
							<img src="mbtic_logo_trans.png"><br>
							<div class="Box_text">
								<div class="Box_view">
									<span class="Hot_view">조회수1</span>
								</div>
								<div class="Box_sub">
									<span>인기순1</span>
								</div>
							</div>
						</div>
						<div class="Hotbox" onclick="viewbox(this)">
							<img src="mbtic_logo_trans.png"><br>
							<div class="Box_text">
								<div class="Box_view">
									<span class="Hot_view">조회수1</span>
								</div>
								<div class="Box_sub">
									<span>인기순1</span>
								</div>
							</div>
						</div>
						<div class="Hotbox" onclick="viewbox(this)">
							<img src="mbtic_logo_trans.png"><br>
							<div class="Box_text">
								<div class="Box_view">
									<span class="Hot_view">조회수1</span>
								</div>
								<div class="Box_sub">
									<span>인기순1</span>
								</div>
							</div>
						</div>
					</article>
					<div id="contents">
						<div id="con_new">
							<div class="Line">
								<hr>
							</div>
							<span class="Con_span">게시판 1 (최신순)</span><br>
							<!-- 미방용, 그림있다는 아이콘 표시 -->
							<div id="content_list">
								<table class="Newboxes" onclick="viewbox(this)">
									<tbody>
										<tr>
											<td rowspan="2">
												<img id="con_img" src="mbtic_logo_trans.png">
											</td>
											<td>
												<div class="Conboard">
													[<span>게시판 명</span>]
												</div>
											</td>
											<td>
												<div class="Conname">
													<span>닉네임</span>
												</div>
											</td>
											<td>
												<div class="Condate">
													<span>2023.07.04 12:11</span>
												</div>
											</td>
										</tr>
										<tr>
											<td colspan="3">
												<div class="Consub">
													<span>첫 번째 컨텐츠 이름 명</span>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
								<table class="Newboxes" onclick="viewbox(this)">
									<tbody>
										<tr>
											<td rowspan="2">
												<img id="con_img" src="mbtic_logo_trans.png">
											</td>
											<td>
												<div class="Conboard">
													[<span>게시판 명</span>]
												</div>
											</td>
											<td>
												<div class="Conname">
													<span>닉네임</span>
												</div>
											</td>
											<td>
												<div class="Condate">
													<span>2023.07.04 12:11</span>
												</div>
											</td>
										</tr>
										<tr>
											<td colspan="3">
												<div class="Consub">
													<span>첫 번째 컨텐츠 이름 명</span>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div id="con_recommend">
							<div class="Line">
								<hr>
							</div>
							<span class="Con_span">> 추천글</span><br>
							<div class="Recommendbox" onclick="viewbox(this)">
								<img src="mbtic_logo_trans.png">
								<div>
									<span>글제목 1</span>
								</div>
							</div>
							<div class="Recommendbox" onclick="viewbox(this)">
								<img src="mbtic_logo_trans.png">
								<div>
									<span>글제목 1</span>
								</div>
							</div>
							<div class="Recommendbox" onclick="viewbox(this)">
								<img src="mbtic_logo_trans.png">
								<div>
									<span>글제목 1</span>
								</div>
							</div>
						</div>
					</div>
				</section>
			</main>
		</form>
		<hr>
		<!-- 푸터 -->
		<footer>
			<p>Mbtic(MBTI Community)의 콘텐츠는 저작권법의 보호를 받으므로, 무단 전재, 복사, 배포 등을
				금합니다.</p>
			<h5>Copyrightⓒ MBTI Community. All rights reserved.</h5>
		</footer>
	</div>
	<script type="text/javascript">
		function logo_main() {
			document.getElementById("mainpage").submit();
		}
		function func_search() {
			//입력한 내용으로 검색 페이지로 이동.
			var v = document.getElementById("search_text").value;
			if (v !== null) {
				document.getElementById("searchpage").submit();
			}
		}
		function func_change_li(_this) {

			var id_check = $(_this).attr("id");
			/*
				class로 스타일 지정
				class로 다른 클래스로 변경하여 지정하는 방법을 몰라 각 id로 class 지정하도록 설정
				document.get ElementsByClassName("Cate_active").className = "Category_li";
				이런 것처럼 Cate_active를 category_li로 바꾸어야하는데
				클래스로 지정하면 안되는 것 같음.
			 */
			document.getElementById("nav_it").className = "Category_li";
			document.getElementById("nav_sport").className = "Category_li";
			document.getElementById("nav_music").className = "Category_li";
			document.getElementById("nav_food").className = "Category_li";
			document.getElementById("nav_game").className = "Category_li";
			document.getElementById("nav_hobby").className = "Category_li";
			document.getElementById("nav_ani").className = "Category_li";
			document.getElementById("nav_ed").className = "Category_li";
			document.getElementById("nav_etc").className = "Category_li";

			/*현재 선택된 li요소의 id*/

			document.getElementById(id_check).className = "Cate_active";
			//IT 스포츠 음악 음식 게임 취미 애니 교육
			//1 2 3 4 5 6 7 8 9
			/*document.getElementById("search_text").value = document
					.getElementById(id_check).value;
			 */
			switch (document.getElementById(id_check).value) {
			case 1:
				document.getElementById("search_text").value = "IT";
				break;
			case 2:
				document.getElementById("search_text").value = "Sport";
				break;
			case 3:
				document.getElementById("search_text").value = "Music";
				break;
			case 4:
				document.getElementById("search_text").value = "Food";
				break;
			case 5:
				document.getElementById("search_text").value = "Game";
				break;
			case 6:
				document.getElementById("search_text").value = "Hobby";
				break;
			case 7:
				document.getElementById("search_text").value = "Ani";
				break;
			case 8:
				document.getElementById("search_text").value = "Education";
				break;
			case 9:
				document.getElementById("search_text").value = "Etc";
				break;
			}
			document.getElementById("searchpage").submit();
		}
	</script>
</body>
</html>