package Action.Board;

import Action.*;
import Model.BoardDAO;
import Model.BoardDTO;
import Model.MemberDAO;
import Model.MemberDTO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class BoardWriteAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.setCharacterEncoding("UTF-8");

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

        ActionForward actionForward = new ActionForward();
        actionForward.setNextPath("boardWritePro.jsp");
        actionForward.setRedirect(false);

        return actionForward;
    }
}
