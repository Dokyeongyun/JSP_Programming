package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.itemDAO;
import marketKurly.DTO.itemDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class _34_ItemInfoUpdate implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ArrayList<itemDTO> allItem = itemDAO.instance.getAllItem();

		request.setAttribute("allItem", allItem);
		return "28_itemInfoUpdate.jsp";
	}
}