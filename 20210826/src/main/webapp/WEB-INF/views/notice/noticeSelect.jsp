<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세보기</title>
</head>
<body>
<div align = "center">
	<div><h1>공지사항 상세정보</h1></div>
	<div>
		<table border="1">
			<tr>
				<th width="100">작성자</th>
				<td width="200">${notice.writer }</td>
				<th width="100">작성 날짜</th>
				<td width="200">${notice.writeDate }</td>
				<th width="100">제목</th>
				<td width="200">${notice.title }</td>
				<th width="100">조회수</th>
				<td width="200">${notice.hit }</td>
			</tr>
			<tr>
				<th width="100">내용</th>
				<td colspan="7">${member.contents }</td>
			</tr>		
		</table>
	</div><br/>
</div>
</body>
</html>