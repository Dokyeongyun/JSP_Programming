/*
package Controller;

import Model.BoardDAO;
import Model.BoardDTO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/boardModify.do")
public class BoardModifyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    public void reqPro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        BoardDTO board = new BoardDTO();

        String num = req.getParameter("num");

        if(num!=null){
            board = BoardDAO.getInstance().getOneBoard(num);
        }

        req.setAttribute("board", board);

        RequestDispatcher dis = req.getRequestDispatcher("index.jsp?center=boardDetail.jsp");
        dis.forward(req, resp);
    }
}
*/
