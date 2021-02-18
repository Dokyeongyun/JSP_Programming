package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.itemDAO;
import marketKurly.DTO.itemDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;


public class _13_ShowOneItem implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int item_number = Integer.parseInt(request.getParameter("item_number"));
		itemDTO bean = itemDAO.instance.getOneItem(item_number);

		request.setAttribute("bean", bean);
		return "18_showOneItem.jsp";
	}
}