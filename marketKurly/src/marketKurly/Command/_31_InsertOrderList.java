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

public class _31_InsertOrderList implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String customer_id = (String) request.getSession().getAttribute("id");
		customerDTO customerBean = buyDAO.instance.getCustomerInfo(customer_id);
		ArrayList<cartDTO> cartList = cartDAO.instance.getCartList(customer_id);
		int payhow = Integer.parseInt(request.getParameter("howPay"));
		String pay="";
		if(payhow==1){
			pay="계좌이체";
		}else if(payhow==2){
			pay="신용카드";
		}

		for(int i=0; i<cartList.size(); i++){
			cartDTO bean = cartList.get(i);

			String customer_name = customerBean.getName();
			int cart_number = bean.getCart_number();
			String item_name = bean.getItem_name();
			int buy_price = bean.getBuy_price();
			int buy_count = bean.getBuy_count();
			String item_image = bean.getItem_image();
			String howpay = pay;
			String address = customerBean.getAddress();

			buyDTO dto = new buyDTO();
			dto.setCustomer_id(customer_id);
			dto.setCustomer_name(customer_name);
			dto.setCart_number(cart_number);
			dto.setItem_name(item_name);
			dto.setBuy_price(buy_price);
			dto.setBuy_count(buy_count);
			dto.setItem_image(item_image);
			dto.setHowpay(howpay);
			dto.setAddress(address);

			buyDAO.instance.insertOrderList(dto);
			buyDAO.instance.updateSold(item_name, buy_count);
		}
		buyDAO.instance.deleteCartList(customer_id);
		return "23_insertOrderList.jsp";
	}
}