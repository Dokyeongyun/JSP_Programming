package marketKurly.Command;

import marketKurly.Controller.CommandAction;
import marketKurly.DAO.boardDAO;
import marketKurly.DTO.boardDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;


public class _11_CustomerCenter implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int pageSize= 10;
		String pageNum = request.getParameter("pageNum");
		if(pageNum ==null){
			pageNum = "1";
		}
		int count = boardDAO.instance.getAllCount();
		int number = 0;

		int curPage = Integer.parseInt(pageNum);

		int startRow = (curPage - 1) * pageSize;
		int endRow = curPage * pageSize;
		ArrayList<boardDTO> boardList = boardDAO.instance.getAllBoardlist(startRow, endRow);

		number = count - (curPage - 1) * pageSize;

		request.setAttribute("boardList", boardList);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("count", count);
		request.setAttribute("number", number);
		request.setAttribute("curPage", curPage);

		return "07_customerCenter.jsp";
	}
}