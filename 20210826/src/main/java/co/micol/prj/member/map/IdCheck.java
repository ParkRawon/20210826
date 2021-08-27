package co.micol.prj.member.map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;

public class IdCheck implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 아이디 중복체크
		MemberService memberDao = new MemberServiceImpl();
		String str = request.getParameter("id");
		boolean b = memberDao.isIdCheck(str);
		
		if(!b) {
			request.setAttribute("message", str +"는 이미존재하는 id입니다.");
		}else {
			request.setAttribute("message", str +"는 사용가능한 id입니다.");
		}
		return "member/idCheck";
	}

}
