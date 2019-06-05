package com.slxy.www.service.forWord;

import com.slxy.www.domain.po.Comment;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.usermodel.Range;
import org.springframework.util.ObjectUtils;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class CommentForWord {

    public void testWrite(Comment comment) throws Exception {


        String classpath = this.getClass().getResource("/").getPath().replaceFirst("/", "");
        String docRoot = classpath.replaceAll("WEB-INF/classes/", "doc");
        String templatePath=docRoot+ "doc/" + "评阅教师评阅表.doc";


        InputStream is = new FileInputStream(templatePath);
        HWPFDocument doc = new HWPFDocument(is);
        Range range = doc.getRange();
        range.replaceText("${faculty}", ObjectUtils.isEmpty(comment.getCommentFaculty())?"":comment.getCommentFaculty());
        range.replaceText("${major}", ObjectUtils.isEmpty(comment.getCommentMajor())?"":comment.getCommentMajor());
        range.replaceText("${name}", ObjectUtils.isEmpty(comment.getCommentName())?"":comment.getCommentName());
        range.replaceText("${number}",ObjectUtils.isEmpty(comment.getCommentNumber())?"":String.valueOf(comment.getCommentNumber()));
        range.replaceText("${title}",ObjectUtils.isEmpty(comment.getCommentTitle())?"":comment.getCommentTitle());
        range.replaceText("${score_1}",ObjectUtils.isEmpty(comment.getCommentScore_1())?"":String.valueOf(comment.getCommentScore_1()));
        range.replaceText("${score_2}",ObjectUtils.isEmpty(comment.getCommentScore_2())?"": String.valueOf(comment.getCommentScore_2()));
        range.replaceText("${score_3}", ObjectUtils.isEmpty(comment.getCommentScore_3())?"":String.valueOf(comment.getCommentScore_3()));
        range.replaceText("${score_4}",ObjectUtils.isEmpty(comment.getCommentScore_4())?"":String.valueOf(comment.getCommentScore_4()));
        range.replaceText("${score_5}",ObjectUtils.isEmpty(comment.getCommentScore_5())?"":String.valueOf(comment.getCommentScore_5()));
        range.replaceText("${score_6}", ObjectUtils.isEmpty(comment.getCommentScore_6())?"":String.valueOf(comment.getCommentScore_6()));
        range.replaceText("${score_7}", ObjectUtils.isEmpty(comment.getCommentScore_7())?"":String.valueOf(comment.getCommentScore_7()));
        range.replaceText("${score_8}", ObjectUtils.isEmpty(comment.getCommentScore_8())?"":String.valueOf(comment.getCommentScore_8()));
        range.replaceText("${score_9}",ObjectUtils.isEmpty(comment.getCommentScore_9())?"":String.valueOf(comment.getCommentScore_9()));
        range.replaceText("${score_10}",ObjectUtils.isEmpty(comment.getCommentScore_10())?"":String.valueOf(comment.getCommentScore_10()));
        range.replaceText("${score_11}", ObjectUtils.isEmpty(comment.getCommentScore_11())?"":String.valueOf(comment.getCommentScore_11()));
        range.replaceText("${score_12}", ObjectUtils.isEmpty(comment.getCommentScore_12())?"":String.valueOf(comment.getCommentScore_12()));
        range.replaceText("${score_13}", ObjectUtils.isEmpty(comment.getCommentScore_13())?"":String.valueOf(comment.getCommentScore_13()));
        range.replaceText("${score_14}",ObjectUtils.isEmpty(comment.getCommentScore_14())?"":String.valueOf(comment.getCommentScore_14()));
        range.replaceText("${score_15}",ObjectUtils.isEmpty(comment.getCommentScore_15())?"":String.valueOf(comment.getCommentScore_15()));
        range.replaceText("${judgement}", ObjectUtils.isEmpty(comment.getCommentJudgement())?"":comment.getCommentJudgement());
        String newName = String.valueOf(comment.getCommentNumber())+"+"+comment.getCommentName()+"+评阅教师评阅表.doc";
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
