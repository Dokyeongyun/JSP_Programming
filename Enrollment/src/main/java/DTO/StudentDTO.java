package DTO;

public class StudentDTO {
    private String stuNum; // 학번
    private String password; // 비밀번호
    private String name; // 이름
    private String address; //주소
    private String tel; // 전화번호
    private String email; // 이메일
    private int major; // 전공 (1==컴공, 2==전자공학, 3==응용수학, 4==교양)
    private int grade; // 학년
    private int hakjum; // 학점 (130학점 이상 -> 졸업요건)

    public String getStuNum() { return stuNum; }
    public void setStuNum(String stuNum) { this.stuNum = stuNum; }
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }
    public String getTel() { return tel; }
    public void setTel(String tel) { this.tel = tel; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public int getMajor() { return major; }
    public void setMajor(int major) { this.major = major; }
    public int getGrade() { return grade; }
    public void setGrade(int grade) { this.grade = grade; }
    public int getHakjum() { return hakjum; }
    public void setHakjum(int hakjum) { this.hakjum = hakjum; }
}
