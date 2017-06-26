var httpRequest;

function getXMLHttpRequest() {
   if(window.ActiveXObject) {
      try {
         return new ActiveXObject("Msxml2.XMLHTTP");
      } catch (e) {
         try {
            return new ActiveXObject("Microsoft.XMLHTTP");
         } catch (e2) {
            alert("지원하지 않는 브라우저입니다.");
            return null;
         }
      }
   } else if(window.XMLHttpRequest)    {
      return new XMLHttpRequest();
   } else {
      alert("지원하지 않는 브라우저입니다.");
      return null;
   }
}

function sendRequest(url, param, callback, method) {
	   httpRequest = getXMLHttpRequest(); //통신할수있는 객체 얻어 내라
	   
	   var httpMethod = method ? method : "GET";
	   if(httpMethod != "GET" && httpMethod != "POST") {
		   httpMethod = "GET"; //default값이 무조건 get이 되게끔
	   }
	   
	   var httpParam = (param == null || param == "") ? null : param; //param이 널이거나 비어잇으면 널로, 아니면 param 그대로
	   var httpUrl = url;
	   if(httpMethod == "GET" && httpParam != null) {
		   httpUrl = httpUrl + "?" + httpParam;
	   }
	   
	   httpRequest.onreadystatechange=callback; //callback function
	   httpRequest.open(httpMethod,httpUrl,true);
	   httpRequest.send(httpMethod == "POST" ? httpParam : null);
}