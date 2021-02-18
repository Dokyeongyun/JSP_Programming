package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.customerDAO;
import marketKurly.DAO.managerDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class _03_CustomerLoginPro implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// form 입력값 가져오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		int check = customerDAO.instance.userCheck(id, pw);

		request.setAttribute("check", check);
		request.setAttribute("id", id);
		return "05_customerLoginPro.jsp";
	}
}