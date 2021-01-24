package com.board;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class BoardDAO {

    private static final BoardDAO instance = new BoardDAO();
    private static int idNum; // 게시글 고유 번호
    private final ArrayList<BoardDTO> boardList = new ArrayList<>();

    public String realPath = "C:\\Users\\aserv\\IdeaProjects\\456\\web\\txt\\";
    public String fileName = "board.txt";

    public static BoardDAO getInstance() { return instance; }

    // (1) 새 게시글을 저장하는 메서드
    public void boardWrite(BoardDTO board){
        /**
         * 5개의 항목은 입력을 받을 수 없는 데이터로서 직접 값을 저장한다.
         *
         * 1. 게시글 번호   : 마지막 게시글 번호에 1을 증가
         * 2. 작성일       : Date클래스를 활용해 작성일자를 저장
         * 3. ref         : 새글의 ref는 현재 최대 ref값에 1을 증가시킴
         * 4. reStep      : 새글의 reStep 값은 1
         * 5. reLevel     : 새글의 reLevel의 값은 1
         */

        int num = BoardDAO.idNum + 1;
        String regDate = getDate();
        int ref = getMaxOfRef() + 1;
        int reStep = 1;
        int reLevel = 1;

        board.setBoardNum(num);
        board.setRegDate(regDate);
        board.setRef(ref);
        board.setReadCount(0);
        board.setReStep(reStep);
        board.setReLevel(reLevel);
        boardList.add(board);

        BoardDAO.idNum++;

        fileSave();
    }

    // (2) 현재 날짜/시간을 문자열로 리턴해주는 메서드
    public String getDate(){
        SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
        return format.format(new Date());
    }

    // (3) 전체 게시글 수를 리턴하는 메서드
    public int getAllCount(){
        return boardList.size();
    }

    // (4) 최대 ref 값을 리턴하는 메서드
    public int getMaxOfRef(){
        int maxRef = 0;
        for (BoardDTO boardDTO : boardList) {
            maxRef = Math.max(maxRef, boardDTO.getRef());
        }
        return maxRef;
    }

    // (5) 전체 게시글 내용을 출력하는 메서드
    public void printBoardList(){
        for(BoardDTO board : boardList){
            System.out.println(board.toString()+"\n\n\n");
        }
    }

    // (6) boardList를 리턴하는 메서드
    public ArrayList<BoardDTO> getBoardList(){
        return boardList;
    }

    // (7) 게시글번호를 받아 해당 게시글의 인덱스를 리턴해주는 메서드
    public int getBoardIndex(int boardNum){
        for(int i=0; i<boardList.size(); i++){
            if(boardList.get(i).getBoardNum() == boardNum){
                return i;
            }
        }
        return -1;
    }

    // (8) 게시글번호를 받아 해당 게시글 정보를 리턴해주는 메서드 => 조회수 1 증가시키기!
    public BoardDTO getBoardInfo(int boardNum){
        int index = getBoardIndex(boardNum);
        BoardDTO board = boardList.get(index);
        board.setReadCount(board.getReadCount()+1);

        fileSave();
        return board;
    }

    // (9) 파일 저장
    public void fileSave(){
        try{
            FileWriter fw = new FileWriter(realPath+fileName);
            fw.write(getFileData());
            fw.close();
            System.out.println("파일이 저장되었습니다.");
        }catch (Exception e){
            e.printStackTrace();
        }
        fileLoad();
    }

    // (10) 현재 데이터를 문자열로 연결해주는 메서드
    public String getFileData(){
        StringBuilder sb = new StringBuilder();
        for (BoardDTO boardDTO : boardList) {
            sb.append(boardDTO.toString2());
        }
        return sb.toString();
    }

    // (11) 파일 로드
    public void fileLoad(){
        File file = new File(realPath+fileName);
        System.out.println("파일의 실제 위치 = "+realPath);

        if(file.exists()){
            boardList.clear();
            FileReader fr = null;
            BufferedReader br = null;
            try{
                fr = new FileReader(file);
                br = new BufferedReader(fr);
                BoardDAO.idNum = 0;
                while(true){
                    String line = br.readLine();
                    if(line == null) break;

                    String[] info = line.split("/");

                    BoardDTO boardDTO = new BoardDTO();
                    boardDTO.setBoardNum(Integer.parseInt(info[0]));
                    boardDTO.setWriter(info[1]);
                    boardDTO.setEmail(info[2]);
                    boardDTO.setPassword(info[3]);
                    boardDTO.setSubject(info[4]);
                    boardDTO.setContent(info[5]);
                    boardDTO.setRegDate(info[6]);
                    boardDTO.setReadCount(Integer.parseInt(info[7]));
                    boardDTO.setRef(Integer.parseInt(info[8]));
                    boardDTO.setReStep(Integer.parseInt(info[9]));
                    boardDTO.setReLevel(Integer.parseInt(info[10]));
                    boardList.add(boardDTO);
                    BoardDAO.idNum++;
                }
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }

    // (12) 전체 게시글 삭제
    public void boardClear(){
        boardList.clear();
        fileSave();
        BoardDAO.idNum = 0;
    }
}
