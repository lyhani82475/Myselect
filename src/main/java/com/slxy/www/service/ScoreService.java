package com.slxy.www.service;


import com.slxy.www.domain.po.Score;

import java.util.List;

public interface ScoreService {
    int addScore(Score score);

    int deleteScoreByNumber(long id);

    int updateScore(Score score);

    Score queryByNumber(long id);

    List<Score> queryAllScore();

    List<Score> queryByNumberScore(long id);
}

