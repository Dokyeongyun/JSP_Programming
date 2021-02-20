package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.itemDAO;
import marketKurly.DAO.managerDAO;
import marketKurly.DTO.itemDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class _35_ItemInfoUpdateForm implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int item_number=Integer.parseInt(request.getParameter("item_number"));
		itemDTO bean = managerDAO.instance.getOneItem(item_number);
		String categoryName = "";
		if(bean.getItem_category().equals("100")){ categoryName = "채소";
		}else if(bean.getItem_category().equals("200")){ categoryName="해산물";
		}else if(bean.getItem_category().equals("300")){ categoryName="육류";
		}else if(bean.getItem_category().equals("400")){ categoryName="전자제품";
		}

		request.setAttribute("bean", bean);
		request.setAttribute("categoryName", categoryName);
		return "30_itemInfoUpdateForm.jsp";
	}
}