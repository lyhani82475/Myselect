package com.slxy.www.dao;


import com.slxy.www.domain.po.Application;

import java.util.List;

public interface ApplicationDao {
    int addApplication(Application application);

    int deleteApplicationByNumber(long id);

    int updateApplication(Application application);

    Application queryByNumber(long id);

    List<Application> queryAllApplication();

    List<Application> queryByNumberApplication(long id);


}

