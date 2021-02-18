package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.customerDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class _07_FindMemberPwPro implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// form 입력값 가져오기
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String email = request.getParameter("email");

		String pw = customerDAO.instance.findPw(name, id, email);

		request.setAttribute("pw", pw);
		return "13_findMemberPwPro.jsp";
	}
}