package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.boardDAO;
import marketKurly.DTO.boardDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class _22_WriteAnswer implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int num = Integer.parseInt(request.getParameter("num"));
		boardDTO bean = boardDAO.instance.getOneBoard(num);
		request.setAttribute("bean", bean);
		return "43_writeAnswer.jsp";
	}
}