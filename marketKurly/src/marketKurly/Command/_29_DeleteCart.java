package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.boardDAO;
import marketKurly.DAO.cartDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class _29_DeleteCart implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int cart_number = Integer.parseInt(request.getParameter("cart_number"));
		String buyer = (String) request.getSession().getAttribute("id");

		int check = -1;
		if(buyer!=null){
			cartDAO.instance.deleteCart(cart_number);
			check = 1;
			response.sendRedirect("00_shopMain.jsp?center=19_cartInfo.jsp");
		}

		request.setAttribute("check", check);
		return "21_deleteCart.jsp";
	}
}