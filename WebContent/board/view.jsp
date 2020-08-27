<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>

<!-- CreateRreadUpdateDelete -->

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>공지 게시판</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

<style>
.list-box {
	
}

body {
	margin-top: 100px;
}
</style>

</head>

<body>

	<div class="container">

		<div class="list-box">

			<table class="table table-hover">

				<thead class="thead-dark">

					<tr>

						<th>번호</th>

						<th>제목</th>

						<th>글쓴이</th>

						<th>작성일시</th>

					</tr>

				</thead>

				<tbody>

					<%
						SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
						String name[] = {"홍길동", "최민수", "김영수", "김아름", "박문수"};
						Date now = new Date();
						String today = format.format(now);
						String randomTitle = "안녕하세요";

						for (int i = 0; i < 9; i++) {
							Random random = new Random();
							int randomInt = random.nextInt(4);
							String randomName = name[randomInt];

							
						out.println("<tr><td>" + (i + 1) + "</td>" 

									+ "<td>" + randomTitle + "</td>"
									+ "<td>" + randomName + "</td>"

									+ "<td>" + today);
						
					}

					%>

					<tr>

						<td>10</td>

						<td>안녕하세요</td>

						<td>정필성</td>

						<td>2020-08-25 14:39:51</td>

					</tr>

				</tbody>

			</table>

		</div>

		<a href="../auth/login.jsp">로그인 화면으로 돌아가기</a>

	</div>







	<!-- Optional JavaScript -->

	<!-- jQuery first, then Popper.js, then Bootstrap JS -->

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
		crossorigin="anonymous"></script>

</body>

</html>