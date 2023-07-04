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

/*���� (���̵�, ����)*/
main {
	overflow: hidden;
	height: auto;
}

/*����*/
section {
	display: table;
	background-color: #999999;
	width: 100%;
	min-height: 700px;
	padding: 10px;
}

/*����*/
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
/*�˻��� ǥ��*/
#con_subject {
	display: table-cell;
	width: 70%;
	font-size: 40px;
	float: left;
}
/*�� �ۼ��ϱ�*/
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
							<input type="text" id="result_cate" name="result_cate" readonly>
						</div>
					</aside>
				</div>
				<div id="section_article">
					<article id="contents">
						<div id="con_new">
							<div id="con_head">

								<%
								String stext = "�˻���";
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

								/* ���� ���ܹ�
									Exception ex = new Exception();
									throw ex;
								*/
								}
								/*�α�*/
								} catch (Exception e) {
								%>
								<div>
									<span id="con_subject"> �˻��� </span>
								</div>
								<%
								}
								%>
								<form method="post" id="editpage" action="MoveEdit">
									<div>
										<input id="con_edit" type="button" value="�� �ۼ��ϱ�" onclick="func_edit()">
									</div>
								</form>
							</div>
							<div id="con_body">
								<%
								try {
									//�Խ��� �� ���
									//������ ����
								%>
								<!-- <table>
										<tbody>
											<tr class="boxes" id="newbox1" onclick="viewbox(this)">
												<td><img src="mbtic_logo_trans.png"> [<span>�Խ���
														��</span>] <span>ù ��° ������ �̸� ��</span> <span>�г���</span> <span>2023.07.04
														12:11</span></td>
											</tr>
											<tr class="boxes" onclick="viewbox(this)">
												<td><img src="mbtic_logo_trans.png"> [<span>�Խ���
														��</span>] <span>ù ��° ������ �̸� ��</span> <span>�г���</span> <span>2023.07.04
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
								<%
								} catch (Exception e) {
								%>
								<div style="display: none">
									<img alt="" src="">
									<div>
										<span>�˻� ����� �����ϴ�. �ٸ� �˻�� �̿��غ�����!</span>
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
		function func_edit() {
			document.getElementById("editpage").submit();
		}
	</script>
</body>
</html>