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

/*���� (���̵�, ����)*/
main {
	overflow: hidden;
	height: auto;
}

#content_view {
	padding: 20px;
}
/*���̵�*/
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
/*�� �� �� ��*/
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
/*����*/
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
/*���� �ʵ� �����
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
/*Ǫ��*/
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
����ũ�⸦ �˰� �ʹٸ� $(window).width(); ����ũ�⸦ �˰�ʹٸ� $(window).height();
 -->
<body>
	<div id="All">
		<!-- ��� �� �Ϸ��ٰ� -->
		<div id="headbar">
			<a href="">�α� �� ���</a> <a href="">�α׾ƿ�</a> <a href="">�α���</a>
		</div>
		<!-- ��� -->
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
								id="btn_search" type="button" value="�˻�" onclick="func_search()">
						</div>
					</div>
				</form>
			</div>
		</header>

		<hr>
		<!-- 
			���� ���Ǵ� ������ ���� �ʺ�� ����
			document.body.offsetWidth
			document.body.offsetHeight 
			 -->
		<!-- ���κ� -->
		<form method="post" id="content_save" action="ContentSave">
			<main>
				<section>
					<aside>
						<div id="nav_ul">
							<div>
								<span>Category</span>
							</div>
							<!-- 
								IT ������ ���� ���� ���� ��� �ִ� ����
							 -->
							<ul class="category_ul">
								<li class="category_li" id="nav_it" value="1"
									onclick="func_change_li(this)">IT</li>
								<li class="category_li" id="nav_sport" value="2"
									onclick="func_change_li(this)">������</li>
								<li class="category_li" id="nav_music" value="3"
									onclick="func_change_li(this)">����</li>
								<li class="category_li" id="nav_food" value="4"
									onclick="func_change_li(this)">����</li>
								<li class="category_li" id="nav_game" value="5"
									onclick="func_change_li(this)">����</li>
								<li class="category_li" id="nav_hobby" value="6"
									onclick="func_change_li(this)">���</li>
								<li class="category_li" id="nav_ani" value="7"
									onclick="func_change_li(this)">�ִ�</li>
								<li class="category_li" id="nav_ed" value="8"
									onclick="func_change_li(this)">����</li>
								<li class="category_li" id="nav_etc" value="9"
									onclick="func_change_li(this)">��Ÿ</li>
							</ul>
							<input type="text" id="result_cate" name="result_cate" readonly>
						</div>
						<div>
							<div class="btns_save">
								<input id="btn_save" type="button" value="SAVE(����)"
									onclick="func_save()">
							</div>
						</div>
					</aside>
					<article id="contents">
						<div id="con_head">
							<div>
								<input id="edit_subject" name="edit_subject" type="text"
									placeholder="������ �Է����ּ���.">
							</div>
							<div class="file_box">
								<!-- label for="ex_file">���ε�</label-->
								<input id="edit_file" name="edit_file" type="file"
									accept="image/gif, image/jpeg, image/jpg, image/png">
							</div>
						</div>
						<div id="con_body">
							<div class="Line">
								<hr>
							</div>
							<!-- �Է� ó���� �� \n�� �ִٸ� <br>�� ó���ؾ߰ڴ�. -->
							<div id="content_view">
								<textarea id="edit_content" name="edit_content" rows="" cols=""></textarea>
							</div>
						</div>

						<div class="btns_save">
							<input id="btn_save" type="button" value="SAVE(����)"
								onclick="func_save()">
						</div>
					</article>
				</section>
			</main>
		</form>
		<hr>
		<!-- Ǫ�� -->
		<footer>
			<p>Mbtic(MBTI Community)�� �������� ���۱ǹ��� ��ȣ�� �����Ƿ�, ���� ����, ����, ���� ����
				���մϴ�.</p>
			<h5>Copyright�� MBTI Community. All rights reserved.</h5>
		</footer>
	</div>
	<script type="text/javascript">
		function logo_main() {
			document.getElementById("mainpage").submit();
		}
		function func_search() {
			//�Է��� �������� �˻� �������� �̵�.
			document.getElementById("searchpage").submit();
		}
		function func_save() {
			/*
			result_cate
			edit_subject
			edit_file
			edit_content
			*/
			//����, ���� �ּ� ����, ī�װ� ���� Ȯ��
			//textarea�� \n�� <br>�� ����
			//����, �ؽ�Ʈ, ī�װ�, ����(����) ������ DB�� ����.
			
			document.getElementById("content_save").submit();
		}
		function func_change_li(_this) {
			/*
				class�� ��Ÿ�� ����
				class�� �ٸ� Ŭ������ �����Ͽ� �����ϴ� ����� ���� �� id�� class �����ϵ��� ����
				document.get ElementsByClassName("cate_active").className = "category_li";
				�̷� ��ó�� cate_active�� category_li�� �ٲپ���ϴµ�
				Ŭ������ �����ϸ� �ȵǴ� �� ����.
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

			/*���� ���õ� li����� id*/
			var id_check = $(_this).attr("id");
			//alert(id_check);
			document.getElementById(id_check).className = "cate_active";
			//alert(id_check);
			//IT ������ ���� ���� ���� ��� �ִ� ����
			//1 2 3 4 5 6 7 8 9
			document.getElementById("result_cate").value = document
					.getElementById(id_check).value;
		}
	</script>
</body>
</html>