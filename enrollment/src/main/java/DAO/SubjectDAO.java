package DAO;

import DTO.StudentDTO;

import java.sql.*;

public class SubjectDAO {

    private static StudentDAO instance = new StudentDAO();
    public static StudentDAO getInstance() { return instance; }

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    private Connection getConnection() throws ClassNotFoundException, SQLException {
        String jdbcUrl = "jdbc:mysql://localhost:3306/enrollment01?serverTimezone=UTC&useSSL=false";
        String dbId = "root";
        String dbPw = "1234";

        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
        return conn;
    }


    // 관리자인지 확인하는 함수
    public int managerCheck(String stuNum, String password){
        int check = -1;

        String sql = "SELECT * FROM manager WHERE stuNum = ? AND password = ?";

        try{
            conn = getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, stuNum);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();

            check = rs.next() ? 1 : 0;
        } catch (Exception e){
            e.printStackTrace();
        }
        return check;
    }

    public int studentCheck(String stuNum, String password){
        int check = -1;
        String dbPassword = "";

        String sql = "SELECT password FROM member WHERE stuNum = ?";

        try{
            conn = getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, stuNum);
            rs = pstmt.executeQuery();

            if(rs.next()){
                dbPassword = rs.getString("password");
                check = dbPassword.equals(password) ? 1 : 0;
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return check;
    }

    // 학생의 정보를 DTO.StudentDTO 클래스로 반환받는 함수 작성
    public StudentDTO getStudent(String stuNum){
        StudentDTO student = null;

        String sql = "SELECT * FROM member WHERE stuNum = ?";

        try{
            conn = getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, stuNum);
            rs = pstmt.executeQuery();

            if(rs.next()){
                student = new StudentDTO();

                student.setStuNum(rs.getString("stuNum"));
                student.setPassword(rs.getString("password"));
                student.setName(rs.getString("name"));
                student.setAddress(rs.getString("address"));
                student.setTel(rs.getString("tel"));
                student.setEmail(rs.getString("email"));
                student.setMajor(rs.getInt("major"));
                student.setGrade(rs.getInt("grade"));
                student.setHakjum(rs.getInt("hakjum"));
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return student;
    }
}
