<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript">
	function login() {
		if(frm.password.value != frm.passwordCheck.value) {
			alert("비밀번호가 일치하지 않습니다");
			frm.password.value="";
			frm.passwordCheck.value="";
			frm.password.focus();
			return false;
		}
		if(frm.idCheck.value == "N"){
			alert("아이디 중복체크를 해주세요");
			return false;
		}
		
		frm.submit();
	}
	
	function IdCheck() {	
		var id = frm.id.value;
		window.open("idCheck.do?id="+id, "childFrom" ,"width=570, height=350") //새창열기,  window.open("open할 window", "자식창 이름", "팝업창 옵션");

	}
</script>
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
						<input type="text" id="id" name="id" required="required">&nbsp;&nbsp;&nbsp;
						<button type="button" onclick="IdCheck()" id="idCheck" value="N">중복체크</button>
					</td>
				</tr>
				<tr>
					<th width="100" bgcolor="#ccd9ff">비밀번호</th>
					<td width="300">
						<input type="password" id="password" name="password" required="required">
					</td>
				</tr>
				<tr>
					<th width="150" bgcolor="#ccd9ff">비밀번호 확인</th>
					<td width="300">
						<input type="password" id="passwordCheck" name="passwordCheck" required="required">
					</td>
				</tr>
				<tr>
					<th width="100" bgcolor="#ccd9ff">이 름</th>
					<td width="300">
						<input type="text" id="name" name="name" required="required">
					</td>
				</tr>
				<tr>
					<th width="100" bgcolor="#ccd9ff">주 소</th>
					<td width="300">
						<input type="text" id="address" name="address" required="required">
					</td>
				</tr>
			</table>
			</div><br/>
			<div>
				<input type="button"  value="글쓰기">&nbsp;&nbsp;&nbsp;
				<input type="reset" value="취 소">&nbsp;&nbsp;&nbsp;
				<input type="button" value="홈 가기" onclick="location.href='main.do'">
			</div>
		</form>
	</div>
	</div>
</body>
</html>