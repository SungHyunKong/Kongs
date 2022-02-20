<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="com.ts.model.TestMemberDAO"%>
<%@ page import="com.ts.model.BoardMemberDTO"%>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<%
	String id = request.getParameter("member_id");
	String pw = request.getParameter("member_pw");
	BoardMemberDTO dto = new BoardMemberDTO(id, pw);
	TestMemberDAO dao = new TestMemberDAO();
	BoardMemberDTO dto2 = dao.login(dto);
	
	if(dto2 != null){
		session.setAttribute("id", dto2.getMember_id());
		session.setAttribute("name", dto2.getMember_name());
%>
<script>
  alert("로그인성공");
  location.href="main.jsp";
</script>
  <%
	}else{
  %>
  <script>
  alert("로그인실패");
  location.href="test.jsp";
  </script>	
  <%
	}
  %>
