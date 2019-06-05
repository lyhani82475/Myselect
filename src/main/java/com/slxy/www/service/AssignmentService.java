package com.slxy.www.service;

import com.slxy.www.domain.po.Assignment;

import java.util.List;

public interface AssignmentService {
    int addAssignment(Assignment assignment);

    int deleteAssignmentByNumber(long id);

    int updateAssignment(Assignment assignment);

    Assignment queryByNumber(long id);

    List<Assignment> queryAllAssignment();

    List<Assignment> queryByNumberAssignment(long id);
}

