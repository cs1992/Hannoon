<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/common/header.jsp"%>    
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script type="text/javascript" src="<%=root %>/js/Example.Modal.js"></script>


<script type="text/javascript">

window.onload=function(){
	//alert("asd");
	//$('#myModal2').show();
	
}


$(document).ready(function(){
    
	//$("#myModal2").find('.data-backdrop').val('static');
	//$("#myModal2").find('.data-keyboard').val('false');
   $("#myModal2").modal({backdrop: 'static', keyboard: false});
   
});

function activeModal(){
	 $("#myModal2").modal({backdrop: 'static', keyboard: false});
}

</script>

<div class="container">

	

	
	<!-- 큰 모달 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-lg">
	    <div class="modal-content">
	    
	      <div class="modal-header">
		<%--<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button> --%>
		<div class="row">
		<div class="7u 12u$(small)"><h4 class="modal-title" id="myModalLabel">Hanoon 팁</h4></div>
		<div class="2u 12u$(small)"><center><a href="">로그인</a></center></div>
		<div class="2u 12u$(small)"><center><a href="">회원가입</a></center></div>
		</div>
	      </div>
	      <div class="row">
	       <div class="1u 12u$(small)"><center>#</center></div>
	      <div class="10u 12u$(small)">
	      <div class="modal-body">
	      ...공<br>
	      ...부<br>
	      ...하<br>
	      ...자<br>
	      ...<br>
	      ...검<br>
	      ...색<br>
	      ...해<br>
	      ...서<br>
	      ...<br>
	      ...<br>
	      </div>
	      </div>
	      
	      <div class="1u 12u$(small)"><center>#</center></div>
	      </div>
	     <%--<div class="modal-footer">
	      
	      
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button> 
		<button type="button" class="btn btn-primary">Save changes</button> 
	      </div>
	       --%> 
	    </div>
	  </div>
	</div>

</div>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGREtrRTljTlQ3OTg"></script><!-- ie10-viewport-bug-workaround.js -->
<script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script><!-- holder.js -->

<%@ include file="/common/menubar_2.jsp"%>