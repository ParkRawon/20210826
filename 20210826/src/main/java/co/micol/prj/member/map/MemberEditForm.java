package co.micol.prj.member.map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;
import co.micol.prj.member.vo.MemberVO;

public class MemberEditForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 회원 수정 폼을 돌려준다. 회원정보를 가지고 가서 수정
		MemberService memberDao = new MemberServiceImpl();
		MemberVO member = new MemberVO();
		member.setId(request.getParameter("id"));
		member = memberDao.memberSelect(member);
		
		request.setAttribute("member", member);
		return "member/memberEditForm";
	}

}
