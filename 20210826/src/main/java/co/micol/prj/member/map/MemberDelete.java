package co.micol.prj.member.map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;
import co.micol.prj.member.vo.MemberVO;

public class MemberDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		MemberService memberDao = new MemberServiceImpl();   //dao인스턴스 생성하기
		MemberVO member = new MemberVO();  //membervo타입으로 결과받기위해
		member.setId(request.getParameter("id"));
		int n = memberDao.memberDelete(member);
		String page = null;
		if(n != 0) {
			page = "memberList.do";
		} else {
			request.setAttribute("msg", "회원정보 삭제시 오류발생!!");
			page = "member/memberError";
		}
		return page;
	}

}
