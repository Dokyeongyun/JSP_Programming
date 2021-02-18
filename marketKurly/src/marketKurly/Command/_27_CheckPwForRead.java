package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.boardDAO;
import marketKurly.DTO.boardDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class _27_CheckPwForRead implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int num = Integer.parseInt(request.getParameter("num"));
		request.setAttribute("num", num);
		return "41_checkPwForRead.jsp";
	}
}