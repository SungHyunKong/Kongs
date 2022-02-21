<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table class='table table-hover' style='width:600px' align='center' border='1'> 
	 <tr><td colspan='2' align='center'><h2>전자결제 세부정보</h2></td></tr> 
	 <tr> 
	 <td align='center'>작성자</td><td align='center'>${vo.pay_writer}</td></tr> 
	 <tr><td align='center'>결제제목</td><td align='center'>${vo.pay_title}</td></tr> 
	 <tr><td align='center'>결제내용</td><td align='center'>${vo.pay_content}</td></tr> 
	 <tr><td colspan='2' align='center'> 
	 <c:if test="${id eq vo.pay_writer}">
	 <input type='submit' value='수정하기' class='btn btn-success'/> 
	 <input type='reset' value='취소' class='btn btn-danger'/> 
	 <input type="button" value="리스트" onclick="location.href='${ctp}/memberList.do'" class='btn btn-success'/> 
	 </c:if>
	 </tr> 
	 </table> 
</body>
</html>