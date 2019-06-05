package com.slxy.www.service.impl;

import com.slxy.www.dao.OpeningReportDao;
import com.slxy.www.domain.po.OpeningReport;
import com.slxy.www.domain.po.SelectUserBase;
import com.slxy.www.domain.vo.SelectUserBaseVo;
import com.slxy.www.service.OpeningReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Service
public class OpeningReportServiceImpl implements OpeningReportService {

    @Autowired
    private OpeningReportDao openingReportDao;

    @Override
    public int addReport(OpeningReport openingReport) {
        return openingReportDao.addReport(openingReport);
    }

    @Override
    public int deleteReportByNumber(long id) {
        return openingReportDao.deleteReportByNumber(id);
    }

    @Override
    public int updateReport(OpeningReport openingReport) {
        return openingReportDao.updateReport(openingReport);
    }

    @Override
    public OpeningReport queryByNumber(long id) {
        return openingReportDao.queryByNumber(id);
    }

    @Override
    public List<OpeningReport> queryAllReport() {
        return openingReportDao.queryAllReport();
    }

    @Override
    public List<OpeningReport> queryByNumberReport(long id) {
        return openingReportDao.queryByNumberReport(id);
    }


}
