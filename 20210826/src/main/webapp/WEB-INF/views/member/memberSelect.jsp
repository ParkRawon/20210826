<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 상세</title>
<script type="text/javascript">
	function CallMember(str) {
		if(str == "U") {
			frm.action = "memberEditForm.do";
		}else {
			frm.action = "memberDelete.do";
		}
		
		frm.submit();
	}
</script>
</head>
<body>
<div align="center">
	<div><h1>회원상세정보</h1></div>
	<div>
		<table border="1">
			<tr>
				<th width="100" bgcolor="#ccd9ff">아이디</th>
				<td width="100">${member.id }</td>
				<th width="100" bgcolor="#ccd9ff">패스워드</th>
				<td width="100">${member.passWord }</td>
				<th width="100" bgcolor="#ccd9ff">이름</th>
				<td width="100">${member.name }</td>
			</tr>
			<tr>
				<th width="100" bgcolor="#ccd9ff">주소</th>
				<td colspan="5">${member.address }</td>
			</tr>
		</table>
	</div><br/>
	<div>
		<button type="button" onclick="CallMember('U')">수정</button>&nbsp;&nbsp;&nbsp;
		<button type="button" onclick="CallMember('D')">삭제</button>&nbsp;&nbsp;&nbsp;
		<button type="button" onclick="location.href='memberList.do'">목록보기</button>
	</div>
	<div>
		<form id="frm" action="" method="post">
			<input type="hidden" id="id" name="id" value="${member.id }">
		</form>
	</div>
</div>
</body>
</html>