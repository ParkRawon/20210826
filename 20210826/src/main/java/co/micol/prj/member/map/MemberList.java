package co.micol.prj.member.map;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;
import co.micol.prj.member.vo.MemberVO;

public class MemberList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 멤버 목록(member list) 가져오기
		MemberService memberDao = new MemberServiceImpl();  //db연결하고, 값을 가져오기위해 model을 생성
		List<MemberVO> members = new ArrayList<MemberVO>();  //리스트 타입으로 결과를 받기 위해 
		members = memberDao.memberSelectList();  //모델을 호출해서 결과를 받음
		
		request.setAttribute("members", members); //결과를 jsp페이지에 전달하기 위해  키값을 담음
		return "member/memberList";  //보여줄 페이지를 선택
	}

}
