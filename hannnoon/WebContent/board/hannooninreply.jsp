<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%--<%@ include file="/common/public.jsp" %> --%>
<%@ include file="/common/header.jsp"%>
<script type="text/javascript" src="<%=root%>/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<!--  �츮�� �ٹ� �� ���� �����г� -->

<center>

	<h3>����</h3>
	<div class="box" width="900" height="500">
		<p></p>
	</div>

	<h3>�亯</h3>
	<div class="box" width="900" height="500">
		<p>
		<div>
		<form action="sample/viewer/index.php" method="post">
	<textarea name="ir1" id="ir1" rows="10" cols="100" style="width:766px; height:412px; display:none; align:center;"></textarea>
	<!--textarea name="ir1" id="ir1" rows="10" cols="100" style="width:100%; height:412px; min-width:610px; display:none;"></textarea-->
	<p>
		<input type="" onclick="pasteHTML();" value="������ ���� �ֱ�" />
		<input type="" onclick="showHTML();" value="���� ���� ��������" />
		<input type="" onclick="submitContents(this);" value="������ ���� ����" />
		<input type="" onclick="setDefaultFont();"z value="�⺻ ��Ʈ �����ϱ� (�ü�_24)" />
	</p>
</form>
<div align="center">
		<script type="text/javascript">
var oEditors = [];

var sLang = "ko_KR";	// ��� (ko_KR/ en_US/ ja_JP/ zh_CN/ zh_TW), default = ko_KR

// �߰� �۲� ���
//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];

nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "ir1",
	sSkinURI: "<%=root%>/se2/SmartEditor2Skin.html",	
	htParams : {
		bUseToolbar : true,				// ���� ��� ���� (true:���/ false:������� ����)
		bUseVerticalResizer : true,		// �Է�â ũ�� ������ ��� ���� (true:���/ false:������� ����)
		bUseModeChanger : false,			// ��� ��(Editor | HTML | TEXT) ��� ���� (true:���/ false:������� ����)
		//bSkipXssFilter : true,		// client-side xss filter ���� ���� (true:������� ���� / �׿�:���)
		//aAdditionalFontList : aAdditionalFontSet,		// �߰� �۲� ���
		fOnBeforeUnload : function(){
			//alert("�Ϸ�!");
		},
		I18N_LOCALE : sLang
	}, //boolean
	fOnAppLoad : function(){
		//���� �ڵ�
		//oEditors.getById["ir1"].exec("PASTE_HTML", ["�ε��� �Ϸ�� �Ŀ� ������ ���ԵǴ� text�Դϴ�."]);
	},
	fCreator: "createSEditor2"
});

function pasteHTML() {
	var sHTML = "<span style='color:#FF0000;'>�̹����� ���� ������� �����մϴ�.<\/span>";
	oEditors.getById["ir1"].exec("PASTE_HTML", [sHTML]);
}

function showHTML() {
	var sHTML = oEditors.getById["ir1"].getIR();
	alert(sHTML);
}
	
function submitContents(elClickedObj) {
	oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);	// �������� ������ textarea�� ����˴ϴ�.
	
	// �������� ���뿡 ���� �� ������ �̰����� document.getElementById("ir1").value�� �̿��ؼ� ó���ϸ� �˴ϴ�.
	
	try {
		elClickedObj.form.submit();
	} catch(e) {}
}

function setDefaultFont() {
	var sDefaultFont = '�ü�';
	var nFontSize = 24;
	oEditors.getById["ir1"].setDefaultFont(sDefaultFont, nFontSize);
}
</script>
			<ul class="actions small">
				<li><a href="#" class="button special small">�亯���</a></li>
				<li><a href="#" class="button special small">�亯���</a></li>
			</ul>
		</div>
		</p>
	</div>
	</div>
</center>

<!--  �����г� �� -->
</div>

<%@ include file="/common/menubar_2.jsp"%>

</div>

</body>
</html>