package com.slxy.www.service.impl;



import com.slxy.www.dao.AssignmentDao;
import com.slxy.www.domain.po.Assignment;
import com.slxy.www.service.AssignmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AssignmentServiceImpl implements AssignmentService {

    @Autowired
    private AssignmentDao assignmentDao;

    @Override
    public int addAssignment(Assignment assignment) {
        return assignmentDao.addAssignment(assignment);
    }

    @Override
    public int deleteAssignmentByNumber(long id) {
        return assignmentDao.deleteAssignmentByNumber(id);
    }

    @Override
    public int updateAssignment(Assignment assignment) {
        return assignmentDao.updateAssignment(assignment);
    }

    @Override
    public Assignment queryByNumber(long id) {
        return assignmentDao.queryByNumber(id);
    }

    @Override
    public List<Assignment> queryAllAssignment() {
        return assignmentDao.queryAllAssignment();
    }

    @Override
    public List<Assignment> queryByNumberAssignment(long id) {
        return assignmentDao.queryByNumberAssignment(id);
    }



}
