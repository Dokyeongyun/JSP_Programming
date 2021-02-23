package DAO;

import DTO.MemberDTO;

import java.sql.*;

public class MemberDAO {
    public static MemberDAO instance = new MemberDAO();

    Connection conn=null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    public Connection getConnection() {
        String dbURL = "jdbc:mysql://localhost:3306/EDIYA?serverTimezone=UTC&useSSL=false";
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

    public int memberLogin(String id, String password) {
        int check=-1;
        conn = getConnection();
        try {
            String sql = "SELECT COUNT(*) FROM member WHERE id = ? AND password = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();

            if(rs.next()) {
                if(rs.getInt(1) == 1){
                    check = 1;
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }

        return check;
    }
}
