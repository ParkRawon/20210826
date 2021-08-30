package co.micol.prj.notice.map;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.notice.service.NoticeService;
import co.micol.prj.notice.serviceImpl.NoticeServiceImpl;
import co.micol.prj.notice.vo.NoticeVO;


public class NoticeInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 글쓰기
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO notices = new NoticeVO();
		notices.setId(Integer.parseInt(request.getParameter("id")));
		notices.setWriter(request.getParameter("writer"));
		notices.setWriteDate(Date.valueOf(request.getParameter("writeDate")));
		notices.setTitle(request.getParameter("title"));
		notices.setContents(request.getParameter("contents"));
		
		int n = noticeDao.noticeInsert(notices);
		if(n != 0) {
			request.setAttribute("message", "글쓰기 성공");
		} else {
			request.setAttribute("message", "글쓰기 실패");
		}
		
		return "notice/noticeResult";

	}

}
