package co.micol.prj.member.service;

import java.util.List;

import co.micol.prj.member.vo.MemberVO;

public interface MemberService {
	List <MemberVO> memberSelectList(); //전제목록가져오기
	MemberVO memberSelect(MemberVO vo);  //한사람 세부정보
	int memberInsert(MemberVO vo);  //멤버 삽입
	int memberUpdate(MemberVO vo);  //멤버 수정
	int memberDelete(MemberVO vo);  //멤버 삭제
	MemberVO memberLogin(MemberVO vo); //Login 처리를 위해

}
