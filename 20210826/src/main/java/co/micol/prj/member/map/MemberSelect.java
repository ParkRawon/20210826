package co.micol.prj.member.map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;
import co.micol.prj.member.vo.MemberVO;

public class MemberSelect implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		MemberService memberDao = new MemberServiceImpl();
		MemberVO member = new MemberVO(); //VO객체 생성
		member.setId(request.getParameter("id"));
		member = memberDao.memberSelect(member);
		
		request.setAttribute("member", member);  //jsp에 결과를 전달하기 위헤
		
		return "member/memberSelect";
	}

}
