package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.buyDAO;
import marketKurly.DAO.cartDAO;
import marketKurly.DTO.cartDTO;
import marketKurly.DTO.customerDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class _30_Order implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = (String) request.getSession().getAttribute("id");
		customerDTO customerBean = buyDAO.instance.getCustomerInfo(id);
		ArrayList<cartDTO> itemList = buyDAO.instance.getItemList(id);
		int total = Integer.parseInt(request.getParameter("total"));

		request.setAttribute("customerBean", customerBean);
		request.setAttribute("itemList", itemList);
		request.setAttribute("total", total);
		return "22_order.jsp";
	}
}