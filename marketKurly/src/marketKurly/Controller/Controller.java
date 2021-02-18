package marketKurly.Controller;

import marketKurly.Command.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(urlPatterns = {"*.do"})
public class Controller extends HttpServlet {

	private final Map<String, Object> commandMap = new HashMap<>();

	public void init() {
		commandMap.put("/main.do", new _01_Main());
		commandMap.put("/login.do", new _02_CustomerLogin());
		commandMap.put("/loginPro.do", new _03_CustomerLoginPro());
		commandMap.put("/findMemberId.do", new _04_FindMemberId());
		commandMap.put("/findMemberIdPro.do", new _05_FindMemberIdPro());
		commandMap.put("/findMemberPw.do", new _06_FindMemberPw());
		commandMap.put("/findMemberPwPro.do", new _07_FindMemberPwPro());
		commandMap.put("/join.do", new _08_Join());
		commandMap.put("/joinPro.do", new _09_JoinPro());
		commandMap.put("/logout.do", new _10_Logout());
		commandMap.put("/customerCenter.do", new _11_CustomerCenter());
		commandMap.put("/showAllCategory.do", new _12_ShowAllCategory());
		commandMap.put("/showOneItem.do", new _13_ShowOneItem());
		commandMap.put("/insertCart.do", new _14_InsertCart());
		commandMap.put("/cartInfo.do", new _15_CartInfo());
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request, response);
	}

	private void requestPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String view = "";
		CommandAction com = null;
		try {
			String command = request.getRequestURI();
			if(command.indexOf(request.getContextPath()) == 0) {
				command = command.substring(request.getContextPath().length());
			}
			System.out.println("command: "+command);
			com = (CommandAction)commandMap.get(command);
			view = com.requestPro(request, response);
			System.out.println(view);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("center", view);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/00_shopMain.jsp");
		dispatcher.forward(request, response);
	}
}
