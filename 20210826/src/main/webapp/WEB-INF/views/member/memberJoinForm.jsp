<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<div align="center">
	<div><h1>회 원 가 입</h1></div>
	<div>
		<form id="frm" action="memberJoin.do" method="post">
			<div>
			<table border="1">
				<tr>
					<th width="100" bgcolor="#ccd9ff">아 이 디</th>
					<td width="300">
						<input type="text" id="id" name="id">&nbsp;&nbsp;&nbsp;
						<button type="button" onclick="Idcheck()">중복체크</button>
					</td>
				</tr>
				<tr>
					<th width="100" bgcolor="#ccd9ff">비밀번호</th>
					<td width="300">
						<input type="password" id="password" name="password">
					</td>
				</tr>
				<tr>
					<th width="150" bgcolor="#ccd9ff">비밀번호 확인</th>
					<td width="300">
						<input type="password" id="password" name="password">
					</td>
				</tr>
				<tr>
					<th width="100" bgcolor="#ccd9ff">이 름</th>
					<td width="300">
						<input type="text" id="name" name="name">
					</td>
				</tr>
				<tr>
					<th width="100" bgcolor="#ccd9ff">주 소</th>
					<td width="300">
						<input type="text" id="address" name="address">
					</td>
				</tr>
			</table>
			</div><br/>
			<div>
				<input type="submit" value="회원가입">&nbsp;&nbsp;&nbsp;
				<input type="reset" value="취 소">&nbsp;&nbsp;&nbsp;
				<input type="button" value="홈 가기" onclick="location.href='main.do'">
			</div>
		</form>
	</div>
	</div>
</body>
</html>