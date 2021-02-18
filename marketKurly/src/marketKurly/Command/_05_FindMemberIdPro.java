package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.customerDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class _05_FindMemberIdPro implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// form 입력값 가져오기
		String name = request.getParameter("name");
		String email = request.getParameter("email");

		String id = customerDAO.instance.findId(name, email);

		request.setAttribute("id", id);
		return "11_findMemberIdPro.jsp";
	}
}