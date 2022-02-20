<%
session.invalidate();//세션의 모든 속성 제거
response.sendRedirect("test.jsp");
%>