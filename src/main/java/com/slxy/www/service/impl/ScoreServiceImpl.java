package com.slxy.www.service.impl;


import com.slxy.www.service.ScoreService;
import com.slxy.www.dao.ScoreDao;
import com.slxy.www.domain.po.Score;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ScoreServiceImpl implements ScoreService {

    @Autowired
    private ScoreDao scoreDao;

    @Override
    public int addScore(Score score) {
        return scoreDao.addScore(score);
    }

    @Override
    public int deleteScoreByNumber(long id) {
        return scoreDao.deleteScoreByNumber(id);
    }

    @Override
    public int updateScore(Score score) {
        return scoreDao.updateScore(score);
    }

    @Override
    public Score queryByNumber(long id) {
        return scoreDao.queryByNumber(id);
    }

    @Override
    public List<Score> queryAllScore() {
        return scoreDao.queryAllScore();
    }

    @Override
    public List<Score> queryByNumberScore(long id) {
        return scoreDao.queryByNumberScore(id);
    }



}
