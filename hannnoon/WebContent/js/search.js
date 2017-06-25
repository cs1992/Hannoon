function search(){
	document.searchForm.action = root + "/search";
	document.searchForm.submit();
}

function selectSearchType(type, el, keyword) {
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