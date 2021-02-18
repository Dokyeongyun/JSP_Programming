package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.itemDAO;
import marketKurly.DTO.itemDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class _17_ShowBestItem implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ArrayList<itemDTO> bestItem = itemDAO.instance.getBestItem();
		request.setAttribute("bestItem", bestItem);
		return "26_showBestItem.jsp";
	}
}