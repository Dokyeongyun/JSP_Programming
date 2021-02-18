package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.cartDAO;
import marketKurly.DAO.itemDAO;
import marketKurly.DTO.cartDTO;
import marketKurly.DTO.itemDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class _16_ShowNewItem implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ArrayList<itemDTO> newItem = itemDAO.instance.getNewItem();
		request.setAttribute("newItem", newItem);
		return "25_showNewItem.jsp";
	}
}