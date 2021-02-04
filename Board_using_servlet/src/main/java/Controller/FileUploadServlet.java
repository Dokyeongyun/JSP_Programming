package Controller;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

@WebServlet("/fileUpload.do")
public class FileUploadServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req, resp);
    }

    public void reqPro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // request.getRealPath("상대경로")를 이용해 파일을 저장할 절대 경로를 구해옴
        // 운영체제 및 프로젝트가 위치할 환경에 따라 경로가 다름

        HttpSession session = req.getSession();
        String loginUser = (String) session.getAttribute("loginUser");

        if(loginUser == null){
            loginUser = "GUEST";
        }

        String realPath = req.getRealPath("/uploadFile");
        System.out.println("절대경로: "+realPath);

        // 한 번에 올릴 수 있는 파일 용량 : 10Mb
        int maxSize = 1024*1024*10;

        String title = "";

        String originalName = "";
        String uniqueFileName = "";

        long fileSize = 0;
        String fileType = "";

        MultipartRequest multi = null;

        try {
            multi = new MultipartRequest(req, realPath, maxSize, "UTF-8", new DefaultFileRenamePolicy());

            title = multi.getParameter("title");

            // 전송한 전체 파일의 이름을 가져옴
            Enumeration files = multi.getFileNames();

            while(files.hasMoreElements()){
                // 파일 이름
                String fileName = (String) files.nextElement();
                // 실제 파일이름
                originalName = multi.getOriginalFileName(fileName);
                // 파일명이 중복될 경우 중복정책에 의해 (ex 1,2,3...) Unique하게 파일명을 생성
                uniqueFileName = multi.getFilesystemName(fileName);
                // 파일의 타입 가져오기
                fileType = multi.getContentType(fileName);
                System.out.println(fileName);
                // 실제 파일을 가져옴
                File file = multi.getFile(fileName);
                // 파일 사이즈
                fileSize = file.length();
            }
        } catch (Exception e){
            e.printStackTrace();
        }

        req.setAttribute("writer", loginUser);
        req.setAttribute("title", title);
        req.setAttribute("fileName", uniqueFileName);
        req.setAttribute("originalName", originalName);

        RequestDispatcher dis = req.getRequestDispatcher("index.jsp?center=fileCheck.jsp");
        dis.forward(req, resp);
    }
}
