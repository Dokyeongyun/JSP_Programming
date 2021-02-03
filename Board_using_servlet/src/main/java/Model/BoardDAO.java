package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {
    public static BoardDAO instance = new BoardDAO();
    public static BoardDAO getInstance() { return instance; }

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    public Connection getConnection() {
        String dbURL = "jdbc:mysql://localhost:3306/boardUsingServlet?serverTimezone=UTC";
        String dbID = "root";
        String dbPassword = "1234";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    // 게시글 추가
    public int boardInsert(BoardDTO board){
        int check = -1;
        try{
            conn = getConnection();
            String sql = "INSERT INTO board(title, content, writer, nickName) VALUES(?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, board.getTitle());
            pstmt.setString(2, board.getContent());
            pstmt.setString(3, board.getWriter());
            pstmt.setString(4, board.getNickName());

            check = pstmt.executeUpdate();

        } catch (Exception e){
            e.printStackTrace();
        }

        return check;
    }

    // 게시글 목록 조회
    public ArrayList<BoardDTO> getBoardList(){
        ArrayList<BoardDTO> list = new ArrayList<>();
        try{
            conn = getConnection();
            String sql = "SELECT * FROM board ORDER BY num DESC";
            pstmt = conn.prepareStatement(sql);

            rs = pstmt.executeQuery();

            while(rs.next()){
                int num = rs.getInt("num");
                String title = rs.getString("title");
                String content = rs.getString("content");
                String writer = rs.getString("writer");
                String nickName = rs.getString("nickname");
                int hit = rs.getInt("hit");
                String regDate = rs.getString("regDate");

                BoardDTO temp = new BoardDTO(String.valueOf(num), title, content, writer, nickName, String.valueOf(hit), regDate);
                list.add(temp);
            }

        } catch (Exception e){
            e.printStackTrace();
        }

        return list;
    }

    // num번 게시글의 정보 조회
    public BoardDTO getOneBoard(String inputNum){
        BoardDTO board = new BoardDTO();
        try{
            conn = getConnection();
            updateHit(inputNum);

            String sql = "SELECT * FROM board WHERE num = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, inputNum);

            rs = pstmt.executeQuery();

            if(rs.next()){
                String num = rs.getString("num");
                String title = rs.getString("title");
                String content = rs.getString("content");
                String writer = rs.getString("writer");
                String nickName = rs.getString("nickName");
                String hit = rs.getString("hit");
                String regDate = rs.getString("regDate");

                board = new BoardDTO(num, title, content, writer, nickName, hit, regDate);
            }

        } catch (Exception e){
            e.printStackTrace();
        }

        return board;
    }

    // num번 게시글의 제목, 본문 수정
    public int updateBoard(String inputNum, String newTitle, String newContent){
        int check = -1;
        try{
            conn = getConnection();
            String sql = "UPDATE board SET title = ?, content = ? WHERE num = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, newTitle);
            pstmt.setString(2, newContent);
            pstmt.setString(3, inputNum);

            check = pstmt.executeUpdate();

        } catch (Exception e){
            e.printStackTrace();
        }

        return check;
    }

    // num번 게시글 삭제
    public int deleteBoard(String inputNum){
        int check = -1;
        try{
            conn = getConnection();
            String sql = "DELETE FROM board WHERE num = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, inputNum);

            check = pstmt.executeUpdate();

        } catch (Exception e){
            e.printStackTrace();
        }

        return check;
    }

    // num번 게시글 조회수 1 증가
    public int updateHit(String inputNum){
        int check = -1;
        try{
            conn = getConnection();
            String sql = "UPDATE board SET hit = hit+1 WHERE num = ?;";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, inputNum);

            check = pstmt.executeUpdate();

        } catch (Exception e){
            e.printStackTrace();
        }

        return check;
    }
}
