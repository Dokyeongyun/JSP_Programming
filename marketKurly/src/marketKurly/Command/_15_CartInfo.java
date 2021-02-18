package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.cartDAO;
import marketKurly.DTO.cartDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class _15_CartInfo implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = (String) request.getSession().getAttribute("id");
		ArrayList<cartDTO> cartList = cartDAO.instance.getCartList(id);
		int cnt = cartDAO.instance.countItem(id);

		request.setAttribute("cartList", cartList);
		request.setAttribute("cnt", cnt);
		return "19_cartInfo.jsp";
	}
}