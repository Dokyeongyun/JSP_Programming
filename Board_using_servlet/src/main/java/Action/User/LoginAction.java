package Action.User;

import Action.*;
import Model.MemberDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.setCharacterEncoding("UTF-8");

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

        ActionForward actionForward = new ActionForward();
        actionForward.setNextPath("loginPro.jsp");
        actionForward.setRedirect(false);

        return actionForward;
    }
}
