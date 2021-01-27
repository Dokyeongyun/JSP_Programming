package DAO;

import DTO.SubjectDTO;

import java.sql.*;
import java.util.ArrayList;

public class SubjectDAO {

    private static SubjectDAO instance = new SubjectDAO();
    public static SubjectDAO getInstance() { return instance; }

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

    public SubjectDTO getSubject(String subjectNum){
        SubjectDTO subject = null;

        String sql = "SELECT * FROM subject01 WHERE subjectNum = ?";

        try{
            conn = getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, subjectNum);
            rs = pstmt.executeQuery();

            if(rs.next()){
                subject = new SubjectDTO();

                subject.setSubjectNum(rs.getString("subjectNum"));
                subject.setSubjectName(rs.getString("subjectName"));
                subject.setProfessorName(rs.getString("professorName"));
                subject.setHakjum(rs.getString("hakjum"));
                subject.setMajor(rs.getString("major"));
                subject.setRoom(rs.getString("room"));
                subject.setSubjectPurpos(rs.getString("subjectPurpos"));
                subject.setSubjectGoal(rs.getString("subjectGoal"));
                subject.setSubjectTest(rs.getString("subjectTest"));
                subject.setGrade(rs.getString("grade"));
                subject.setStudentCount(rs.getString("studentCount"));
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return subject;
    }

    // 수강항목을 추가하는 함수
    public int insertSubject(SubjectDTO subject){
        int check = -1;

        String sql = "SELECT MAX(subjectNum) FROM subject01";
        try{
            conn = getConnection();
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            int max = 0;
            if(rs.next()){
                max = rs.getInt(1);
            }

            String sql2 = "INSERT INTO subject01 VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql2);
            pstmt.setString(1, String.valueOf(max+1));
            pstmt.setString(2, subject.getSubjectName());
            pstmt.setString(3, subject.getProfessorName());
            pstmt.setString(4, subject.getHakjum());
            pstmt.setString(5, subject.getMajor());
            pstmt.setString(6, subject.getRoom());
            pstmt.setString(7, subject.getSubjectPurpos());
            pstmt.setString(8, subject.getSubjectGoal());
            pstmt.setString(9, subject.getSubjectTest());
            pstmt.setString(10, subject.getGrade());
            pstmt.setString(11, subject.getStudentCount());
            check = pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
        return check;
    }

    public ArrayList<SubjectDTO> getSubjectList(){
        ArrayList<SubjectDTO> list = new ArrayList<>();

        String sql = "SELECT * FROM subject01";
        try{
            conn = getConnection();
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while(rs.next()){
                SubjectDTO subject = new SubjectDTO();

                subject.setSubjectNum(rs.getString("subjectNum"));
                subject.setSubjectName(rs.getString("subjectName"));
                subject.setProfessorName(rs.getString("professorName"));
                subject.setHakjum(rs.getString("hakjum"));
                subject.setMajor(rs.getString("major"));
                subject.setRoom(rs.getString("room"));
                subject.setSubjectPurpos(rs.getString("subjectPurpos"));
                subject.setSubjectGoal(rs.getString("subjectGoal"));
                subject.setSubjectTest(rs.getString("subjectTest"));
                subject.setGrade(rs.getString("grade"));
                subject.setStudentCount(rs.getString("studentCount"));

                list.add(subject);
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return list;
    }

    public int deleteSubject(String subjectNum){
        int check = -1;
        String sql = "DELETE FROM subject01 WHERE subjectNum = ?";

        try{
            conn = getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, subjectNum);
            check = pstmt.executeUpdate();
        } catch (Exception e){
            e.printStackTrace();
        }
        return check;
    }
}
