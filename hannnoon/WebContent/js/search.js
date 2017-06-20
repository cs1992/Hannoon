function search(){

	alert("search");
	document.searchForm.action = root + "/search";
	document.searchForm.submit();
	alert("search");
}