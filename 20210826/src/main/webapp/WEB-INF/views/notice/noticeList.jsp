<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>
<script type="text/javascript">
	function CallNotice(str){
		frm.id.value = str;
		frm.submit();
	}
</script>
</head>
<body>
<div align = "center">
	<div><h1>공지사항 목록</h1></div>
	<div>
		<table border="1">
			<tr bgcolor = "#ccd9ff">
				<td width="100" align="center">순번</td>
				<td width="100" align="center">작성자</td>
				<td width="100" align="center">작성날짜</td>
				<td width="100" align="center">제목</td>
				<td width="100" align="center">조회수</td>
			</tr>
			<c:forEach var="notice" items="${notices }">  <!-- request객체가 가지고 있는 key값 -->
			<tr onclick = "CallNotice('${notice.id}')">
				<td align="center">${notice.id }</td>
				<td align="center">${notice.writer }</td>
				<td align="center">${notice.writeDate }</td>
				<td align="center">${notice.title }</td>
				<td align="center">${notice.hit }</td>
			</tr>
			</c:forEach>
		</table>	
	</div><br/>
	<div>
		<button type="button" onclick="location.href='main.do'">홈가기</button>&nbsp;&nbsp;&nbsp;
		<button type="button" onclick="location.href='noticeInsertForm.do'">글쓰기</button>
	</div>
	<div>
		<form id="frm" name="frm" action="noticeSelect.do" method="post">
			<input type="hidden" id="id" name="id">
		</form>
	</div>
</div>
</body>
</html>