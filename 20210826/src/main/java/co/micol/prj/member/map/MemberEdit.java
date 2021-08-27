package co.micol.prj.member.map;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;
import co.micol.prj.member.vo.MemberVO;

public class MemberEdit implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 회원정보 수정
		MemberService memberDao = new MemberServiceImpl();
		MemberVO member = new MemberVO();
		member.setId(request.getParameter("id"));
		member.setPassWord(request.getParameter("password"));
		member.setName(request.getParameter("name"));
		member.setAddress(request.getParameter("address"));
		
		int n = memberDao.memberUpdate(member);
		String page = null;
		if(n != 0) {
			request.setAttribute("member", member);
			page = "member/memberSelect";  //상세보기로 보냄
		} else {
			request.setAttribute("message", "수정이 안되었습니다.");
			page = "member/memberError";
		}
		return page;
	}

}
