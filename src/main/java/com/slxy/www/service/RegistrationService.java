package com.slxy.www.service;


import com.slxy.www.domain.po.Registration;

import java.util.List;

public interface RegistrationService {
    int addRegistration(Registration registration);

    int deleteRegistrationByNumber(long id);

    int updateRegistration(Registration registration);

    Registration queryByNumber(long id);

    List<Registration> queryAllRegistration();

    List<Registration> queryByNumberRegistration(long id);
}
