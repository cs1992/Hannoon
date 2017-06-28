var selected;


var checkFirst = true;
var lastKeyword = "";
var loopSendKeyWord = false;
var firstKey = "";

function search(){
	document.searchForm.action = root + "/search";
	document.searchForm.submit();
}

function selectSearchType(type, el, keyword) {
	selected = type;
	var past = document.getElementsByClassName("button special small")[0];
	if (past != el) {
		past.className = "button small";
		//isSelected[type] = true;
		//#f56a6a
		//el.style.backgroundColor = "#f56a6a";
		el.className = "button special small";
		//location.reload();
		
		document.searchForm.search_name.value = type;
		document.searchForm.keyword.value = keyword;
		document.searchForm.action = root + "/search";
		document.searchForm.submit();
		
	}
}

function select(){
	var past = document.getElementsByClassName("button special small")[0];
	past.className = "button small";
	selected.className = "button special small";
}

function selectMoreSearchType(type, keyword) {
	selected = type;
		//alert("더보기");
		//isSelected[type] = true;
		//#f56a6a
		//el.style.backgroundColor = "#f56a6a";
		//location.reload();
		
		document.searchForm.search_name.value = type;
		document.searchForm.keyword.value = keyword;
		document.searchForm.action = root + "/search";
		document.searchForm.submit();
		
	
}

function getKeyword(){
	console.log("keyword : " + document.getElementById(keywordName).value);
	if(document.getElementById(keywordName).value ==""){
		checkFirst = true;
	}
	
	if(checkFirst == true){
		firstKey = "first";
		loopSendKeyWord = true;
		window.setTimeout("sendKeyword()", 50);
	} else {
		firstKey = "";
	}
	checkFirst = false;
}

function sendKeyword(){
	if(loopSendKeyword = false){
		return;
		
	}
	var keyword = document.getElementById(keywordName).value;
	
	if(keyword ==""){
		checkFirst = true;
		lastKeyword = "";
		hide("searchKeyword");
	} else if(keyword != lastKeyword){
		lastKeyword = keyword;
		
		if(lastKeyword != ""){
			var url = root + "/keywordfind";
			var param = "first=" + firstKey + "&keyword=" + encodeURIComponent(lastKeyword);
			sendRequest(url, param, displayResult, "GET");
		}
	}
	
	window.setTimeout("sendKeyword();", 50)
}



function displayResult(){
	if(httpRequest.readyState == 4) {
		if(httpRequest.status == 200) {
			var txt = httpRequest.responseText;
			//alert(txt);
			var result = txt.split("|");
			var count = parseInt(result[0]);
			
			if(count != 0){
				var list = result[1].split(",");
				var viewStr = "";
				var len = list.length;
				
				for(var i = 0; i < len; i++){
					viewStr += "<a href=\"javascript:selectKeyword('" + list[i] + "');\">";
					viewStr += list[i].replace(lastKeyword, "<font color='#ff0000'>" + lastKeyword + "</font>") + "</a><br>";
				}
				
				var view = document.getElementById("searchList");
				view.innerHTML = viewStr;
				show("searchKeyword");
				
			} else {
				hide("searchKeyword");
			}
			
		} else {
			alert("문제발생 : " + httpRequest.status);
		}
	}
}


function show(eid){
	console.log("show : " + eid);
	var el = document.getElementById(eid);
	if(el != null){
		el.style.display = "";
	}
}

function hide(eid){
	var el = document.getElementById(eid);
	if(el.style.display == ""){
		console.log("hide : " + eid);
		if(el != null){
			el.style.display = "none";
		}
	}
	
}