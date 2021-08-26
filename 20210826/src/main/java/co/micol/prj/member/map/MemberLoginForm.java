package co.micol.prj.member.map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;

public class MemberLoginForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//로그인 폼 호출
		return "member/memberLoginForm";
	}

}
