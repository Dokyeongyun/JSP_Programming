package marketKurly.Command;

import marketKurly.Controller.CommandAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class _04_FindMemberId implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "10_findMemberId.jsp";
	}
}