<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>

<script>
	var result = '${msg}';
	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
</script>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left colum -->
		<div class="col-md-12">
			<!-- general form elements -->

			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">List Page</h3>
				</div>

				<table class="table table-bordered">
					<tr>
						<th style="width: 60px">번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th style="width: 80px">조회수</th>
					</tr>

					<c:forEach items="${list}" var="boardVO">
						<tr>
							<td>${boardVO.bno}</td>
							<td><a href='/board/read?bno=${boardVO.bno}'>${boardVO.title}</a></td>
							<td>${boardVO.writer}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
									value="${boardVO.regdate}" /></td>
							<td><span class="badge bg-red">${boardVO.viewcnt }</span></td>
						</tr>
					</c:forEach>
				</table>

			</div>
		</div>
	</div>
</section>
<%@include file="../include/footer.jsp"%>

