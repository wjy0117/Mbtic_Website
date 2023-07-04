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
							<input id="search_text" name="search_text" type="text"> <input
								id="btn_search" type="button" value="�˻�" onclick="func_search()">
						</div>
					</div>
				</form>
			</div>
		</header>
		<!-- �׺� -->
		<form method="post" id="search_subject" action="searchController">
			<nav>
				<div>
					<div id="nav_ul">
						<!-- 
								IT ������ ���� ���� ���� ��� �ִ� ����
							 -->
						<ul class="category_ul">
							<li class="Category_li" id="nav_it" value="1"
								onclick="func_change_li(this)">IT</li>
							<li class="Category_li" id="nav_sport" value="2"
								onclick="func_change_li(this)">������</li>
							<li class="Category_li" id="nav_music" value="3"
								onclick="func_change_li(this)">����</li>
							<li class="Category_li" id="nav_food" value="4"
								onclick="func_change_li(this)">����</li>
							<li class="Category_li" id="nav_game" value="5"
								onclick="func_change_li(this)">����</li>
							<li class="Category_li" id="nav_hobby" value="6"
								onclick="func_change_li(this)">���</li>
							<li class="Category_li" id="nav_ani" value="7"
								onclick="func_change_li(this)">�ִ�</li>
							<li class="Category_li" id="nav_ed" value="8"
								onclick="func_change_li(this)">����</li>
							<li class="Category_li" id="nav_etc" value="9"
								onclick="func_change_li(this)">��Ÿ</li>
						</ul>
					</div>
					<div id="nav_stat">
						<span> ���� �ۼ��� <i id="stat_sub">��</i>�� <i id="stat">100,000</i>��
							�ֽ��ϴ�.
						</span>
						<!-- 
						<span>
							���� �ۼ��� <i id="stat_sub">���</i>�� <i id="stat">100,000</i>�� �ֽ��ϴ�.
						</span>
						-->
					</div>
				</div>
			</nav>
		</form>
		<hr>
		<!-- 
			���� ���Ǵ� ������ ���� �ʺ�� ����
			document.body.offsetWidth
			document.body.offsetHeight 
			 -->
		<!-- ���κ� -->
		<form method="post" id="main_controller" action="mainController">
			<main>
				<!-- ���̵� 
				800 �ʺ� ���ϸ� ���̵�� �Ⱥ��̰� ó��
				section�� width: 95%�� ����-->
				<aside>
					<div id="profile">
						<table>
							<tbody>
								<tr>
									<td>�г���</td>
									<td rowspan="2" align="right">
										<img id="profile_img"src="mbtic_logo_trans.png">
									</td>
								</tr>
								<tr>
									<td>�ۼ���: <a href="">5</a>��
									</td>
								</tr>
								<tr>
									<td>���: <a href="">5</a>��
									</td>
									<td align="right">MBTI</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div id="adver">
						<p>������ġ</p>
					</div>
				</aside>
				<!-- ���� -->
				<section>
					<article id="hot_content">
						<div class="Hotbox" onclick="viewbox(this)">
							<img src="mbtic_logo_trans.png"><br>
							<div class="Box_text">
								<div class="Box_view">
									<span class="Hot_view">��ȸ��1</span>
								</div>
								<div class="Box_sub">
									<span>�α��1</span>
								</div>
							</div>
						</div>
						<div class="Hotbox" onclick="viewbox(this)">
							<img src="mbtic_logo_trans.png"><br>
							<div class="Box_text">
								<div class="Box_view">
									<span class="Hot_view">��ȸ��1</span>
								</div>
								<div class="Box_sub">
									<span>�α��1</span>
								</div>
							</div>
						</div>
						<div class="Hotbox" onclick="viewbox(this)">
							<img src="mbtic_logo_trans.png"><br>
							<div class="Box_text">
								<div class="Box_view">
									<span class="Hot_view">��ȸ��1</span>
								</div>
								<div class="Box_sub">
									<span>�α��1</span>
								</div>
							</div>
						</div>
					</article>
					<div id="contents">
						<div id="con_new">
							<div class="Line">
								<hr>
							</div>
							<span class="Con_span">�Խ��� 1 (�ֽż�)</span><br>
							<!-- �̹��, �׸��ִٴ� ������ ǥ�� -->
							<div id="content_list">
								<table class="Newboxes" onclick="viewbox(this)">
									<tbody>
										<tr>
											<td rowspan="2">
												<img id="con_img" src="mbtic_logo_trans.png">
											</td>
											<td>
												<div class="Conboard">
													[<span>�Խ��� ��</span>]
												</div>
											</td>
											<td>
												<div class="Conname">
													<span>�г���</span>
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
													<span>ù ��° ������ �̸� ��</span>
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
													[<span>�Խ��� ��</span>]
												</div>
											</td>
											<td>
												<div class="Conname">
													<span>�г���</span>
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
													<span>ù ��° ������ �̸� ��</span>
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
							<span class="Con_span">> ��õ��</span><br>
							<div class="Recommendbox" onclick="viewbox(this)">
								<img src="mbtic_logo_trans.png">
								<div>
									<span>������ 1</span>
								</div>
							</div>
							<div class="Recommendbox" onclick="viewbox(this)">
								<img src="mbtic_logo_trans.png">
								<div>
									<span>������ 1</span>
								</div>
							</div>
							<div class="Recommendbox" onclick="viewbox(this)">
								<img src="mbtic_logo_trans.png">
								<div>
									<span>������ 1</span>
								</div>
							</div>
						</div>
					</div>
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
			var v = document.getElementById("search_text").value;
			if (v !== null) {
				document.getElementById("searchpage").submit();
			}
		}
		function func_change_li(_this) {

			var id_check = $(_this).attr("id");
			/*
				class�� ��Ÿ�� ����
				class�� �ٸ� Ŭ������ �����Ͽ� �����ϴ� ����� ���� �� id�� class �����ϵ��� ����
				document.get ElementsByClassName("Cate_active").className = "Category_li";
				�̷� ��ó�� Cate_active�� category_li�� �ٲپ���ϴµ�
				Ŭ������ �����ϸ� �ȵǴ� �� ����.
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

			/*���� ���õ� li����� id*/

			document.getElementById(id_check).className = "Cate_active";
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
	</script>
</body>
</html>