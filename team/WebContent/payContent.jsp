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
	 <tr><td colspan='2' align='center'><h2>���ڰ��� ��������</h2></td></tr> 
	 <tr> 
	 <td align='center'>�ۼ���</td><td align='center'>${vo.pay_writer}</td></tr> 
	 <tr><td align='center'>��������</td><td align='center'>${vo.pay_title}</td></tr> 
	 <tr><td align='center'>��������</td><td align='center'>${vo.pay_content}</td></tr> 
	 <tr><td colspan='2' align='center'> 
	 <c:if test="${id eq vo.pay_writer}">
	 <input type='submit' value='�����ϱ�' class='btn btn-success'/> 
	 <input type='reset' value='���' class='btn btn-danger'/> 
	 <input type="button" value="����Ʈ" onclick="location.href='${ctp}/memberList.do'" class='btn btn-success'/> 
	 </c:if>
	 </tr> 
	 </table> 
</body>
</html>