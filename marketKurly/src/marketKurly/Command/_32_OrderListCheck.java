package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.buyDAO;
import marketKurly.DAO.cartDAO;
import marketKurly.DTO.buyDTO;
import marketKurly.DTO.cartDTO;
import marketKurly.DTO.customerDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class _32_OrderListCheck implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = (String)request.getSession().getAttribute("id");
		ArrayList<buyDTO> buyList = buyDAO.instance.getbuyList(id);

		request.setAttribute("buyList", buyList);
		return "24_orderListCheck.jsp";
	}
}