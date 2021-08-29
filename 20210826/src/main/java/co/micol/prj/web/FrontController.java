package co.micol.prj.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.command.MainCommand;
import co.micol.prj.common.Command;
import co.micol.prj.member.map.IdCheck;
import co.micol.prj.member.map.MemberDelete;
import co.micol.prj.member.map.MemberEdit;
import co.micol.prj.member.map.MemberEditForm;
import co.micol.prj.member.map.MemberJoin;
import co.micol.prj.member.map.MemberJoinForm;
import co.micol.prj.member.map.MemberList;
import co.micol.prj.member.map.MemberLogin;
import co.micol.prj.member.map.MemberLoginForm;
import co.micol.prj.member.map.MemberSelect;
import co.micol.prj.notice.map.NoticeDelete;
import co.micol.prj.notice.map.NoticeEdit;
import co.micol.prj.notice.map.NoticeEditForm;
import co.micol.prj.notice.map.NoticeInsert;
import co.micol.prj.notice.map.NoticeInsertForm;
import co.micol.prj.notice.map.NoticeList;
import co.micol.prj.notice.map.NoticeSelect;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private HashMap<String, Command> map = new HashMap<String, Command>();   
    
    public FrontController() {
        super();
        
    }

	
	public void init(ServletConfig config) throws ServletException {
		// 요청 command 정의하는 부분
		map.put("/main.do", new MainCommand());  //처음페이지 호출
		map.put("/memberList.do", new MemberList()); //멤버목록 보기
		map.put("/memberSelect.do", new MemberSelect()); //회원세부정보 보기
		map.put("/memberDelete.do", new MemberDelete());  //회원정보 삭제하기
		map.put("/memberLogin.do", new MemberLogin());   //로그인하기
		map.put("/memberLoginForm.do", new MemberLoginForm()); //로그인폼 호출
		map.put("/memberJoinForm.do", new MemberJoinForm()); //회원가입폼 호출
		map.put("/memberJoin.do", new MemberJoin());  //회원가입
		map.put("/idCheck.do", new IdCheck());  //아이디중복체크
		map.put("/memberEditForm.do", new MemberEditForm()); //수정폼 호출
		map.put("/memberEdit.do", new MemberEdit());  //수정하기
		map.put("/noticeList.do", new NoticeList());  //공지사항 리스트 보기
		map.put("/noticeSelect.do", new NoticeSelect()); //공지사항 세부정보 보기
		map.put("/noticeDelete.do", new NoticeDelete()); //공지사항 삭제하기
		map.put("/noticeEditForm.do", new NoticeEditForm()); //수정폼 호출
		map.put("/noticeEdit.do", new NoticeEdit()); //공지사항 수정하기
		map.put("/noticeInsert.do", new NoticeInsert()); //글쓰기
		map.put("/noticeInsertForm", new NoticeInsertForm()); //글쓰기 폼 호출
	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 실제 처리하는 부분(요청을 분석하고, 실행하는 부분)
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String path = uri.substring(contextPath.length());  //실제 페이지
		String viewPage = null;
		
		Command command = map.get(path);  //요청 command 찾기
		viewPage = command.execute(request, response);  //요청 command 실행
		
		if(viewPage != null) {    //view Resolve
			if(!viewPage.endsWith(".do")) {  //끝에 .do가 붙어있지 않으면
				viewPage = "WEB-INF/views/" + viewPage +".jsp";
				
			}
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

}
