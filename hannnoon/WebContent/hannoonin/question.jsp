<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="/common/header.jsp"%>

<!-- 우리가 만들부분 시작!! -->

<!-- UI작업할때 전체적인 틀은 모두 div태그로 만들어주기 -->

<div class="row">

	<!-- 한개행 추가 전체크기 12 -->
		<!-- 우리가 만들 부분 시작 -->
		<div class="1u 12u$(small)">
			<img src="<%=root%>/template/images/gap.png">
		</div>
		
		<div class="10u 12u$(small)">
			<script type="text/javascript"
				src="<%=root%>/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>

			<h3>질문하기</h3>
			<div>
				<input type="text" name="subject" id="subject" value="제목을 입력해주세요.">
				<form action="" method="post">
					<textarea name="ir1" id="ir1" rows="10" cols="100"
						style="width: 100%; height: 420px; display: inline-block;"></textarea>
				</form>
				<script type="text/javascript">
					var oEditors = [];
					var sLang = "ko_KR"; // 언어 (ko_KR/ en_US/ ja_JP/ zh_CN/ zh_TW), default = ko_KR
				
					// 추가 글꼴 목록
					//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];
				
					nhn.husky.EZCreator.createInIFrame({
						oAppRef : oEditors,
						elPlaceHolder : "ir1",
						sSkinURI : "<%=root%>/se2/SmartEditor2Skin.html",
						htParams : {
							bUseToolbar : true, // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
							bUseVerticalResizer : true, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
							bUseModeChanger : false, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
							//bSkipXssFilter : true,		// client-side xss filter 무시 여부 (true:사용하지 않음 / 그외:사용)
							//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
							fOnBeforeUnload : function() {
								//alert("완료!");
							},
							I18N_LOCALE : sLang
						}, //boolean
						fOnAppLoad : function() {
							//예제 코드
							//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
						},
						fCreator : "createSEditor2"
					});
				
					function pasteHTML() {
						var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
						oEditors.getById["ir1"].exec("PASTE_HTML", [ sHTML ]);
					}
				
					function showHTML() {
						var sHTML = oEditors.getById["ir1"].getIR();
						alert(sHTML);
					}
				
					function submitContents(elClickedObj) {
						oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터의 내용이 textarea에 적용됩니다.
				
						// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.
				
						try {
							elClickedObj.form.submit();
						} catch (e) {}
					}
				
					function setDefaultFont() {
						var sDefaultFont = '궁서';
						var nFontSize = 24;
						oEditors.getById["ir1"].setDefaultFont(sDefaultFont, nFontSize);
					}
				</script>
				<center>
				<ul class="actions small" style="align: center;">
					<li><a href="#" class="button special small">질문등록</a></li>
					<li><a href="#" class="button special small">질문취소</a></li>
				</ul>
				</center>
			</div>


		<div class="1u 12u$(small)">
		</div>	
</div>

	<!-- 우리가 만들부분 끝!! -->
	<%@ include file="/common/menubar_2.jsp"%>