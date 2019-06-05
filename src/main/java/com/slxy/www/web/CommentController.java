package com.slxy.www.web;

import com.baomidou.mybatisplus.plugins.Page;
import com.slxy.www.dao.ISelectTopicMapper;
import com.slxy.www.domain.dto.SelectTopicDto;
import com.slxy.www.domain.po.Assignment;
import com.slxy.www.domain.po.Comment;
import com.slxy.www.domain.po.Comment1;
import com.slxy.www.domain.po.SelectUserBase;
import com.slxy.www.domain.vo.SelectTopicVo;
import com.slxy.www.domain.vo.SelectUserBaseVo;
import com.slxy.www.enums.EnumYesOrNo;
import com.slxy.www.service.CommentService;
import com.slxy.www.service.SelectUserBaseService;
import com.slxy.www.service.forWord.CommentForWord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    private CommentService commentService;

    /*
    * 管理员模块
    * */
    //主页面
    @RequestMapping("/admAllComment")
    public String listAdmComment(Model model) {
        List<Comment> list = commentService.queryAllComment();
        model.addAttribute("list", list);
        return "commentJsp/admAllComment";
    }

    //添加
    @RequestMapping("admToAddComment")
    public String admToAddComment() {
        //return调用jsp页面
        return "commentJsp/admAddComment";
    }
    @RequestMapping("/admAddComment")
    public String admAddComment(Comment1 comment1) {
        Comment comment = ForFloat(comment1);
        commentService.addComment(comment);
        return "redirect:/comment/admAllComment";
    }

    //预览
    @RequestMapping("admToLookComment")
    public String admToLookComment(Model model, Long id) {
        List<Comment> list = commentService.queryByNumberComment(id);
        model.addAttribute("list", list);
        return "commentJsp/admLookComment";
    }
    //预览界面显示后直接返回到主界面
    @RequestMapping("admLookComment")
    public String admLookComment() {
        return"redirect:/comment/admAllComment";
    }


    //删除
    @RequestMapping("/del/{commentNumber}")
    public String deleteComment(@PathVariable("commentNumber") Long id) {
        commentService.deleteCommentByNumber(id);
        return "redirect:/comment/admAllComment";
    }

    //编辑
    @RequestMapping("admToUpdateComment")
    public String admToUpdateComment(Model model, Long id) {
        List<Comment> list = commentService.queryByNumberComment(id);
        model.addAttribute("list", list);
        return "commentJsp/admUpdateComment";
    }
    @RequestMapping("/admUpdateComment")
    public String admUpdateComment(Model model, Comment1 comment1) {
        Comment comment = ForFloat(comment1);
        commentService.updateComment(comment);
        comment = commentService.queryByNumber(comment.getCommentNumber());
        model.addAttribute("comment", comment);
        return "redirect:/comment/admAllComment";
    }

    //下载
    @RequestMapping("/admSaveComment")
    public String admSaveComment(long id) throws Exception {
        CommentForWord tt = new CommentForWord();
        List<Comment> list = commentService.queryByNumberComment(id);
        Comment comment = list.get(0);
        tt.testWrite(comment);
        return "redirect:/comment/admAllComment";
    }



    /*
    * 教师模块
    * */
    @Autowired
    private ISelectTopicMapper selectTopicMapper;

    @Autowired
    private SelectUserBaseService selectUserBaseService;

    //主页面
    @RequestMapping("/teaAllComment")
    public ModelAndView listTeaCommeent(ModelAndView  modelAndView, SelectTopicVo vo, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (!ObjectUtils.isEmpty(session)){
            SelectUserBase userBase = (SelectUserBase) session.getAttribute("sessionUser");
            if (!ObjectUtils.isEmpty(userBase)){
                vo.setTeaId(userBase.getId());
            }
        }
        modelAndView.setViewName("commentJsp/teaAllComment");
        vo.setDelState(EnumYesOrNo.NO.getValue());
        //huoqu数据
        Page<SelectTopicDto> page = new Page<>(vo.getPage(),100);
        List<SelectTopicDto> list = selectTopicMapper.getTopicByPage(page, vo);

        //去除无用数据
        //组装数据
        List<SelectTopicDto> topicDtos = new ArrayList<>();
        for(SelectTopicDto dto : list){
            if (dto.getTeaAuditState().equals(2)){
                SelectUserBase userBase = selectUserBaseService.selectById(dto.getStuId());
                dto.setStuName(userBase.getUserName()).setUserCode(userBase.getUserCode());
                topicDtos.add(dto);
            }
        }
        //return
        modelAndView.addObject("topicList",topicDtos);
        return modelAndView;
    }

    //编辑
    @RequestMapping("teaToUpdateComment")
    public String LookTeaComment(Model model, Long id) {
        List<Comment> list = commentService.queryByNumberComment(id);
        model.addAttribute("list", list);
        return "commentJsp/teaUpdateComment";
    }
    @RequestMapping("/teaUpdateComment")
    public String teaUpdateComment(Model model, Comment1 comment1) {
        Comment comment = ForFloat(comment1);
        commentService.updateComment(comment);
        comment = commentService.queryByNumber(comment.getCommentNumber());
        model.addAttribute("comment", comment);
        return "redirect:/comment/teaAllComment";
    }

    //预览
    @RequestMapping("teaToLookComment")
    public String teaToLookComment(Model model, Long id) {

        List<Comment> list = commentService.queryByNumberComment(id);
        model.addAttribute("list", list);
        return "commentJsp/teaLookComment";
    }
    //预览界面显示后直接返回到主界面
        @RequestMapping("teaLookComment")
    public String teaLookComment() {
        return"redirect:/comment/teaAllComment";
    }

    //下载
    @RequestMapping("/teaSaveComment")
    public String teaSaveComment(long id) throws Exception {
        CommentForWord tt = new CommentForWord();
        List<Comment> list = commentService.queryByNumberComment(id);
        Comment comment = list.get(0);
        tt.testWrite(comment);
        return "redirect:/comment/teaAllComment";
    }

    public Comment ForFloat(Comment1 comment1)
    {
        Comment comment = new Comment();
        comment.setCommentFaculty(ObjectUtils.isEmpty(comment1.getCommentFaculty())?"":comment1.getCommentFaculty());
        comment.setCommentMajor(ObjectUtils.isEmpty(comment1.getCommentMajor())?"":comment1.getCommentMajor());
        comment.setCommentName(ObjectUtils.isEmpty(comment1.getCommentName())?"": comment1.getCommentName());
        comment.setCommentNumber(ObjectUtils.isEmpty(comment1.getCommentNumber())?0: comment1.getCommentNumber());
        comment.setCommentScore_1(ObjectUtils.isEmpty(comment1.getCommentScore_1())?0: Float.valueOf(comment1.getCommentScore_1()));
        comment.setCommentScore_2(ObjectUtils.isEmpty(comment1.getCommentScore_2())?0: Float.valueOf(comment1.getCommentScore_2()));
        comment.setCommentScore_3(ObjectUtils.isEmpty(comment1.getCommentScore_3())?0: Float.valueOf(comment1.getCommentScore_3()));
        comment.setCommentScore_4(ObjectUtils.isEmpty(comment1.getCommentScore_4())?0: Float.valueOf(comment1.getCommentScore_4()));
        comment.setCommentScore_5(ObjectUtils.isEmpty(comment1.getCommentScore_5())?0: Float.valueOf(comment1.getCommentScore_5()));
        comment.setCommentScore_6(ObjectUtils.isEmpty(comment1.getCommentScore_6())?0: Float.valueOf(comment1.getCommentScore_6()));
        comment.setCommentScore_7(ObjectUtils.isEmpty(comment1.getCommentScore_7())?0: Float.valueOf(comment1.getCommentScore_7()));
        comment.setCommentScore_8(ObjectUtils.isEmpty(comment1.getCommentScore_8())?0: Float.valueOf(comment1.getCommentScore_8()));
        comment.setCommentScore_9(ObjectUtils.isEmpty(comment1.getCommentScore_9())?0: Float.valueOf(comment1.getCommentScore_9()));
        comment.setCommentScore_10(ObjectUtils.isEmpty(comment1.getCommentScore_10())?0: Float.valueOf(comment1.getCommentScore_10()));
        comment.setCommentScore_11(ObjectUtils.isEmpty(comment1.getCommentScore_11())?0: Float.valueOf(comment1.getCommentScore_11()));
        comment.setCommentScore_12(ObjectUtils.isEmpty(comment1.getCommentScore_12())?0: Float.valueOf(comment1.getCommentScore_12()));
        comment.setCommentScore_13(ObjectUtils.isEmpty(comment1.getCommentScore_13())?0: Float.valueOf(comment1.getCommentScore_13()));
        comment.setCommentScore_14(ObjectUtils.isEmpty(comment1.getCommentScore_14())?0: Float.valueOf(comment1.getCommentScore_14()));
        comment.setCommentScore_15(comment.getCommentScore_1()+comment.getCommentScore_2()+comment.getCommentScore_3()+comment.getCommentScore_4()+comment.getCommentScore_5()+comment.getCommentScore_6()+comment.getCommentScore_7()+comment.getCommentScore_8()+comment.getCommentScore_9()+comment.getCommentScore_10()+comment.getCommentScore_11()+comment.getCommentScore_12()+ comment.getCommentScore_13()+comment.getCommentScore_14());
        comment.setCommentJudgement(ObjectUtils.isEmpty(comment1.getCommentJudgement())?"":comment1.getCommentJudgement());
        return  comment;
    }

}




