<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<div class="paging text-center">
	<ul class="pagination">
		<%-- 첫 페이지 버튼 --%>
		<%-- 첫 페이지가 아니면 버튼 노출 --%>
		<c:if test="${paging.curPage ne 1 }">
		<li>
			<a href="/mypage/myreview.do?pageNo=1">
				<span aria-hidden="true">&larr;</span>
				처음
			</a>
		</c:if>
		
		<%-- 이전 페이지 버튼 --%>
		<%-- 첫 페이지면 금지 표시 --%>
		<c:if test="${paging.curPage eq 1 }">
		<li class="disabled">
			<a href="myReviewpaging.jsp?pageNo=${paging.curPage }" aria-label="Previous">
				<span aria-hidden="true">&laquo;</span>
			</a>
		</li>
		</c:if>
		<c:if test="${paging.curPage ne 1 }">
		<li>
			<a href="/mypage/myreview.do?pageNo=${paging.curPage-1 }" aria-label="Previous">
				<span aria-hidden="true">&laquo;</span>
			</a>
		</li>
		</c:if>
		
		<%-- 페이징 번호 버튼 --%>
		<c:forEach begin="${paging.startPage }"
			end="${paging.endPage }"
			var="page">
			
			<%-- 페이지 번호가 현재페이지면 파랑색으로 보이기 --%>
			<c:if test="${paging.curPage eq page }">
			<li class="active">
			</c:if>
			<c:if test="${paging.curPage ne page }">
			</li>
			<li>
			</c:if>
			<a href="/mypage/myreview.do?pageNo=${page }">${page }</a>
			</li>
		</c:forEach>
		
		<%-- 다음 페이지 버튼 --%>
		<%-- 마지막 페이지면 금지 표시 --%>
		<c:if test="${paging.curPage eq paging.totalPage }">
		<li class="disabled">
			<a href="myReviewpaging.jsp?pageNo=${paging.curPage }" aria-label="Next">
				<span aria-hidden="true">&raquo;</span>
			</a>
		</li>
		</c:if>
		<c:if test="${paging.curPage ne paging.totalPage }">
		<li>
			<a href="/mypage/myreview.do?pageNo=${paging.curPage+1 }" aria-label="Next">
				<span aria-hidden="true">&raquo;</span>
			</a>
		</li>
		</c:if>
	</ul>
</div>