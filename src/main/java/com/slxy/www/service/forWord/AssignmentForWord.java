package com.slxy.www.service.forWord;

import com.slxy.www.domain.po.Assignment;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.usermodel.Range;
import org.springframework.util.ObjectUtils;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class AssignmentForWord {

    public void testWrite(Assignment assignment) throws Exception {


        String classpath = this.getClass().getResource("/").getPath().replaceFirst("/", "");
        String docRoot = classpath.replaceAll("WEB-INF/classes/", "doc");
        String templatePath=docRoot+ "doc/" + "任务书.doc";


        InputStream is = new FileInputStream(templatePath);
        HWPFDocument doc = new HWPFDocument(is);
        Range range = doc.getRange();
        range.replaceText("${faculty}", ObjectUtils.isEmpty(assignment.getAssignmentFaculty())?"":assignment.getAssignmentFaculty());
        range.replaceText("${major}", ObjectUtils.isEmpty(assignment.getAssignmentMajor())?"":ObjectUtils.isEmpty(assignment.getAssignmentMajor())?"":assignment.getAssignmentMajor());
        range.replaceText("${name}", ObjectUtils.isEmpty(assignment.getAssignmentName())?"":ObjectUtils.isEmpty(assignment.getAssignmentName())?"":assignment.getAssignmentName());
        range.replaceText("${number}",ObjectUtils.isEmpty(assignment.getAssignmentNumber())?"":String.valueOf(assignment.getAssignmentNumber()));
        range.replaceText("${title}",ObjectUtils.isEmpty(assignment.getAssignmentTitle())?"":assignment.getAssignmentTitle());
        range.replaceText("${content}", ObjectUtils.isEmpty(assignment.getAssignmentContent())?"":assignment.getAssignmentContent());
        range.replaceText("${work}", ObjectUtils.isEmpty(assignment.getAssignmentWork())?"":assignment.getAssignmentWork());
        range.replaceText("${schedule_1_time}",ObjectUtils.isEmpty(assignment.getAssignmentSchedule_1_time())?"": assignment.getAssignmentSchedule_1_time());
        range.replaceText("${schedule_1_work}",ObjectUtils.isEmpty(assignment.getAssignmentSchedule_1_work())?"":assignment.getAssignmentSchedule_1_work());
        range.replaceText("${schedule_2_time}",ObjectUtils.isEmpty(assignment.getAssignmentSchedule_2_time())?"":assignment.getAssignmentSchedule_2_time());
        range.replaceText("${schedule_2_work}", ObjectUtils.isEmpty(assignment.getAssignmentSchedule_2_work())?"":assignment.getAssignmentSchedule_2_work());
        range.replaceText("${schedule_3_time}", ObjectUtils.isEmpty(assignment.getAssignmentSchedule_3_time())?"":assignment.getAssignmentSchedule_3_time());
        range.replaceText("${schedule_3_work}", ObjectUtils.isEmpty(assignment.getAssignmentSchedule_3_work())?"":assignment.getAssignmentSchedule_3_work());
        range.replaceText("${schedule_4_time}",ObjectUtils.isEmpty(assignment.getAssignmentSchedule_4_time())?"":assignment.getAssignmentSchedule_4_time());
        range.replaceText("${schedule_4_work}",ObjectUtils.isEmpty(assignment.getAssignmentSchedule_4_work())?"":assignment.getAssignmentSchedule_4_work());
        range.replaceText("${schedule_5_time}",ObjectUtils.isEmpty(assignment.getAssignmentSchedule_5_time())?"": assignment.getAssignmentSchedule_5_time());
        range.replaceText("${schedule_5_work}",ObjectUtils.isEmpty(assignment.getAssignmentSchedule_5_work())?"": assignment.getAssignmentSchedule_5_work());
        range.replaceText("${schedule_6_time}", ObjectUtils.isEmpty(assignment.getAssignmentSchedule_6_time())?"":assignment.getAssignmentSchedule_6_time());
        range.replaceText("${schedule_6_work}",ObjectUtils.isEmpty(assignment.getAssignmentSchedule_6_work())?"":assignment.getAssignmentSchedule_6_work());
        range.replaceText("${schedule_7_time}",ObjectUtils.isEmpty(assignment.getAssignmentSchedule_7_time())?"":assignment.getAssignmentSchedule_7_time());
        range.replaceText("${schedule_7_work}", ObjectUtils.isEmpty(assignment.getAssignmentSchedule_7_work())?"":assignment.getAssignmentSchedule_7_work());
        range.replaceText("${schedule_8_time}",ObjectUtils.isEmpty(assignment.getAssignmentSchedule_8_time())?"": assignment.getAssignmentSchedule_8_time());
        range.replaceText("${schedule_8_work}",ObjectUtils.isEmpty(assignment.getAssignmentSchedule_8_work())?"":assignment.getAssignmentSchedule_8_work());
        range.replaceText("${document}",ObjectUtils.isEmpty(assignment.getAssignmentDocument())?"":assignment.getAssignmentDocument());
        String newName = String.valueOf(assignment.getAssignmentNumber())+"+"+assignment.getAssignmentName()+"+任务书.doc";
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
