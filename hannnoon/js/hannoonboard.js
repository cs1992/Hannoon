function moveWrite() {
	document.commonForm.act.value = "write";
	document.commonForm.gcode.value = gcode;
	document.commonForm.pg.value = "1";
	document.commonForm.key.value = "";
	document.commonForm.word.value = "";
	
	document.commonForm.action = pageRoot + control;
	document.commonForm.submit();
}

function firstArticle() {
	document.commonForm.act.value = "list";
	document.commonForm.gcode.value = gcode;
	document.commonForm.pg.value = "1";
	document.commonForm.key.value = "";
	document.commonForm.word.value = "";
	
	document.commonForm.action = pageRroot + control;
	document.commonForm.submit();
}

function listArticle(mpg) {
	document.commonForm.act.value = "list";
	document.commonForm.gcode.value = gcode;
	document.commonForm.pg.value = mpg;
	document.commonForm.key.value = key;
	document.commonForm.word.value = word;
	
	document.commonForm.action = pageRoot + control;
	document.commonForm.submit();
}

function viewArticle(gseq) {
	document.commonForm.act.value = "view";
	document.commonForm.gcode.value = gcode;
	document.commonForm.pg.value = pg;
	document.commonForm.key.value = key;
	document.commonForm.word.value = word;
	document.commonForm.gseq.value = gseq;
	
	document.commonForm.action = pageRoot + control;
	document.commonForm.submit();
}
