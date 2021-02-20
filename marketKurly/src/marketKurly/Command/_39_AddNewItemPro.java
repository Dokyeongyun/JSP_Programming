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

public class _39_AddNewItemPro implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");

		String realFolder="";
		String filename="";
		MultipartRequest imageup = null;

		String saveFolder="marketKurly/img";
		String encType = "utf-8";
		int max_size=2 * 1024 * 1024;

		ServletContext context = request.getServletContext();
		realFolder = context.getRealPath(saveFolder);

		try{
			imageup = new MultipartRequest(request, realFolder, max_size,encType, new DefaultFileRenamePolicy());
			Enumeration files = imageup.getFileNames();

			while(files.hasMoreElements()){
				String name =(String)files.nextElement();
				filename = imageup.getFilesystemName(name);
			}
		}catch(Exception e){
			e.printStackTrace();
		}

		String item_name = imageup.getParameter("name");
		String item_category = imageup.getParameter("category");
		String item_price = imageup.getParameter("price");
		String item_stock = imageup.getParameter("stock");
		String item_info = imageup.getParameter("info");
		String discount_rate = imageup.getParameter("discountRate");

		itemDTO dto = new itemDTO();
		dto.setItem_category(item_category);
		dto.setItem_name(item_name);
		dto.setItem_price(Integer.parseInt(item_price));
		dto.setItem_stock(Integer.parseInt(item_stock));
		dto.setItem_info(item_info);
		dto.setDiscount_rate(Integer.parseInt(discount_rate));

		if(filename!=null){
			dto.setItem_image(filename);
		}else{
			dto.setItem_image("error.jpg");
		}
		int check = managerDAO.instance.insertNewItem(dto);

		request.setAttribute("check", check);

		return "33_addNewItemPro.jsp";
	}
}