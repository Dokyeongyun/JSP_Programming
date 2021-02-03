package Model;

public class BoardDTO {

    public BoardDTO(){}
    public BoardDTO(String num, String title, String content, String writer, String nickName, String hit, String regDate) {
        this.num = num;
        this.title = title;
        this.content = content;
        this.writer = writer;
        this.nickName = nickName;
        this.hit = hit;
        this.regDate = regDate;
    }
    public BoardDTO(String title, String content, String writer, String nickName) {
        this.title = title;
        this.content = content;
        this.writer = writer;
        this.nickName = nickName;
    }

    private String num;
    private String title;
    private String content;
    private String writer;
    private String nickName;
    private String hit;
    private String regDate;

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getHit() {
        return hit;
    }

    public void setHit(String hit) {
        this.hit = hit;
    }

    public String getRegDate() {
        return regDate;
    }

    public void setRegDate(String regDate) {
        this.regDate = regDate;
    }

    @Override
    public String toString() {
        return "BoardDTO{" +
                "num='" + num + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", writer='" + writer + '\'' +
                ", nickName='" + nickName + '\'' +
                ", hit='" + hit + '\'' +
                ", regDate='" + regDate + '\'' +
                '}';
    }
}
