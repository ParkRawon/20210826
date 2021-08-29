package co.micol.prj.notice.map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.notice.service.NoticeService;
import co.micol.prj.notice.serviceImpl.NoticeServiceImpl;
import co.micol.prj.notice.vo.NoticeVO;

public class NoticeDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO notices = new NoticeVO();
		notices.setId(Integer.parseInt(request.getParameter("id")));
		int n = noticeDao.noticeDelete(notices);
		
		String page = null;
		if(n != 0 ) {
			page = "noticeList.do";
		} else {
			request.setAttribute("msg", "삭제오류!!");
			page =" notice/noticeError";
		}
		
		return page;
	}

}
