package com.slxy.www.service.forWord;


import com.slxy.www.domain.po.Score;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.usermodel.Range;
import org.springframework.util.ObjectUtils;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ScoreForWord {

    public void testWrite(Score score) throws Exception {


        String classpath = this.getClass().getResource("/").getPath().replaceFirst("/", "");
        String docRoot = classpath.replaceAll("WEB-INF/classes/", "doc");
        String templatePath=docRoot+ "doc/" + "指导教师评分表.doc";


        InputStream is = new FileInputStream(templatePath);
        HWPFDocument doc = new HWPFDocument(is);
        Range range = doc.getRange();
        range.replaceText("${faculty}", ObjectUtils.isEmpty(score.getScoreFaculty())?"":score.getScoreFaculty());
        range.replaceText("${major}", ObjectUtils.isEmpty(score.getScoreMajor())?"":score.getScoreMajor());
        range.replaceText("${name}", ObjectUtils.isEmpty(score.getScoreName())?"":score.getScoreName());
        range.replaceText("${number}",ObjectUtils.isEmpty(score.getScoreNumber())?"":String.valueOf(score.getScoreNumber()));
        range.replaceText("${title}",ObjectUtils.isEmpty(score.getScoreTitle())?"":score.getScoreTitle());
        range.replaceText("${score_1}", ObjectUtils.isEmpty(score.getScoreScore_1())?"":String.valueOf(score.getScoreScore_1()));
        range.replaceText("${score_2}",  ObjectUtils.isEmpty(score.getScoreScore_2())?"":String.valueOf(score.getScoreScore_2()));
        range.replaceText("${score_3}",  ObjectUtils.isEmpty(score.getScoreScore_3())?"":String.valueOf(score.getScoreScore_3()));
        range.replaceText("${score_4}", ObjectUtils.isEmpty(score.getScoreScore_4())?"":String.valueOf(score.getScoreScore_4()));
        range.replaceText("${score_5}", ObjectUtils.isEmpty(score.getScoreScore_5())?"":String.valueOf(score.getScoreScore_5()));
        range.replaceText("${score_6}",  ObjectUtils.isEmpty(score.getScoreScore_6())?"":String.valueOf(score.getScoreScore_6()));
        range.replaceText("${score_7}", ObjectUtils.isEmpty(score.getScoreScore_7())?"": String.valueOf(score.getScoreScore_7()));
        range.replaceText("${score_8}",  ObjectUtils.isEmpty(score.getScoreScore_8())?"":String.valueOf(score.getScoreScore_8()));
        range.replaceText("${score_9}", ObjectUtils.isEmpty(score.getScoreScore_9())?"":String.valueOf(score.getScoreScore_9()));
        range.replaceText("${score_10}", ObjectUtils.isEmpty(score.getScoreScore_10())?"":String.valueOf(score.getScoreScore_10()));
        range.replaceText("${score_11}", ObjectUtils.isEmpty(score.getScoreScore_11())?"": String.valueOf(score.getScoreScore_11()));
        range.replaceText("${score_12}", ObjectUtils.isEmpty(score.getScoreScore_12())?"": String.valueOf(score.getScoreScore_12()));
        range.replaceText("${score_13}", ObjectUtils.isEmpty(score.getScoreScore_13())?"": String.valueOf(score.getScoreScore_13()));
        range.replaceText("${score_14}",ObjectUtils.isEmpty(score.getScoreScore_14())?"": String.valueOf(score.getScoreScore_14()));
        range.replaceText("${score_15}",ObjectUtils.isEmpty(score.getScoreScore_15())?"": String.valueOf(score.getScoreScore_15()));
        range.replaceText("${score_16}", ObjectUtils.isEmpty(score.getScoreScore_16())?"": String.valueOf(score.getScoreScore_16()));

        range.replaceText("${teacher_judge}", ObjectUtils.isEmpty(score.getScoreTeacher_judge())?"":score.getScoreTeacher_judge());
        String newName = String.valueOf(score.getScoreNumber())+"+"+score.getScoreName()+"+指导教师评分表.doc";
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
