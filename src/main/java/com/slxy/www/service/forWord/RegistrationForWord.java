package com.slxy.www.service.forWord;


import com.slxy.www.domain.po.Registration;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.usermodel.Range;
import org.springframework.util.ObjectUtils;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class RegistrationForWord {

    public void testWrite(Registration registration) throws Exception {


        String classpath = this.getClass().getResource("/").getPath().replaceFirst("/", "");
        String docRoot = classpath.replaceAll("WEB-INF/classes/", "doc");
        String templatePath=docRoot+ "doc/" + "答辩情况登记表.doc";


        InputStream is = new FileInputStream(templatePath);
        HWPFDocument doc = new HWPFDocument(is);
        Range range = doc.getRange();

        range.replaceText("${faculty}", ObjectUtils.isEmpty(registration.getRegistrationFaculty())?"":registration.getRegistrationFaculty());
        range.replaceText("${major}", ObjectUtils.isEmpty(registration.getRegistrationMajor())?"":registration.getRegistrationMajor());
        range.replaceText("${number}",ObjectUtils.isEmpty(registration.getRegistrationNumber())?"":String.valueOf(registration.getRegistrationNumber()));
        range.replaceText("${name}", ObjectUtils.isEmpty(registration.getRegistrationName())?"":registration.getRegistrationName());
        range.replaceText("${title}",ObjectUtils.isEmpty(registration.getRegistrationTitle())?"":registration.getRegistrationTitle());
        range.replaceText("${teacher}", ObjectUtils.isEmpty(registration.getRegistrationTeacher())?"":registration.getRegistrationTeacher());
        range.replaceText("${time}", ObjectUtils.isEmpty(registration.getRegistrationTime())?"":registration.getRegistrationTime());
        range.replaceText("${location}", ObjectUtils.isEmpty(registration.getRegistrationLocation())?"":registration.getRegistrationLocation());
        range.replaceText("${member_1_name}",ObjectUtils.isEmpty(registration.getRegistrationMember_1_name())?"": registration.getRegistrationMember_1_name());
        range.replaceText("${member_1_title}",ObjectUtils.isEmpty(registration.getRegistrationMember_1_title())?"":registration.getRegistrationMember_1_title());
        range.replaceText("${member_1_research}",ObjectUtils.isEmpty(registration.getRegistrationMember_1_research())?"":registration.getRegistrationMember_1_research());
        range.replaceText("${member_1_score}", ObjectUtils.isEmpty(registration.getRegistrationMember_1_score())?"":String.valueOf(registration.getRegistrationMember_1_score()));
        range.replaceText("${member_2_name}", ObjectUtils.isEmpty(registration.getRegistrationMember_2_name())?"":registration.getRegistrationMember_2_name());
        range.replaceText("${member_2_title}",ObjectUtils.isEmpty(registration.getRegistrationMember_2_title())?"":registration.getRegistrationMember_2_title());
        range.replaceText("${member_2_research}",ObjectUtils.isEmpty(registration.getRegistrationMember_2_research())?"":registration.getRegistrationMember_2_research());
        range.replaceText("${member_2_score}", ObjectUtils.isEmpty(registration.getRegistrationMember_2_score())?"":String.valueOf(registration.getRegistrationMember_2_score()));
        range.replaceText("${member_3_name}", ObjectUtils.isEmpty(registration.getRegistrationMember_3_name())?"":registration.getRegistrationMember_3_name());
        range.replaceText("${member_3_title}",ObjectUtils.isEmpty(registration.getRegistrationMember_3_title())?"":registration.getRegistrationMember_3_title());
        range.replaceText("${member_3_research}",ObjectUtils.isEmpty(registration.getRegistrationMember_3_research())?"":registration.getRegistrationMember_3_research());
        range.replaceText("${member_3_score}", ObjectUtils.isEmpty(registration.getRegistrationMember_3_score())?"":String.valueOf(registration.getRegistrationMember_3_score()));
        range.replaceText("${member_4_name}", ObjectUtils.isEmpty(registration.getRegistrationMember_4_name())?"":registration.getRegistrationMember_4_name());
        range.replaceText("${member_4_title}",ObjectUtils.isEmpty(registration.getRegistrationMember_4_title())?"":registration.getRegistrationMember_4_title());
        range.replaceText("${member_4_research}",ObjectUtils.isEmpty(registration.getRegistrationMember_4_research())?"":registration.getRegistrationMember_4_research());
        range.replaceText("${member_4_score}", ObjectUtils.isEmpty(registration.getRegistrationMember_4_score())?"":String.valueOf(registration.getRegistrationMember_4_score()));
        range.replaceText("${member_5_name}", ObjectUtils.isEmpty(registration.getRegistrationMember_5_name())?"":registration.getRegistrationMember_5_name());
        range.replaceText("${member_5_title}",ObjectUtils.isEmpty(registration.getRegistrationMember_5_title())?"":registration.getRegistrationMember_5_title());
        range.replaceText("${member_5_research}",ObjectUtils.isEmpty(registration.getRegistrationMember_5_research())?"":registration.getRegistrationMember_5_research());
        range.replaceText("${member_5_score}", ObjectUtils.isEmpty(registration.getRegistrationMember_5_score())?"":String.valueOf(registration.getRegistrationMember_5_score()));
        range.replaceText("${total_score}", ObjectUtils.isEmpty(registration.getRegistrationTotal_score())?"":String.valueOf(registration.getRegistrationTotal_score()));
        range.replaceText("${judgement}", ObjectUtils.isEmpty(registration.getRegistrationJudgement())?"":registration.getRegistrationJudgement());
        range.replaceText("${mentor_score}", ObjectUtils.isEmpty(registration.getRegistrationMentor_score())?"":String.valueOf(registration.getRegistrationMentor_score()));
        range.replaceText("${judge_score}",ObjectUtils.isEmpty(registration.getRegistrationJudge_score())?"":String.valueOf(registration.getRegistrationJudge_score()));
        range.replaceText("${score}",ObjectUtils.isEmpty(registration.getRegistrationScore())?"":String.valueOf(registration.getRegistrationScore()));
        range.replaceText("${thesis_score}", ObjectUtils.isEmpty(registration.getRegistrationThesis_score())?"":String.valueOf(registration.getRegistrationThesis_score()));
        range.replaceText("${thesis_score1}", ObjectUtils.isEmpty(registration.getRegistrationThesis_score1())?"":String.valueOf(registration.getRegistrationThesis_score1()));
        range.replaceText("${thesis_scale}", ObjectUtils.isEmpty(registration.getRegistrationThesis_scale())?"":registration.getRegistrationThesis_scale());
        range.replaceText("${record}",ObjectUtils.isEmpty(registration.getRegistrationRecord())?"":registration.getRegistrationRecord());
        String newName = String.valueOf(registration.getRegistrationNumber())+"+"+registration.getRegistrationName()+"+答辩情况登记表.doc";
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
