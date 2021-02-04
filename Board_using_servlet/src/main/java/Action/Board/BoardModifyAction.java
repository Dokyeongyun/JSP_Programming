package Action.Board;

import Action.*;
import Model.BoardDAO;
import Model.BoardDTO;
import Model.MemberDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class BoardModifyAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.setCharacterEncoding("UTF-8");

        BoardDTO board = new BoardDTO();

        String num = req.getParameter("num");

        if(num!=null){
            board = BoardDAO.getInstance().getOneBoard(num);
        }

        req.setAttribute("board", board);

        ActionForward actionForward = new ActionForward();
        actionForward.setNextPath("index.jsp?center=boardDetail.jsp");
        actionForward.setRedirect(false);

        return actionForward;
    }
}
