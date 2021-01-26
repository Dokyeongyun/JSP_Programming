package DTO;

public class SubjectDTO {
    private String subjectNum; // 수강과목번호
    private String subjectName; // 수강과목명
    private String professorName; // 교수명
    private String hakjum; // 학점
    private String major; // 전공
    private String room; // 반
    private String subjectPurpos; // 어떤 공부?
    private String subjectGoal; // 취업
    private String subjectTest; // 평가
    private String grade; // 학년
    private String studentCount; // 학생수

    public String getSubjectNum() { return subjectNum; }
    public void setSubjectNum(String subjectNum) { this.subjectNum = subjectNum; }
    public String getSubjectName() { return subjectName; }
    public void setSubjectName(String subjectName) { this.subjectName = subjectName; }
    public String getProfessorName() { return professorName; }
    public void setProfessorName(String professorName) { this.professorName = professorName; }
    public String getHakjum() { return hakjum; }
    public void setHakjum(String hakjum) { this.hakjum = hakjum; }
    public String getMajor() { return major; }
    public void setMajor(String major) { this.major = major; }
    public String getRoom() { return room; }
    public void setRoom(String room) { this.room = room; }
    public String getSubjectPurpos() { return subjectPurpos; }
    public void setSubjectPurpos(String subjectPurpos) { this.subjectPurpos = subjectPurpos; }
    public String getSubjectGoal() { return subjectGoal; }
    public void setSubjectGoal(String subjectGoal) { this.subjectGoal = subjectGoal; }
    public String getSubjectTest() { return subjectTest; }
    public void setSubjectTest(String subjectTest) { this.subjectTest = subjectTest; }
    public String getGrade() { return grade; }
    public void setGrade(String grade) { this.grade = grade; }
    public String getStudentCount() { return studentCount; }
    public void setStudentCount(String studentCount) { this.studentCount = studentCount; }
}
