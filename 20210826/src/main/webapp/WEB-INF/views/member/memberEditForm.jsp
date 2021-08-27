<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
</head>
<body>
<div align="center">
	<div><h1>회원정보 수정</h1></div>
	<div>
		<form id="frm" action="memberEdit.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th width = "100">아 이 디</th>
						<td width="300"><input type="text" id="id" name="id" value="${member.id }" readonly></td>
					</tr>
					<tr>
						<th width = "100">비밀번호</th>
						<td width="300"><input type="password" id="password" name="password" value="${member.passWord }" ></td>
					</tr>
					<tr>
						<th width = "100">이 름</th>
						<td width="300"><input type="text" id="name" name="name" value="${member.name }" ></td>
					</tr>
					<tr>
						<th width = "100">주 소</th>
						<td width="300"><input type="text" id="address" name="address" value="${member.address }" ></td>
					</tr>
				</table>
			</div><br/>
			<div>
				<input type="submit" value="저장">&nbsp;&nbsp;&nbsp;
				<input type="button" value="수정취소" onclick="location.href='memberList.do'">
			</div>
		</form>
	</div>
</div>
</body>
</html>