package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.managerDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class _38_AddNewItem implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "32_addNewItem.jsp";
	}
}