<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>
			<%--<%@include file="header.jsp"%> --%>
			<%--<%@include file="sidebar.jsp"%> --%>
			<div class="main-content">
				<section class="section">
					<div class="section-header">
						<h1>회원가입</h1>
					</div>

					<!--  코드작성하시오  이 페이지는 건들지 마시오 -->
					<div class="section-body">
						<div class="card">
							<div class="card-header"></div>
							<div class="card-body">
							<form action="memberJoinAction.me" method="post">
								<table class="table table-striped">
									<tr>
										<th>아이디</th>
										<td><input type="text" name="member_id"
											required="required" /></td>
									</tr>
									<tr>
										<th>비밀번호</th>
										<td><input type="password" name="member_pw"
											required="required" /></td>
									</tr>
									<tr>
										<th>이름</th>
										<td><input type="text" name="member_name"
											required="required" /></td>
									</tr>
									<tr>
										<th>생년월일</th>
										<td><input type="text" name="member_birth"
											required="required" /></td>
									</tr>
									<tr>
										<th>성별</th>
										<td><input type="radio" name="member_gender" value="남"
											checked="checked" />남자 <input type="radio"
											name="member_gender" value="여" />여자</td>
									</tr>
									<tr>
										<th>이메일 주소</th>
										<td><input type="text" name="member_email" maxlength="30" /></td>
									</tr>
									<tr>
										<td colspan="2" align="center"><input type="submit"
											value="회원가입" /> <input type="reset" value="다시 작성" /> <input
											type="button" value="로그인"
											onclick="location.href='memberLogin.me'" /></td>
									</tr>
								</table>
								</form>
							</div>
						</div>
					</div>
				</section>
			</div>
			<%@include file="footer.jsp"%>
		</div>
	</div>

</body>
</html>