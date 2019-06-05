package com.slxy.www.dao;

import com.slxy.www.domain.po.OpeningReport;

import java.util.List;

public interface OpeningReportDao {
    int addReport(OpeningReport openingReport);

    int deleteReportByNumber(long id);

    int updateReport(OpeningReport openingReport);

    OpeningReport queryByNumber(long id);

    List<OpeningReport> queryAllReport();

    List<OpeningReport> queryByNumberReport(long id);


}

