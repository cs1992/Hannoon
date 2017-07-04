<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<style>
#modal_rblacklist .modal-dialog{
	width: 30%;
}
.rblcloseButton{
	width: 50px;
	height: 50px;
	font-size: 35px;
}
</style>

 	<div class="modal fade" id="modal_urbl" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	     <div class="modal-header">
			<button type="button" class="close rblcloseButton" data-dismiss="modal" aria-labe="Close"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			<h2 class="modal-title" id="myModalLabel">BlackList</h2>
	     </div>
	     <div class="modal-body">
<!-- 폼 시작 -->

	당신은 blacklist 입니다.<br>
	일주일후 서비스 이용이 가능합니다.<br>
	감사합니다.<br>
	
	<!-- 폼 끝 -->
      </div>
    </div>
  </div>
</div>