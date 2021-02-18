package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.boardDAO;
import marketKurly.DTO.boardDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class _26_WriteAnswerPro implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int ref = Integer.parseInt(request.getParameter("ref"));
		int re_step = Integer.parseInt(request.getParameter("re_step"));
		int re_level = Integer.parseInt(request.getParameter("re_level"));
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String pw = request.getParameter("pw");
		String content = request.getParameter("content");

		boardDTO dto = new boardDTO();

		dto.setRef(ref);
		dto.setRe_step(re_step);
		dto.setRe_level(re_level);
		dto.setWriter(writer);
		dto.setTitle(title);
		dto.setPw(pw);
		dto.setContent(content);

		boardDAO.instance.writeAnswer(dto);
		return "44_writeAnswerPro.jsp";
	}
}