<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="/common/header.jsp"%>

<!-- �츮�� ����κ� ����!! -->

<!-- UI�۾��Ҷ� ��ü���� Ʋ�� ��� div�±׷� ������ֱ� -->

<div class="row">

	<!-- �Ѱ��� �߰� ��üũ�� 12 -->
		<!-- �츮�� ���� �κ� ���� -->
		<div class="1u 12u$(small)">
			<img src="<%=root%>/template/images/gap.png">
		</div>
		
		<div class="10u 12u$(small)">
			<script type="text/javascript"
				src="<%=root%>/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>

			<h3>�����ϱ�</h3>
			<div>
				<input type="text" name="subject" id="subject" value="������ �Է����ּ���.">
				<form action="" method="post">
					<textarea name="ir1" id="ir1" rows="10" cols="100"
						style="width: 100%; height: 420px; display: inline-block;"></textarea>
				</form>
				<script type="text/javascript">
					var oEditors = [];
					var sLang = "ko_KR"; // ��� (ko_KR/ en_US/ ja_JP/ zh_CN/ zh_TW), default = ko_KR
				
					// �߰� �۲� ���
					//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];
				
					nhn.husky.EZCreator.createInIFrame({
						oAppRef : oEditors,
						elPlaceHolder : "ir1",
						sSkinURI : "<%=root%>/se2/SmartEditor2Skin.html",
						htParams : {
							bUseToolbar : true, // ���� ��� ���� (true:���/ false:������� ����)
							bUseVerticalResizer : true, // �Է�â ũ�� ������ ��� ���� (true:���/ false:������� ����)
							bUseModeChanger : false, // ��� ��(Editor | HTML | TEXT) ��� ���� (true:���/ false:������� ����)
							//bSkipXssFilter : true,		// client-side xss filter ���� ���� (true:������� ���� / �׿�:���)
							//aAdditionalFontList : aAdditionalFontSet,		// �߰� �۲� ���
							fOnBeforeUnload : function() {
								//alert("�Ϸ�!");
							},
							I18N_LOCALE : sLang
						}, //boolean
						fOnAppLoad : function() {
							//���� �ڵ�
							//oEditors.getById["ir1"].exec("PASTE_HTML", ["�ε��� �Ϸ�� �Ŀ� ������ ���ԵǴ� text�Դϴ�."]);
						},
						fCreator : "createSEditor2"
					});
				
					function pasteHTML() {
						var sHTML = "<span style='color:#FF0000;'>�̹����� ���� ������� �����մϴ�.<\/span>";
						oEditors.getById["ir1"].exec("PASTE_HTML", [ sHTML ]);
					}
				
					function showHTML() {
						var sHTML = oEditors.getById["ir1"].getIR();
						alert(sHTML);
					}
				
					function submitContents(elClickedObj) {
						oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []); // �������� ������ textarea�� ����˴ϴ�.
				
						// �������� ���뿡 ���� �� ������ �̰����� document.getElementById("ir1").value�� �̿��ؼ� ó���ϸ� �˴ϴ�.
				
						try {
							elClickedObj.form.submit();
						} catch (e) {}
					}
				
					function setDefaultFont() {
						var sDefaultFont = '�ü�';
						var nFontSize = 24;
						oEditors.getById["ir1"].setDefaultFont(sDefaultFont, nFontSize);
					}
				</script>
				<center>
				<ul class="actions small" style="align: center;">
					<li><a href="#" class="button special small">�������</a></li>
					<li><a href="#" class="button special small">�������</a></li>
				</ul>
				</center>
			</div>


		<div class="1u 12u$(small)">
		</div>	
</div>

	<!-- �츮�� ����κ� ��!! -->
	<%@ include file="/common/menubar_2.jsp"%>