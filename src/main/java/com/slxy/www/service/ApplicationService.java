package com.slxy.www.service;


import com.slxy.www.domain.po.Application;

import java.util.List;

public interface ApplicationService {
    int addApplication(Application literature);

    int deleteApplicationByNumber(long id);

    int updateApplication(Application literature);

    Application queryByNumber(long id);

    List<Application> queryAllApplication();

    List<Application> queryByNumberApplication(long id);
}

