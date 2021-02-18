package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.boardDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class _28_CheckPwForReadPro implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int num = Integer.parseInt(request.getParameter("num"));
		String pw = request.getParameter("pw");

		int check = boardDAO.instance.checkPwForRead(num, pw);

		request.setAttribute("check", check);
		request.setAttribute("num", num);
		return "42_checkPwForReadPro.jsp";
	}
}