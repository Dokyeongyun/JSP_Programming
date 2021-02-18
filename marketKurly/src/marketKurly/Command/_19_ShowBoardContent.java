package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.boardDAO;
import marketKurly.DAO.itemDAO;
import marketKurly.DTO.boardDTO;
import marketKurly.DTO.itemDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class _19_ShowBoardContent implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int num = Integer.parseInt(request.getParameter("num"));
		boardDTO bean = boardDAO.instance.getOneBoard(num);
		request.setAttribute("bean", bean);
		return "35_showBoardContent.jsp";
	}
}