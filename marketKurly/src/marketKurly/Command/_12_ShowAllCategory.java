package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.itemDAO;
import marketKurly.DTO.itemDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;


public class _12_ShowAllCategory implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ArrayList<itemDTO> allItem = itemDAO.instance.getAllItem();
		request.setAttribute("allItem", allItem);
		return "16_showAllCategory.jsp";
	}
}