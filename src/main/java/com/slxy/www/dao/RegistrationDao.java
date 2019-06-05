package com.slxy.www.dao;


import com.slxy.www.domain.po.Registration;

import java.util.List;

public interface RegistrationDao {
    int addRegistration(Registration registration);

    int deleteRegistrationByNumber(long id);

    int updateRegistration(Registration registration);

    Registration queryByNumber(long id);

    List<Registration> queryAllRegistration();

    List<Registration> queryByNumberRegistration(long id);
}
