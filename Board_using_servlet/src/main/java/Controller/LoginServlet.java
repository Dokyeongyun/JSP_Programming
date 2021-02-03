package Controller;

import Model.MemberDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
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

        String id = req.getParameter("id");
        String password = req.getParameter("password");

        HttpSession session = req.getSession();
        if(session.getAttribute("loginUser") != null){
            check = -2;
        } else {
            check = MemberDAO.instance.login(id, password);
            if(check == 1){
                session.setAttribute("loginUser", id);
            }
        }

        req.setAttribute("check", check);

        RequestDispatcher dis = req.getRequestDispatcher("loginPro.jsp");
        dis.forward(req, resp);
    }
}
