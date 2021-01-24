package com.board;

public class BoardDTO {
    /**
     * 게시글 번호, 작성자, 이메일, 게시글비밀번호, 제목, 내용, 작성일자, 조회수, 게시글 내용크기, 등급표시, 레벨(새싹, 일반)
     */
    private int boardNum;
    private String writer;
    private String email;
    private String password;
    private String subject;
    private String content;
    private String regDate;
    private int readCount;
    private int ref;
    private int reStep;
    private int reLevel;

    public int getBoardNum() { return boardNum; }
    public void setBoardNum(int boardNum) { this.boardNum = boardNum; }
    public String getWriter() { return writer; }
    public void setWriter(String writer) { this.writer = writer; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
    public String getSubject() { return subject; }
    public void setSubject(String subject) { this.subject = subject; }
    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }
    public String getRegDate() { return regDate; }
    public void setRegDate(String regDate) { this.regDate = regDate; }
    public int getReadCount() { return readCount; }
    public void setReadCount(int readCount) { this.readCount = readCount; }
    public int getRef() { return ref; }
    public void setRef(int ref) { this.ref = ref; }
    public int getReStep() { return reStep; }
    public void setReStep(int reStep) { this.reStep = reStep; }
    public int getReLevel() { return reLevel; }
    public void setReLevel(int reLevel) { this.reLevel = reLevel; }

    @Override
    public String toString() {
        return "["+boardNum+"] "+subject+"\t"+readCount ;
    }

    public String toString2() {
        return boardNum+"/"+writer+"/"+email+"/"+password+"/"+subject+"/"+content
                +"/"+regDate+"/"+readCount+"/"+ref+"/"+reStep+"/"+reLevel+"\n";
    }

}
