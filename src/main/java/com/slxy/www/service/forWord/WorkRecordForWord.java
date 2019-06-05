package com.slxy.www.service.forWord;

import com.slxy.www.domain.po.WorkRecord;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.usermodel.Range;
import org.springframework.util.ObjectUtils;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class WorkRecordForWord {

    public void testWrite(WorkRecord workRecord) throws Exception {


        String classpath = this.getClass().getResource("/").getPath().replaceFirst("/", "");
        String docRoot = classpath.replaceAll("WEB-INF/classes/", "doc");
        String templatePath=docRoot+ "doc/" + "指导工作记录表.doc";


        InputStream is = new FileInputStream(templatePath);
        HWPFDocument doc = new HWPFDocument(is);
        Range range = doc.getRange();
        range.replaceText("${name}", ObjectUtils.isEmpty(workRecord.getWorkRecordName())?"":workRecord.getWorkRecordName());
        range.replaceText("${number}",ObjectUtils.isEmpty(workRecord.getWorkRecordNumber())?"":String.valueOf(workRecord.getWorkRecordNumber()));
        range.replaceText("${faculty}", ObjectUtils.isEmpty(workRecord.getWorkRecordFaculty())?"":workRecord.getWorkRecordFaculty());
        range.replaceText("${major}", ObjectUtils.isEmpty(workRecord.getWorkRecordMajor())?"":workRecord.getWorkRecordMajor());
        range.replaceText("${class}", ObjectUtils.isEmpty(workRecord.getWorkRecordClass())?"":workRecord.getWorkRecordClass());
        range.replaceText("${teacher}",ObjectUtils.isEmpty(workRecord.getWorkRecordTeacher())?"":workRecord.getWorkRecordTeacher());
        range.replaceText("${job_title}",ObjectUtils.isEmpty(workRecord.getWorkRecordJob_title())?"":workRecord.getWorkRecordJob_title());
        range.replaceText("${title}", ObjectUtils.isEmpty(workRecord.getWorkRecordTitle())?"":workRecord.getWorkRecordTitle());
        range.replaceText("${record_1}", ObjectUtils.isEmpty(workRecord.getWorkRecordRecord_1())?"":workRecord.getWorkRecordRecord_1());
        range.replaceText("${record_2}", ObjectUtils.isEmpty(workRecord.getWorkRecordRecord_2())?"":workRecord.getWorkRecordRecord_2());
        range.replaceText("${record_3}",ObjectUtils.isEmpty(workRecord.getWorkRecordRecord_3())?"":workRecord.getWorkRecordRecord_3());
        range.replaceText("${record_4}",ObjectUtils.isEmpty(workRecord.getWorkRecordRecord_4())?"":workRecord.getWorkRecordRecord_4());
        range.replaceText("${record_5}", ObjectUtils.isEmpty(workRecord.getWorkRecordRecord_5())?"":workRecord.getWorkRecordRecord_5());
        range.replaceText("${record_6}", ObjectUtils.isEmpty(workRecord.getWorkRecordRecord_6())?"":workRecord.getWorkRecordRecord_6());
        String newName = String.valueOf(workRecord.getWorkRecordNumber())+"+"+workRecord.getWorkRecordName()+"+指导工作记录表.doc";
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
