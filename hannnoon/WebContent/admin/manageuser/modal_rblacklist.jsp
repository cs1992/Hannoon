<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script type="text/javascript">
function blacklist(){
	var bid = document.getElementById("modalid").childNodes[0].nodeValue;
	location.href = "<%=root%>/admin?act=blacklist&bid="+bid;
}
</script>

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

 	<div class="modal fade" id="modal_rblacklist" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	     <div class="modal-header">
			<button type="button" class="close rblcloseButton" data-dismiss="modal" aria-labe="Close"><span aria-hidden="true">��</span><span class="sr-only">Close</span></button>
			<h2 class="modal-title" id="myModalLabel">BlackList</h2>
	     </div>
	     <div class="modal-body">
<!-- �� ���� -->

	���� blacklist ó���� �Ͻðڽ��ϱ�?<br><br>
	
	<div class="row">
		<div class="2u 12u$(small)">&nbsp;</div>
		<div class="8u 12u$(small)">
			<input type="button" class="special" value="��" onclick="javascript:blacklist();">
			<input type="reset" value="�ƴϿ�" onclick="modal_rblacklist_close()">
		</div>
	</div>
	<!-- �� �� -->
      </div>
    </div>
  </div>
</div>