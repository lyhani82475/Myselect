package com.slxy.www.service;

import com.slxy.www.domain.po.OpeningReport;
import com.slxy.www.domain.vo.SelectUserBaseVo;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

public interface OpeningReportService {
    int addReport(OpeningReport openingReport);

    int deleteReportByNumber(long id);

    int updateReport(OpeningReport openingReport);

    OpeningReport queryByNumber(long id);

    List<OpeningReport> queryAllReport();

    List<OpeningReport> queryByNumberReport(long id);
}

