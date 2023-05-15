<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="site-section">
	<div class=container>
		<h3>내가 쓴 리뷰</h3>
		<table class="table">
			<thead>
				<tr>
					<th scope="col" class="text-primary">No</th>
					<th scope="col" class="text-primary">제목</th>
					<th scope="col" class="text-primary">구매상품</th>
					<th scope="col" class="text-primary">작성자</th>
					<th scope="col" class="text-primary">DATE</th>
				</tr>
			</thead>
			<c:forEach var="i" items="${myReview}">
				<tr>
					<td><c:out value="${i.reviewId}"></c:out></td>
					<td><a href="#">${i.reviewTitle}</a></td>
					<td><c:out value="${prodInfo.pdtId}"><a href="#">${prodInfo.pdtNm}</a></c:out></td>
					<td>${userinfo.userNm}</td>
					<td>${i.reviewDate}</td>
					<td><button type="button" onclick="location.href='delReview.do?reviewId=${i.reviewId}'" class="btn btn-danger btn-sm4">삭제</button></td>
				</tr>
			</c:forEach>
		</table>

		<div class="center">
			<div class="pagination justify-content-center">
				<c:if test="${pageInfo.prev}">
					<a class="page-link" href="myReview.do?page=${pageInfo.startPage-1}">Previous</a>
				</c:if>
				<c:forEach var="i" begin="${pageInfo.startPage }"
					end="${pageInfo.endPage}">
					<a class="page-link"
						class="${i == pageInfo.pageNum ? 'active' : ''}"
						href="myReview.do?page=${i}">${i} </a>
				</c:forEach>
				<c:if test="${pageInfo.next}">
					<a class="page-link" href="myReview.do?page=${pageInfo.endPage+1}">Next</a>
				</c:if>
			</div>
		</div>
	</div>
</div>