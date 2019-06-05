package com.slxy.www.service.forWord;

import com.slxy.www.domain.po.OpeningReport;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.usermodel.Range;
import org.springframework.util.ObjectUtils;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class OpeningReportForWord {

    public void testWrite(OpeningReport openingReport) throws Exception {


        String classpath = this.getClass().getResource("/").getPath().replaceFirst("/", "");
        String docRoot = classpath.replaceAll("WEB-INF/classes/", "doc");
        String templatePath=docRoot+ "doc/" + "开题报告.doc";


        InputStream is = new FileInputStream(templatePath);
        HWPFDocument doc = new HWPFDocument(is);
        Range range = doc.getRange();
        range.replaceText("${faculty}", ObjectUtils.isEmpty(openingReport.getOpeningReportFaculty())?"":openingReport.getOpeningReportFaculty());
        range.replaceText("${major}", ObjectUtils.isEmpty(openingReport.getOpeningReportMajor())?"":openingReport.getOpeningReportMajor());
        range.replaceText("${name}", ObjectUtils.isEmpty(openingReport.getOpeningReportName())?"":openingReport.getOpeningReportName());
        range.replaceText("${number}",ObjectUtils.isEmpty(openingReport.getOpeningReportNumber())?"":String.valueOf(openingReport.getOpeningReportNumber()));
        range.replaceText("${title}",ObjectUtils.isEmpty(openingReport.getOpeningReportTitle())?"":openingReport.getOpeningReportTitle());
        range.replaceText("${content}", ObjectUtils.isEmpty(openingReport.getOpeningReportContent())?"":openingReport.getOpeningReportContent());
        range.replaceText("${time}", ObjectUtils.isEmpty(openingReport.getOpeningReportTime())?"":openingReport.getOpeningReportTime());
        range.replaceText("${teacher}", ObjectUtils.isEmpty(openingReport.getOpeningReportTeacher())?"":openingReport.getOpeningReportTeacher());
        range.replaceText("${job_title}",ObjectUtils.isEmpty(openingReport.getOpeningReportJob_title())?"":openingReport.getOpeningReportJob_title());
        range.replaceText("${source}",ObjectUtils.isEmpty(openingReport.getOpeningReportSource())?"":openingReport.getOpeningReportSource());
        range.replaceText("${type}", ObjectUtils.isEmpty(openingReport.getOpeningReportType())?"":openingReport.getOpeningReportType());
        range.replaceText("${significance}", ObjectUtils.isEmpty(openingReport.getOpeningReportSignificance())?"":openingReport.getOpeningReportSignificance());
        range.replaceText("${status}", ObjectUtils.isEmpty(openingReport.getOpeningReportStatus())?"":openingReport.getOpeningReportStatus());
        range.replaceText("${technology}",ObjectUtils.isEmpty(openingReport.getOpeningReportTechnology())?"":openingReport.getOpeningReportTechnology());
        range.replaceText("${step}",ObjectUtils.isEmpty(openingReport.getOpeningReportStep())?"":openingReport.getOpeningReportStep());
        range.replaceText("${literature}", ObjectUtils.isEmpty(openingReport.getOpeningReportLiterature())?"":openingReport.getOpeningReportLiterature());
        range.replaceText("${opinion1}", ObjectUtils.isEmpty(openingReport.getOpeningReportOpinion1())?"":openingReport.getOpeningReportOpinion1());
        range.replaceText("${opinion2}", ObjectUtils.isEmpty(openingReport.getOpeningReportOpinion2())?"":openingReport.getOpeningReportOpinion2());
        range.replaceText("${opinion3}", ObjectUtils.isEmpty(openingReport.getOpeningReportOpinion3())?"":openingReport.getOpeningReportOpinion3());
        String newName = String.valueOf(openingReport.getOpeningReportNumber())+"+"+openingReport.getOpeningReportName()+"+开题报告.doc";
        OutputStream os = new FileOutputStream("C:\\Users\\Administrator\\Desktop\\"+newName);
        //把doc输出到输出流中
        doc.write(os);
        this.closeStream(os);
        this.closeStream(is);
    }

    /**
     * 关闭输入流
     * @param is
     */
    private void closeStream(InputStream is) {
        if (is != null) {
            try {
                is.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 关闭输出流
     * @param os
     */
    private void closeStream(OutputStream os) {
        if (os != null) {
            try {
                os.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }


}
