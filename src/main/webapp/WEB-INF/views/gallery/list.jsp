<%@page import="org.sp.springapp.util.Pager"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Pager pager=(Pager)request.getAttribute("pager");
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
table {
	border-collapse: collapse;
	border-spacing: 0;
	width: 100%;
	border: 1px solid #ddd;
}

th, td {
	text-align: left;
	padding: 16px;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}
a{
	text-decoration: none;
}
</style>
<%@ include file="./inc/head_link.jsp" %>
<script type="text/javascript">
$(function(){
	$("button").click(function(){
		location.href="/gallery/registform";
	});
})
</script>
</head>
<body>

	<h2>공지게시판</h2>
	<p>공지게시판에 오신 걸 환영합니다</p>

	<table>
		<tr>
			<th>No</th>
			<th>이미지</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>조회수</th>
		</tr>
		<%for(int i=1; i<=pager.getPageSize();i++){ %>
		<tr>
			<td>Jill</td>
			<td>Jill</td>
			<td>Jill</td>
			<td>Smith</td>
			<td>Smith</td>
			<td>50</td>
		</tr>
		<%} %>
		<tr>
			<td colspan="6">
				<%if(pager.getFirstPage()-1 <1){ %>
					<a href="javascript:alert('이전 페이지가 없습니다');">◀</a>
				<%}else{ %>
					<a href="/gallery/list?currentPage=<%=pager.getFirstPage()-1%>">◀</a>
				<%} %>
				<%for(int i=pager.getFirstPage(); i<=pager.getLastPage();i++){ %>
				<%if(i>pager.getTotalPage()) break; %>
					<a href="/gallery/list?currentPage=<%=i%>">[<%=i %>]</a>
				<%} %>
				<a href="/gallery/list?currentPage=<%=pager.getLastPage()+1%>">▶</a>
			</td>
		</tr>
		<tr>
			<td colspan="6">
				<button>글쓰기</button>
			</td>
		</tr>
	</table>

</body>
</html>
