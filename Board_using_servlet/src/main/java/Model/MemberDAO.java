package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {

    public static MemberDAO instance = new MemberDAO();
    public static MemberDAO getInstance() { return instance; }

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

    // 로그인
    public int login(String id, String password){
        int check = -1;
        try{
            conn = getConnection();
            String sql = "SELECT COUNT(*) FROM member WHERE id = ? AND password = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, password);

            rs = pstmt.executeQuery();

            if(rs.next()){
                if(rs.getInt(1)==1){
                    return 1;
                }
            }
        } catch (Exception e){
            e.printStackTrace();
        }

        return check;
    }

    // 회원가입
    public int join(MemberDTO member){
        int check = -1;

        try {
            conn = getConnection();
            String sql = "INSERT INTO member(id, password, name, nickName) VALUES(?,?,?,?)";
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, member.getId());
            pstmt.setString(2, member.getPassword());
            pstmt.setString(3, member.getName());
            pstmt.setString(3, member.getName());

            check = pstmt.executeUpdate();
        } catch (Exception e){
            e.printStackTrace();
        }
        return check;
    }

    // 유저정보 가져오기
    public MemberDTO getUserInfo(String inputId){
        MemberDTO member = new MemberDTO();

        try {
            conn = getConnection();
            String sql = "SELECT * FROM member WHERE id = ?";
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, inputId);
            rs = pstmt.executeQuery();

            if(rs.next()){
                String id = rs.getString("id");
                String name = rs.getString("name");
                String nickName = rs.getString("nickName");

                member = new MemberDTO(id, "", name, nickName);
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return member;
    }
}
