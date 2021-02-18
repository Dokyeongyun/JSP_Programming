package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.itemDAO;
import marketKurly.DTO.itemDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class _18_ShowDiscountedItem implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ArrayList<itemDTO> discountedItem = itemDAO.instance.getDiscountedItem();
		request.setAttribute("discountedItem", discountedItem);
		return "27_showDiscountedItem.jsp";
	}
}