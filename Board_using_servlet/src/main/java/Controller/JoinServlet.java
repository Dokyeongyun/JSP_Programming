package Controller;

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

@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req, resp);
    }

    public void reqPro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int check = 0;

        String id = req.getParameter("id");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String nickName = req.getParameter("nickName");
        MemberDTO member = new MemberDTO(id, password, name, nickName);

        HttpSession session = req.getSession();

        if(session.getAttribute("loginUser") != null){
            check = -2;
        } else {
            check = MemberDAO.getInstance().join(member);
        }

        req.setAttribute("check", check);

        RequestDispatcher dis = req.getRequestDispatcher("joinPro.jsp");
        dis.forward(req, resp);
    }
}
