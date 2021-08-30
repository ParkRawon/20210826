<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<div><h1>공지사항 수정</h1></div>
	<div>
		<form id="frm" action="noticeEdit.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th width = "100">순 번</th>
						<td width="300"><input type="text" id="id" name="id" value="${notices.id }" readonly></td>
					</tr>
					<tr>
						<th width = "100">작성자</th>
						<td width="300"><input type="text" id="writer" name="writer" value="${notices.writer }" readonly ></td>
					</tr>
					<tr>
						<th width = "100">작성날짜</th>
						<td width="300"><input type="date" id="writeDate" name="writeDate" value="${notices.writeDate }" ></td>
					</tr>
					<tr>
						<th width = "100">제 목</th>
						<td width="300"><input type="text" id="title" name="title" value="${notices.title }" ></td>
					</tr>
					<tr>
						<th width = "100">내 용</th>
						<td width="300"><input type="text" id="contents" name="contents" value="${notices.contents }" ></td>
					</tr>
					<tr>
						<th width = "100">조회수</th>
						<td width="300"><input type="text" id="hit" name="hit" value="${notices.hit }" readonly></td>
					</tr>
				</table>
			</div><br/>
			<div>
				<input type="submit" value="저장">&nbsp;&nbsp;&nbsp;
				<input type="button" value="수정취소" onclick="location.href='noticeList.do'">
			</div>
		</form>
	</div>
</div>

</body>
</html>