package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.customerDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class _09_JoinPro implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// form 입력값 가져오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		String email = request.getParameter("email");

		int check = customerDAO.instance.insertMember(id, pw, name, tel, address, email);

		request.setAttribute("check", check);
		return "09_joinPro.jsp";
	}
}