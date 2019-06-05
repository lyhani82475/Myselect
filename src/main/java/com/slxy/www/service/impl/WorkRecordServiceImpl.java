package com.slxy.www.service.impl;

import com.slxy.www.dao.WorkRecordDao;
import com.slxy.www.domain.po.WorkRecord;
import com.slxy.www.service.WorkRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WorkRecordServiceImpl implements WorkRecordService {

    @Autowired
    private WorkRecordDao workRecordDao;

    @Override
    public int addWorkRecord(WorkRecord workRecord) {
        return workRecordDao.addWorkRecord(workRecord);
    }

    @Override
    public int deleteWorkRecordByNumber(long id) {
        return workRecordDao.deleteWorkRecordByNumber(id);
    }

    @Override
    public int updateWorkRecord(WorkRecord workRecord) {
        return workRecordDao.updateWorkRecord(workRecord);
    }

    @Override
    public WorkRecord queryByNumber(long id) {
        return workRecordDao.queryByNumber(id);
    }

    @Override
    public List<WorkRecord> queryAllWorkRecord() {
        return workRecordDao.queryAllWorkRecord();
    }

    @Override
    public List<WorkRecord> queryByNumberWorkRecord(long id) {
        return workRecordDao.queryByNumberWorkRecord(id);
    }

}
