package Action.Board;

import Action.*;
import Model.BoardDAO;
import Model.BoardDTO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class BoardListAction implements Action{
    @Override
    public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        ArrayList<BoardDTO> list = BoardDAO.getInstance().getBoardList();
        req.setAttribute("list", list);

        ActionForward actionForward = new ActionForward();
        actionForward.setNextPath("index.jsp?center=board.jsp");
        actionForward.setRedirect(false);
        return actionForward;
    }
}
