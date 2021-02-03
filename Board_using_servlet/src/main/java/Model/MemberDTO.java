package Model;

public class MemberDTO {
    private String id;
    private String password;
    private String name;
    private String nickName;

    public MemberDTO(){}

    public MemberDTO(String id, String password, String name, String nickName) {
        this.id = id;
        this.password = password;
        this.name = name;
        this.nickName = nickName;
    }

    public String getId() { return id; }
    public void setId(String id) { this.id = id; }
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getNickName() { return nickName; }
    public void setNickName(String nickName) { this.nickName = nickName; }
}
