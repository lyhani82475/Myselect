package com.slxy.www.dao;


import com.slxy.www.domain.po.Score;

import java.util.List;

public interface ScoreDao {
    int addScore(Score score);

    int deleteScoreByNumber(long id);

    int updateScore(Score score);

    Score queryByNumber(long id);

    List<Score> queryAllScore();

    List<Score> queryByNumberScore(long id);


}

