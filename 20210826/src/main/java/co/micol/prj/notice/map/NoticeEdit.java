package co.micol.prj.notice.map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.notice.service.NoticeService;
import co.micol.prj.notice.serviceImpl.NoticeServiceImpl;
import co.micol.prj.notice.vo.NoticeVO;

public class NoticeEdit implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 공지사항 수정하기
		NoticeService noticeDao =  new NoticeServiceImpl();
		NoticeVO notices = new NoticeVO();
		notices.setId(Integer.parseInt(request.getParameter("id")));
		notices.setWriteDate(request.getParameter("writeDate"));
		notices.setTitle(request.getParameter("title"));
		notices.setContents(request.getParameter("contents"));
		notices.setHit(Integer.parseInt(request.getParameter("hit")));
		
		int n = noticeDao.noticeUpdate(notices);
		String page = null;
		if(n != 0) {
			request.setAttribute("notices", notices);
			page = "notice/noticeSelect";  //상세보기로 보냄
		} else {
			request.setAttribute("message", "수정이 안되었습니다.");
			page = "notice/noticeError";
		}
		return page;
	}

}
