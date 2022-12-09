package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDao {
    @Autowired
    SqlSession sqlSession;

    public int insertBoard(BoardVo vo) {
        int result = sqlSession.insert("BOARD.insertBoard", vo);
        return result;
    }

    public int deleteBoard(int seq) {
        int result = sqlSession.delete("BOARD.deleteBoard", seq);
        return result;
    }

    public int updateBoard(BoardVo vo) {
        int result = sqlSession.update("BOARD.updateBoard", vo);
        return result;
    }

    public BoardVo getBoard(int seq) {
        BoardVo one = sqlSession.selectOne("BOARD.getBoard", seq);
        return one;
    }

    public List<BoardVo> getBoardList() {
        List<BoardVo> list = sqlSession.selectList("BOARD.getBoardList");
        return list;
    }
}
