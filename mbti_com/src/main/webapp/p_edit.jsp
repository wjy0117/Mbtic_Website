<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- meta name="viewport" content="width=device-width,initial-scale=1"-->
<title>MBTIC_Edit</title>
<link rel="stylesheet" href="style/main_head.css">
<style type="text/css">
/*#All {
	width: 1200px;
	padding: 10px 50px 10px 50px;
	margin: 0 auto;
}*/
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

#content_view {
	padding: 20px;
}
/*사이드*/
aside {
	width: 15%;
	background-color: #de9dff;
	float: left;
}

#nav_ul {
	display: table-cell;
	width: 15%;
	height: 100%;
	line-height: 40px;
	padding: 5px;
	background-color: #FFFF9D;
}

#nav_ul div {
	width: 95%;
	text-align: center;
	background-color: #ffffff;
	padding: 0px 10px 0px 10px;
}

aside div div {
	width: 100%;
}

aside div div input {
	width: 100%;
	height: 50px;
	margin-top: 30px;
}
/*상 우 하 왼*/
ul {
	width: 100%;
	text-align: center;
	font-size: 20px;
	line-height: 50px;
	list-style: none;
	padding-left: 0px;
	margin: 0px 0px 0px 0px;
}

.category_li {
	background-color: #de9dff;
}

.cate_active {
	background-color: #AAFF9D;
}
/*섹션*/
section {
	background-color: #999999;
	width: 95%;
	min-height: 700px;
	margin-left: 10px;
	margin-right: 10px;
	padding: 10px;
}
/*contents*/
#contents {
	background-color: #9ddeff;
	width: 80%;
	padding: 10px;
	float: right;
}

#con_head {
	display: table;
	width: 95%;
	line-height: 30px;
	padding: 10px;
}

#con_head div {
	display: table-cell;
}

#edit_subject {
	margin-left: 10px;
	width: 100%;
	font-size: 30px;
}

#edit_file {
	padding-left: 20px;
}

#edit_content {
	width: 100%;
	height: 500px;
	resize: none;
}

.btns_save {
	width: 100%;
	text-align: right;
}

#result_cate {
	width: 95%;
	display: none;
}
/*
.filebox label {
	display: inline-block;
	padding: .5em .75em;
	color: #999;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #fdfdfd;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
}
*/
/*파일 필드 숨기기
.filebox input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}
*/
/*푸터*/
footer {
	border: dashed;
	width: 100%;
	height: auto;
	background-color: #de9dff;
	text-align: center;
	padding: 10px;
	font-size: smaller;
}
</style>
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
							<input id="search_text" type="text"> <input
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
		<form method="post" id="content_save" action="ContentSave">
			<main>
				<section>
					<aside>
						<div id="nav_ul">
							<div>
								<span>Category</span>
							</div>
							<!-- 
								IT 스포츠 음악 음식 게임 취미 애니 교육
							 -->
							<ul class="category_ul">
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
						<div>
							<div class="btns_save">
								<input id="btn_save" type="button" value="SAVE(저장)"
									onclick="func_save()">
							</div>
						</div>
					</aside>
					<article id="contents">
						<div id="con_head">
							<div>
								<input id="edit_subject" name="edit_subject" type="text"
									placeholder="제목을 입력해주세요.">
							</div>
							<div class="file_box">
								<!-- label for="ex_file">업로드</label-->
								<input id="edit_file" name="edit_file" type="file"
									accept="image/gif, image/jpeg, image/jpg, image/png">
							</div>
						</div>
						<div id="con_body">
							<div class="Line">
								<hr>
							</div>
							<!-- 입력 처리할 때 \n이 있다면 <br>로 처리해야겠다. -->
							<div id="content_view">
								<textarea id="edit_content" name="edit_content" rows="" cols=""></textarea>
							</div>
						</div>

						<div class="btns_save">
							<input id="btn_save" type="button" value="SAVE(저장)"
								onclick="func_save()">
						</div>
					</article>
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
			document.getElementById("searchpage").submit();
		}
		function func_save() {
			/*
			result_cate
			edit_subject
			edit_file
			edit_content
			*/
			//제목, 내용 최소 몇자, 카테고리 선택 확인
			//textarea에 \n을 <br>로 변경
			//제목, 텍스트, 카테고리, 파일(사진) 내용을 DB에 저장.
			
			document.getElementById("content_save").submit();
		}
		function func_change_li(_this) {
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
			var id_check = $(_this).attr("id");
			//alert(id_check);
			document.getElementById(id_check).className = "cate_active";
			//alert(id_check);
			//IT 스포츠 음악 음식 게임 취미 애니 교육
			//1 2 3 4 5 6 7 8 9
			document.getElementById("result_cate").value = document
					.getElementById(id_check).value;
		}
	</script>
</body>
</html>