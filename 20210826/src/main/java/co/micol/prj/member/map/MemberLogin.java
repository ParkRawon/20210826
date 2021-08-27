package co.micol.prj.member.map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;
import co.micol.prj.member.vo.MemberVO;

public class MemberLogin implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		MemberService memberDao = new MemberServiceImpl();
		MemberVO member = new MemberVO();
		member.setId(request.getParameter("id"));
		member.setPassWord(request.getParameter("password"));
		
		member = memberDao.memberLogin(member);
		
		String page = null;
		if(member.getName() != null) {
			request.setAttribute("message", "님 환영합니다." );
			request.setAttribute("member", member );
			page = "member/memberLoginSuccess";
		} else {
			request.setAttribute("message", "id 또는 password가 틀립니다.");
			page = "member/memberError";
		}
		return page;
	}

}
