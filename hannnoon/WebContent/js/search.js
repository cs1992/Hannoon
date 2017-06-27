var selected;

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