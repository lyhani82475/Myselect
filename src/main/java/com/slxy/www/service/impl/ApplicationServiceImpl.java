package com.slxy.www.service.impl;


import com.slxy.www.service.ApplicationService;
import com.slxy.www.dao.ApplicationDao;
import com.slxy.www.domain.po.Application;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApplicationServiceImpl implements ApplicationService {

    @Autowired
    private ApplicationDao applicationDao;

    @Override
    public int addApplication(Application application) {
        return applicationDao.addApplication(application);
    }

    @Override
    public int deleteApplicationByNumber(long id) {
        return applicationDao.deleteApplicationByNumber(id);
    }

    @Override
    public int updateApplication(Application application) {
        return applicationDao.updateApplication(application);
    }

    @Override
    public Application queryByNumber(long id) {
        return applicationDao.queryByNumber(id);
    }

    @Override
    public List<Application> queryAllApplication() {
        return applicationDao.queryAllApplication();
    }

    @Override
    public List<Application> queryByNumberApplication(long id) {
        return applicationDao.queryByNumberApplication(id);
    }



}
