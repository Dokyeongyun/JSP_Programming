package marketKurly.Command;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import marketKurly.Controller.CommandAction;
import marketKurly.DAO.managerDAO;
import marketKurly.DTO.itemDTO;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Enumeration;

public class _37_DeleteItem implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int item_number=Integer.parseInt(request.getParameter("item_number"));
		System.out.println("item_number확인 = " + item_number);

		int check = managerDAO.instance.deleteItem(item_number);
		request.setAttribute("check", check);
		return "31_deleteItem.jsp";
	}
}