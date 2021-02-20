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

public class _36_ItemInfoUpdatePro implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String realFolder="";
		String filename="";
		MultipartRequest imageup = null;

		String saveFolder="marketKurly/img";
		String encType = "utf-8";
		int max_size=2 * 1024 * 1024;

		ServletContext context = request.getServletContext();
		realFolder = context.getRealPath(saveFolder);
		System.out.println("realFolder = " + realFolder);
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

		int item_number = Integer.parseInt(imageup.getParameter("item_number"));

		String item_name = imageup.getParameter("name");
		String item_category = imageup.getParameter("category");
		String item_price = imageup.getParameter("price");
		String item_stock = imageup.getParameter("stock");
		String item_info = imageup.getParameter("info");
		String discount_rate = imageup.getParameter("discount_rate");

		System.out.println("아이템 이름=" + item_name);
		System.out.println("카테고리=" + item_category);
		System.out.println("가격=" + item_price);
		System.out.println("재고=" + item_stock);
		System.out.println("인포=" + item_info);
		System.out.println("할인률=" + discount_rate);

		itemDTO dto = new itemDTO();
		dto.setItem_category(item_category);
		dto.setItem_name(item_name);
		dto.setItem_price(Integer.parseInt(item_price));
		dto.setItem_stock(Integer.parseInt(item_stock));
		dto.setItem_info(item_info);
		dto.setDiscount_rate(Integer.parseInt(discount_rate));

		if(filename!=null){ dto.setItem_image(filename);
		}else{ dto.setItem_image("error.jpg"); }

		int check = managerDAO.instance.itemUpdate(dto, item_number);

		request.setAttribute("check", check);
		return "29_itemInfoUpdatePro.jsp";
	}
}