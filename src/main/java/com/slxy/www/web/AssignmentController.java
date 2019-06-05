package com.slxy.www.web;

import com.baomidou.mybatisplus.plugins.Page;
import com.slxy.www.dao.ISelectTopicMapper;
import com.slxy.www.domain.dto.SelectTopicDto;
import com.slxy.www.domain.po.Application;
import com.slxy.www.domain.po.Assignment;
import com.slxy.www.domain.po.OpeningReport;
import com.slxy.www.domain.po.SelectDepartment;
import com.slxy.www.domain.po.SelectUserBase;
import com.slxy.www.domain.vo.SelectDepartmentVo;
import com.slxy.www.domain.vo.SelectTopicVo;
import com.slxy.www.domain.vo.SelectUserBaseVo;
import com.slxy.www.enums.EnumYesOrNo;
import com.slxy.www.service.AssignmentService;
import com.slxy.www.service.SelectUserBaseService;
import com.slxy.www.service.forWord.AssignmentForWord;
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
@RequestMapping("/assignment")
public class AssignmentController {
    @Autowired
    private AssignmentService assignmentService;

    /*
    * 管理员模块
    * */
    //主页面
    @RequestMapping("/admAllAssignment")
    public String listAdmAssignment(Model model) {
        List<Assignment> list = assignmentService.queryAllAssignment();
        model.addAttribute("list", list);
        return "assignmentJsp/admAllAssignment";
    }



    //添加
    @RequestMapping("admToAddAssignment")
    public String admToAddAssignment() {
        //return调用jsp页面
        return "assignmentJsp/admAddAssignment";
    }
    @RequestMapping("/admAddAssignment")
    public String admAddAssignment(Assignment assignment) {
        assignmentService.addAssignment(assignment);
        return "redirect:/assignment/admAllAssignment";
    }

    //删除
    @RequestMapping("/del/{assignmentNumber}")
    public String deleteAssignment(@PathVariable("assignmentNumber") Long id) {
        assignmentService.deleteAssignmentByNumber(id);
        return "redirect:/assignment/admAllAssignment";
    }

    //预览
    @RequestMapping("admToLookAssignment")
    public String admToLookAssignment(Model model, Long id) {

        List<Assignment> list = assignmentService.queryByNumberAssignment(id);
        model.addAttribute("list", list);
        return "assignmentJsp/admLookAssignment";
    }
    //预览界面显示后直接返回到主界面
    @RequestMapping("admLookAssignment")
    public String admLookAssignment() {
        return"redirect:/assignment/admAllAssignment";
    }

    //编辑
    @RequestMapping("admToUpdateAssignment")
    public String admToUpdateAssignment(Model model, Long id) {
        List<Assignment> list = assignmentService.queryByNumberAssignment(id);
        model.addAttribute("list", list);
        return "assignmentJsp/admUpdateAssignment";
    }
    @RequestMapping("/admUpdateAssignment")
    public String admUpdateAssignment(Model model, Assignment assignment) {
        assignmentService.updateAssignment(assignment);
        assignment = assignmentService.queryByNumber(assignment.getAssignmentNumber());
        model.addAttribute("assignment", assignment);
        return "redirect:/assignment/admAllAssignment";
    }

    //下载
    @RequestMapping("/admSaveAssignment")
    public String admSaveAssignment(long id) throws Exception {
        AssignmentForWord tt = new AssignmentForWord();
        List<Assignment> list = assignmentService.queryByNumberAssignment(id);
        Assignment assignment = list.get(0);
        tt.testWrite(assignment);
        return "redirect:/assignment/admAllAssignment";
    }

    /*
    *学生模块
    */
    //主页面
    @RequestMapping("/stuAllAssignment")
    public String listStuAssignment(Model model, SelectUserBaseVo userBaseVo, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (!ObjectUtils.isEmpty(session)){
            SelectUserBase userBase = (SelectUserBase) session.getAttribute("sessionUser");
            if (!ObjectUtils.isEmpty(userBase)){
                userBaseVo.setId(userBase.getId()).setUserCode(userBase.getUserCode());
            }
        }
        long id = Long.parseLong(userBaseVo.getUserCode());
        List<Assignment> list = assignmentService.queryByNumberAssignment(id);
        model.addAttribute("list", list);
        return "assignmentJsp/stuAllAssignment";
    }

    //


    //预览
    @RequestMapping("stuToLookAssignment")
    public String stuToLookAssignment(Model model, Long id) {
        List<Assignment> list = assignmentService.queryByNumberAssignment(id);
        model.addAttribute("list", list);
        return "assignmentJsp/stuLookAssignment";
    }
    //预览界面显示后直接返回到主界面
    @RequestMapping("stuLookAssignment")
    public String stuLookAssignment() {
        return"redirect:/assignment/stuAllAssignment";
    }

    //下载
    @RequestMapping("/stuSaveAssignment")
    public String stuSaveAssignment(long id) throws Exception {
        AssignmentForWord tt = new AssignmentForWord();
        List<Assignment> list = assignmentService.queryByNumberAssignment(id);
        Assignment assignment = list.get(0);
        tt.testWrite(assignment);
        return "redirect:/assignment/stuAllAssignment";
    }


    /*
    *教师模块
    */
    @Autowired
    private ISelectTopicMapper selectTopicMapper;

    @Autowired
    private SelectUserBaseService selectUserBaseService;

    //主页面
    @RequestMapping("/teaAllAssignment")
    public ModelAndView listTeaAssignment(ModelAndView  modelAndView, SelectTopicVo vo, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (!ObjectUtils.isEmpty(session)){
            SelectUserBase userBase = (SelectUserBase) session.getAttribute("sessionUser");
            if (!ObjectUtils.isEmpty(userBase)){
                vo.setTeaId(userBase.getId());
            }
        }
        modelAndView.setViewName("assignmentJsp/teaAllAssignment");
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
    @RequestMapping("teaToUpdateAssignment")
    public String teaToUpdateAssignment(Model model, Long id) {
        List<Assignment> list = assignmentService.queryByNumberAssignment(id);
        model.addAttribute("list", list);
        return "assignmentJsp/teaUpdateAssignment";
    }
    @RequestMapping("/teaUpdateAssignment")
    public String teaUpdateAssignment(Model model, Assignment assignment) {
        assignmentService.updateAssignment(assignment);
        assignment = assignmentService.queryByNumber(assignment.getAssignmentNumber());
        model.addAttribute("assignment", assignment);
        return "redirect:/assignment/teaAllAssignment";
    }

    //预览
    @RequestMapping("teaToLookAssignment")
    public String teaToLookAssignment(Model model, Long id) {

        List<Assignment> list = assignmentService.queryByNumberAssignment(id);
        model.addAttribute("list", list);
        return "assignmentJsp/teaLookAssignment";
    }
    //预览界面显示后直接返回到主界面
    @RequestMapping("teaLookAssignment")
    public String teaLookAssignment() {
        return"redirect:/assignment/teaAllAssignment";
    }

    //下载
    @RequestMapping("/teaSaveAssignment")
    public String teaSaveAssignment(String id) throws Exception {
        AssignmentForWord tt = new AssignmentForWord();
        List<Assignment> list = assignmentService.queryByNumberAssignment(Long.parseLong(id));
        Assignment assignment = list.get(0);
        tt.testWrite(assignment);
        return "redirect:/assignment/teaAllAssignment";
    }

}




