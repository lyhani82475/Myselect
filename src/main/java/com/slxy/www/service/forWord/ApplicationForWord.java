package com.slxy.www.service.forWord;


import com.slxy.www.domain.po.Application;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.usermodel.Range;
import org.springframework.util.ObjectUtils;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ApplicationForWord {

    public void testWrite(Application application) throws Exception {


        String classpath = this.getClass().getResource("/").getPath().replaceFirst("/", "");
        String docRoot = classpath.replaceAll("WEB-INF/classes/", "doc");
        String templatePath=docRoot+ "doc/" + "答辩申请表.doc";


        InputStream is = new FileInputStream(templatePath);
        HWPFDocument doc = new HWPFDocument(is);
        Range range = doc.getRange();
        range.replaceText("${major}", ObjectUtils.isEmpty(application.getApplicationMajor())?"":application.getApplicationMajor());
        range.replaceText("${name}", ObjectUtils.isEmpty(application.getApplicationName())?"":application.getApplicationName());
        range.replaceText("${number}",ObjectUtils.isEmpty(application.getApplicationNumber())?"":String.valueOf(application.getApplicationNumber()));
        range.replaceText("${title}",ObjectUtils.isEmpty(application.getApplicationTitle())?"":application.getApplicationTitle());
        range.replaceText("${content}", ObjectUtils.isEmpty(application.getApplicationContent())?"":application.getApplicationContent());
        range.replaceText("${opinion}", ObjectUtils.isEmpty(application.getApplicationOpinion())?"":application.getApplicationOpinion());
        String newName = String.valueOf(application.getApplicationNumber())+"+"+application.getApplicationName()+"+答辩申请表.doc";
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
