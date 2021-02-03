package Controller;

import Model.BoardDAO;
import Model.BoardDTO;
import Model.MemberDAO;
import Model.MemberDTO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/boardWrite.do")
public class BoardWriteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req, resp);
    }

    public void reqPro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int check = -1;

        String title = req.getParameter("title");
        String content = req.getParameter("content");

        HttpSession session = req.getSession();

        String loginUser = (String) session.getAttribute("loginUser");
        if(loginUser==null){
            check = -2;
        }else{
            MemberDTO member = MemberDAO.getInstance().getUserInfo(loginUser);
            BoardDTO board = new BoardDTO(title, content, member.getId(), member.getNickName());
            check = BoardDAO.getInstance().boardInsert(board);
        }

        req.setAttribute("check", check);

        RequestDispatcher dis = req.getRequestDispatcher("boardWritePro.jsp");
        dis.forward(req, resp);
    }
}
