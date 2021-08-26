<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버목록</title>
<script type="text/javascript">
	function CallMember(str){
		frm.id.value = str;
		frm.submit();
	}
</script>
</head>
<body>
<div align="center">
	<div><h1>회원전체목록</h1></div>
	<div>
		<table border="1">
			<tr bgcolor = "#ccd9ff">
				<td width="100" align="center">아이디</td>
				<td width="100" align="center">이름</td>
				<td width="450" align="center">주소</td>
			</tr>
			<c:forEach var="member" items="${members }">  <!-- request객체가 가지고 있는 key값 -->
			<tr onclick = "CallMember('${member.id}')">
				<td align="center">${member.id }</td>
				<td align="center">${member.name }</td>
				<td align="center">${member.address }</td>
			</tr>
			</c:forEach>
		</table>	
	</div><br/>
	<div>
		<button type="button" onclick="location.href='main.do'">홈가기</button>
	</div>
	<div>
		<form id="frm" name="frm" action="memberSelect.do" method="post">
			<input type="hidden" id="id" name="id">
		</form>
	</div>
</div>

</body>
</html>