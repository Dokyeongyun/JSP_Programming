package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.cartDAO;
import marketKurly.DAO.itemDAO;
import marketKurly.DTO.cartDTO;
import marketKurly.DTO.itemDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class _14_InsertCart implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String buyer = (String) request.getSession().getAttribute("id");
		int item_number=Integer.parseInt(request.getParameter("item_number"));
		itemDTO bean = itemDAO.instance.getOneItem(item_number);
		String item_name = bean.getItem_name();
		int buy_price = bean.getItem_price() - bean.getItem_price()*bean.getDiscount_rate()/100;
		int buy_count = Integer.parseInt(request.getParameter("buycnt"));
		String item_image = bean.getItem_image();

		cartDTO dto = new cartDTO();
		dto.setBuyer(buyer);
		dto.setItem_name(item_name);
		dto.setBuy_price(buy_price);
		dto.setBuy_count(buy_count);
		dto.setItem_image(item_image);

		int check = cartDAO.instance.insertCart(dto);
		request.setAttribute("check", check);
		return "20_insertCart.jsp";
	}
}