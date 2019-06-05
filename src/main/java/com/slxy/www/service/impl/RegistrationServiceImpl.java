package com.slxy.www.service.impl;


import com.slxy.www.service.RegistrationService;
import com.slxy.www.dao.RegistrationDao;
import com.slxy.www.domain.po.Registration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RegistrationServiceImpl implements RegistrationService {

    @Autowired
    private RegistrationDao registrationDao;

    @Override
    public int addRegistration(Registration registration) {
        return registrationDao.addRegistration(registration);
    }

    @Override
    public int deleteRegistrationByNumber(long id) {
        return registrationDao.deleteRegistrationByNumber(id);
    }

    @Override
    public int updateRegistration(Registration registration) {
        return registrationDao.updateRegistration(registration);
    }

    @Override
    public Registration queryByNumber(long id) {
        return registrationDao.queryByNumber(id);
    }

    @Override
    public List<Registration> queryAllRegistration() {
        return registrationDao.queryAllRegistration();
    }

    @Override
    public List<Registration> queryByNumberRegistration(long id) {
        return registrationDao.queryByNumberRegistration(id);
    }


}
