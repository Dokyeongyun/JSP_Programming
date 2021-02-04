package Action.User;

import Action.*;
import Model.MemberDAO;
import Model.MemberDTO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class JoinAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.setCharacterEncoding("UTF-8");

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

        ActionForward actionForward = new ActionForward();
        actionForward.setNextPath("joinPro.jsp");
        actionForward.setRedirect(false);

        return actionForward;
    }
}
