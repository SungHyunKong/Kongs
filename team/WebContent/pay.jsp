<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	if(${name} == null){
		alert("로그인 후 이용하세요.");
		location.href="test.jsp";
	}else{
		
	}

</script>

</head>
<body>
<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>
			<%@include file="header.jsp"%>
			<%@include file="sidebar.jsp"%>
			<div class="main-content">
		<section class="section">
			<div class="section-header">
				<h1>전자결제</h1>
			</div>
			
		<div class="section-body">
					 <div class="card">
                  <div class="card-body">
                    <table class="table table-striped">
                      <thead>
                        <tr>
                          <th scope="col">결제제목</th>
                          <th scope="col">작성자</th>
                          <th scope="col">작성시간</th>
                        </tr>
                      </thead>
                   <tbody>

								<c:forEach var="vo" items="${list}">
									<tr>
										<td>${vo.worker_code}</td>

									</tr>
								</c:forEach>

							</tbody>
                    </table>
                  </div>
                </div>
					</div>
					<div class="section-body">
					
					</div>
					
			</section>
	</div>
			<%@include file="footer.jsp"%>
		</div>
	</div>

</body>
</html>