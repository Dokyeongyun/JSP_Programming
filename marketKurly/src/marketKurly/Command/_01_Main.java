package marketKurly.Command;

import marketKurly.Controller.CommandAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class _01_Main implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("type", 0);
		return "03_center.jsp";
	}
}