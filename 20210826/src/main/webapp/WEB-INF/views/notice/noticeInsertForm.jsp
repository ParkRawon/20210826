<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 화면</title>
</head>
<body>
	<div align="center">
	<div><h1>글쓰기</h1></div>
	<div>
		<form id="frm" action="noticeInsert.do" method="post">
			<div>
			<table border="1">
				<tr>
					<th width="100" bgcolor="#ccd9ff">순번</th>
					<td width="300">
						<input type="text" id="id" name="id" required="required">	
					</td>
				</tr>
				<tr>
					<th width="100" bgcolor="#ccd9ff">작성자</th>
					<td width="300">
						<input type="text" id="writer" name="writer" required="required">
					</td>
				</tr>
				<tr>
					<th width="150" bgcolor="#ccd9ff">작성날짜</th>
					<td width="300">
						<input type="date" id="writeDate" name="writeDate" required="required">
					</td>
				</tr>
				<tr>
					<th width="100" bgcolor="#ccd9ff">제 목</th>
					<td width="300">
						<input type="text" id="title" name="title" required="required">
					</td>
				</tr>
				<tr>
					<th width="100" bgcolor="#ccd9ff">내용</th>
					<td width="300">
						<input type="text" id="contents" name="contents" required="required">
					</td>
				</tr>
			</table>
			</div><br/>
			<div>
				<button type="button" onclick="location.href='noticeResult.do'">글쓰기</button>&nbsp;&nbsp;&nbsp;
				<input type="reset" value="취 소">&nbsp;&nbsp;&nbsp;
				<input type="button" value="홈 가기" onclick="location.href='main.do'">
			</div>
		</form>
	</div>
	</div>
</body>
</html>