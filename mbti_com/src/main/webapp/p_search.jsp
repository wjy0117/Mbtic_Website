<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>MBTIC_Search</title>
<link rel="stylesheet" href="style/main_head.css">
<link rel="stylesheet" href="style/sharestyle.css">
<link rel="stylesheet" href="style/clickside.css">
<link rel="stylesheet" href="style/new_table.css">
<link rel="stylesheet" href="style/main_footer.css">
<style type="text/css">
#All {
	max-width: 1200px;
	min-width: 800px;
	padding: 10px 50px 10px 50px;
	margin: 0 auto;
}

/*메인 (사이드, 섹션)*/
main {
	overflow: hidden;
	height: auto;
}

/*섹션*/
section {
	display: table;
	background-color: #999999;
	width: 100%;
	min-height: 700px;
	padding: 10px;
}

/*본문*/
#section_article {
	width: 80%;
	display: table-cell;
	float: left;
	padding: 10px;
}

#con_head {
	display: table;
	width: 100%;
	margin: 10px 10px 30px 10px;
}
/*검색어 표시*/
#con_subject {
	display: table-cell;
	width: 70%;
	font-size: 40px;
	float: left;
}
/*글 작성하기*/
#con_edit {
	display: table-cell;
	width: 25%;
	height: 50px;
	font-size: 20px;
	margin-right: 10px;
	float: left;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
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
		<hr>
		<!-- 
			실제 사용되는 브라우저 안쪽 너비와 높이
			document.body.offsetWidth
			document.body.offsetHeight 
			 -->
		<!-- 메인부 -->
		<main>
			<!-- 섹션 -->
			<section>
				<div id="section_aside">
					<aside>
						<div id="nav_ul">
							<div>
								<span>Category</span>
							</div>
							<!-- 
								IT 스포츠 음악 음식 게임 취미 애니 교육
							 -->
							<ul>
								<li class="category_li" id="nav_it" value="1"
									onclick="func_change_li(this)">IT</li>
								<li class="category_li" id="nav_sport" value="2"
									onclick="func_change_li(this)">스포츠</li>
								<li class="category_li" id="nav_music" value="3"
									onclick="func_change_li(this)">음악</li>
								<li class="category_li" id="nav_food" value="4"
									onclick="func_change_li(this)">음식</li>
								<li class="category_li" id="nav_game" value="5"
									onclick="func_change_li(this)">게임</li>
								<li class="category_li" id="nav_hobby" value="6"
									onclick="func_change_li(this)">취미</li>
								<li class="category_li" id="nav_ani" value="7"
									onclick="func_change_li(this)">애니</li>
								<li class="category_li" id="nav_ed" value="8"
									onclick="func_change_li(this)">교육</li>
								<li class="category_li" id="nav_etc" value="9"
									onclick="func_change_li(this)">기타</li>
							</ul>
							<input type="text" id="result_cate" name="result_cate" readonly>
						</div>
					</aside>
				</div>
				<div id="section_article">
					<article id="contents">
						<div id="con_new">
							<div id="con_head">

								<%
								String stext = "검색어";
								try {
									stext = (String) request.getAttribute("text");
									if (!stext.equals("") && !stext.equals("null")) {
								%>

								<div>
									<span id="con_subject"> <%=stext%>
									</span>
								</div>
								<%
								} else {
								throw new Exception();

								/* 강제 예외문
									Exception ex = new Exception();
									throw ex;
								*/
								}
								/*로그*/
								} catch (Exception e) {
								%>
								<div>
									<span id="con_subject"> 검색어 </span>
								</div>
								<%
								}
								%>
								<form method="post" id="editpage" action="MoveEdit">
									<div>
										<input id="con_edit" type="button" value="글 작성하기" onclick="func_edit()">
									</div>
								</form>
							</div>
							<div id="con_body">
								<%
								try {
									//게시판 명 목록
									//컨텐츠 제목
								%>
								<!-- <table>
										<tbody>
											<tr class="boxes" id="newbox1" onclick="viewbox(this)">
												<td><img src="mbtic_logo_trans.png"> [<span>게시판
														명</span>] <span>첫 번째 컨텐츠 이름 명</span> <span>닉네임</span> <span>2023.07.04
														12:11</span></td>
											</tr>
											<tr class="boxes" onclick="viewbox(this)">
												<td><img src="mbtic_logo_trans.png"> [<span>게시판
														명</span>] <span>첫 번째 컨텐츠 이름 명</span> <span>닉네임</span> <span>2023.07.04
														12:11</span></td>
											</tr>
										</tbody>
									</table>
									 -->
								<table class="Newboxes" onclick="viewbox(this)">
									<tbody>
										<tr>
											<td rowspan="2"><img id="con_img"
												src="mbtic_logo_trans.png"></td>
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
								<%
								} catch (Exception e) {
								%>
								<div style="display: none">
									<img alt="" src="">
									<div>
										<span>검색 결과가 없습니다. 다른 검색어를 이용해보세요!</span>
									</div>
								</div>
								<%
								}
								%>
							</div>
						</div>
					</article>
				</div>
			</section>
		</main>
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
			document.getElementById("searchpage").submit();
		}
		function func_change_li(_this) {

			var id_check = $(_this).attr("id");
			/*
				class로 스타일 지정
				class로 다른 클래스로 변경하여 지정하는 방법을 몰라 각 id로 class 지정하도록 설정
				document.get ElementsByClassName("cate_active").className = "category_li";
				이런 것처럼 cate_active를 category_li로 바꾸어야하는데
				클래스로 지정하면 안되는 것 같음.
			 */
			document.getElementById("nav_it").className = "category_li";
			document.getElementById("nav_sport").className = "category_li";
			document.getElementById("nav_music").className = "category_li";
			document.getElementById("nav_food").className = "category_li";
			document.getElementById("nav_game").className = "category_li";
			document.getElementById("nav_hobby").className = "category_li";
			document.getElementById("nav_ani").className = "category_li";
			document.getElementById("nav_ed").className = "category_li";
			document.getElementById("nav_etc").className = "category_li";

			/*현재 선택된 li요소의 id*/

			document.getElementById(id_check).className = "cate_active";
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
		function func_edit() {
			document.getElementById("editpage").submit();
		}
	</script>
</body>
</html>