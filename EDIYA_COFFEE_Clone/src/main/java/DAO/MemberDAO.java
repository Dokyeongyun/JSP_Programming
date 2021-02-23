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

    public MemberDTO memberLogin(String id, String password) {
        MemberDTO member = new MemberDTO();
        conn = getConnection();
        try {
            String sql = "SELECT * FROM member WHERE id = ? AND password = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();

            if(rs.next()) {
                String id_ = rs.getString("id");
                String name = rs.getString("name");
                String phone = rs.getString("phone");
                String birthDay = rs.getString("birthDay");

                member.setId(id_);
                member.setName(name);
                member.setPhone(phone);
                member.setBirthDay(birthDay);
                return member;
            }
        }catch(Exception e){
            e.printStackTrace();
        }

        return null;
    }

    public int memberJoin(MemberDTO member){
        int check=-1;
        conn = getConnection();
        try {
            String sql = "INSERT INTO member VALUES(?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, member.getId());
            pstmt.setString(2, member.getPassword());
            pstmt.setString(3, member.getName());
            pstmt.setString(4, member.getBirthDay());
            pstmt.setString(5, member.getPassword());
            check = pstmt.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }

        return check;
    }
}
