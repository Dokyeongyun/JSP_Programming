package Action.Board;

import Action.*;
import Model.BoardDAO;
import Model.BoardDTO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BoardDetailAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String num = req.getParameter("num");
        BoardDTO board = BoardDAO.getInstance().getOneBoard(num);
        req.setAttribute("boardDetail", board);

        ActionForward actionForward = new ActionForward();
        actionForward.setNextPath("index.jsp?center=boardDetail.jsp");
        actionForward.setRedirect(false);

        return actionForward;
    }
}
