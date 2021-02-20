package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.buyDAO;
import marketKurly.DAO.itemDAO;
import marketKurly.DTO.buyDTO;
import marketKurly.DTO.itemDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class _33_ShowOneCategory implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int category = Integer.parseInt(request.getParameter("category"));
		String cate="";
		String categoryName="";

		if(category==1){ cate = "100";
		}else if(category==2){ cate = "200";
		}else if(category==3){ cate = "300";
		}else if(category==4){ cate = "400";
		}

		if(cate.equals("100")){ categoryName = "채소";
		}else if(cate.equals("200")){ categoryName="해산물";
		}else if(cate.equals("300")){ categoryName="육류";
		}else if(cate.equals("400")){ categoryName="전자제품";
		}

		ArrayList<itemDTO> oneCategoryList = itemDAO.instance.getOneCategory(categoryName);
		request.setAttribute("categoryName", categoryName);
		request.setAttribute("oneCategoryList", oneCategoryList);
		return "17_showOneCategory.jsp";
	}
}