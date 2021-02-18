package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.boardDAO;
import marketKurly.DTO.boardDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class _24_WritePro implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String pw = request.getParameter("pw");
		String content = request.getParameter("content");

		boardDTO dto = new boardDTO();

		dto.setWriter(writer);
		dto.setTitle(title);
		dto.setPw(pw);
		dto.setContent(content);

		boardDAO.instance.insertBoard(dto);

		return "37_writePro.jsp";
	}
}