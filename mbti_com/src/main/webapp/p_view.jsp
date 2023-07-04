<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>MBTIC_View</title>

<link rel="stylesheet" href="style/main_head.css">
<link rel="stylesheet" href="style/sharestyle.css">
<link rel="stylesheet" href="style/clickside.css">
<link rel="stylesheet" href="style/new_table.css">
<link rel="stylesheet" href="style/main_footer.css">
<style type="text/css">
/*p_main����� ���� #All*/
#All {
	max-width: 1200px;
	min-width: 800px;
	padding: 10px 50px 10px 50px;
	margin: 0 auto;
}

/*���� (���̵�, ����)*/
#content_view {
	padding: 20px;
}
/*����*/
section {
	display: table;
	background-color: #999999;
	width: 100%;
	height: auto;
	min-height: 700px;
	padding: 10px;
}
/*contents*/
#contents {
	display: table-cell;
	background-color: #9ddeff;
	width: 80%;
	float: left;
	margin: 10px 10px 0px 10px;
}

#con_head {
	width: 95%;
	display: table;
	line-height: 30px;
	padding: 10px;
}

#con_head table {
	width: 100%;
}

#con_head div {
	display: table-cell;
	align: right;
}

#con_subject {
	font-size: 30px;
	max-width: 1000px;
}

con_foot {
	display: table-cell;
	width: 100%;
	background-color: #9ddeff;
	padding: 10px;
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
		<main>
			<!-- ���� -->
			<section>
				<div id="section_aside">
					<aside>
						<div id="nav_ul">
							<div>
								<span>Category</span>
							</div>
							<!-- 
								IT ������ ���� ���� ���� ��� �ִ� ����
							 -->
							<ul>
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
							<input type="text">
						</div>
					</aside>
				</div>
				<article id="contents">
					<div id="con_head">
						<table>
							<tbody>
								<tr>
									<td rowspan="2"><span id="con_subject">�츮 û�ῡ���� ����
											�� </span></td>
									<td align="right"><span id="con_date">2023.07.02
											22:30</span></td>
								</tr>
								<tr>
									<td align="right"><span id="con_creator">�ۼ���</span></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div id="con_body">
						<div class="line">
							<hr>
						</div>
						<!-- �Է� ó���� �� \n�� �ִٸ� <br>�� ó���ؾ߰ڴ�. -->
						<div id="content_view">
							����1<br> ����2<br> ����3<br>
						</div>
						<div>
							<button>
								��Ʈ������<img src="">
							</button>
						</div>
					</div>
					<div id="con_foot">
						<div class="Line">
							<hr>
						</div>
						<!--
						<table>
							<tbody>
								<tr>
									<td rowspan="2">
										<img src="mbtic_logo_trans.png">
									</td>
									<td align="left"><span>�ۼ���</span></td>
									<td align="right"><span>�ۼ���+�ð�</span></td>
								</tr>
								<tr>
									<td colspan="2" align="left">
										<p>��۳��� 122342342342423��23239</p>
									</td>
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
											<span>�ۼ���</span>
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
											<span>��۳��� 122342342342423��23239</span>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- ��õ �� ǥ���ϱ�-->
					<div id="con_recommend"></div>
				</article>
			</section>
		</main>
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
		function func_change_li(_this) {
			/*p_search�� ����*/
			var id_check = $(_this).attr("id");
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

			document.getElementById(id_check).className = "cate_active";
			//IT ������ ���� ���� ���� ��� �ִ� ����
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
		function func_move(_this) {
			//Ŭ���� �ش� �۹�ȣ input�� �Է�
			//�ش� input���� ��ȣ �����ͼ� ������ �̵�.
			document.getElementById("searchpage").submit();
		}
	</script>
</body>
</html>