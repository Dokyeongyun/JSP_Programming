package Controller;

import Action.*;
import Action.Board.BoardDetailAction;
import Action.Board.BoardListAction;
import Action.Board.BoardModifyAction;
import Action.Board.BoardWriteAction;
import Action.File.FileUploadAction;
import Action.User.JoinAction;
import Action.User.LoginAction;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("*.do")
public class Controller extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String requestURI = req.getRequestURI();
        int lastIndex = requestURI.lastIndexOf("/") + 1;
        String requestPage = requestURI.substring(lastIndex);

        System.out.println("requestURI: " + requestURI);
        System.out.println("requestPage: " + requestPage);

        Action action = null;
        ActionForward actionForward = null;

        try{
            if(requestPage.equals("board.do")){
                action = new BoardListAction();
                actionForward = action.execute(req, resp);
            } else if(requestPage.equals("boardDetail.do")){
                action = new BoardDetailAction();
                actionForward = action.execute(req, resp);
            } else if(requestPage.equals("boardWrite.do")){
                action = new BoardWriteAction();
                actionForward = action.execute(req, resp);
            } else if(requestPage.equals("fileUpload.do")){
                action = new FileUploadAction();
                actionForward = action.execute(req, resp);
            } else if(requestPage.equals("join.do")){
                action = new JoinAction();
                actionForward = action.execute(req, resp);
            } else if(requestPage.equals("login.do")){
                action = new LoginAction();
                actionForward = action.execute(req, resp);
            } else if(requestPage.equals("boardModify.do")){
                action = new BoardModifyAction();
                actionForward = action.execute(req, resp);
            }

            if(actionForward != null){
                if(actionForward.isRedirect()){
                    resp.sendRedirect(actionForward.getNextPath());
                }else{
                    req.getRequestDispatcher(actionForward.getNextPath()).forward(req, resp);
                }
            }
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
