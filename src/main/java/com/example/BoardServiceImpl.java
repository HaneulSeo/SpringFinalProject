package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService{
    @Autowired
    BoardDao boardDao;

    @Override
    public int insertBoard(BoardVo vo) {
        return boardDao.insertBoard(vo);
    }

    @Override
    public int deleteBoard(int seq) {
        return boardDao.deleteBoard(seq);
    }

    @Override
    public int updateBoard(BoardVo vo) {
        return boardDao.updateBoard(vo);
    }

    @Override
    public BoardVo getBoard(int seq) {
        return boardDao.getBoard(seq);
    }

    @Override
    public List<BoardVo> getBoardList() {
        return boardDao.getBoardList();
    }
}
