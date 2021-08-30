<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세보기</title>
<script type="text/javascript">
	function CallNotice(str) {
		if(str == "U") {
			frm.action = "noticeEditForm.do";
		}else {
			frm.action = "noticeDelete.do";
		}
		
		frm.submit();
	}
</script>
</head>
<body>
<div align = "center">
	<div><h1>공지사항 상세정보</h1></div>
	<div>
		<table border="1">
			<tr>
				<th width="70">순번</th>
				<td width="100">${notices.id }</td>
				<th width="70">작성자</th>
				<td width="100">${notices.writer }</td>
				<th width="80">작성 날짜</th>
				<td width="100">${notices.writeDate }</td>
				<th width="70">제목</th>
				<td width="150">${notices.title }</td>
				<th width="70">조회수</th>
				<td width="100">${notices.hit }</td>
			</tr>
			<tr>
				<th width="70">내용</th>
				<td colspan="9">${notices.contents }</td>
			</tr>		
		</table>
	</div><br/>
	<div>
		<button type="button" onclick="CallNotice('U')">수정</button>&nbsp;&nbsp;&nbsp;
		<button type="button" onclick="CallNotice('D')">삭제</button>&nbsp;&nbsp;&nbsp;
		<button type="button" onclick="location.href='noticeList.do'">목록보기</button>
	</div>
	<div>
		<form id="frm" action="" method="post">
			<input type="hidden" id="id" name="id" value="${notices.id }">
		</form>
	</div>
</div>
</body>
</html>