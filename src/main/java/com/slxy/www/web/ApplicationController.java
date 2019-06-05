package com.slxy.www.web;



import com.baomidou.mybatisplus.plugins.Page;
import com.slxy.www.dao.ISelectMajorMapper;
import com.slxy.www.dao.ISelectTopicMapper;
import com.slxy.www.domain.dto.SelectTopicDto;
import com.slxy.www.domain.po.Assignment;
import com.slxy.www.domain.po.OpeningReport;
import com.slxy.www.domain.po.SelectUserBase;
import com.slxy.www.domain.vo.SelectTopicVo;
import com.slxy.www.domain.vo.SelectUserBaseVo;
import com.slxy.www.enums.EnumSubSelectStatus;
import com.slxy.www.enums.EnumYesOrNo;
import com.slxy.www.service.SelectTopicService;
import com.slxy.www.service.SelectUserBaseService;
import com.slxy.www.service.forWord.ApplicationForWord;
import com.slxy.www.domain.po.Application;
import com.slxy.www.service.ApplicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/application")
@SessionAttributes(value = {"sessionUser","userType","sessionIp"})
public class ApplicationController {
    @Autowired
    private ApplicationService applicationService;

    /*
    * 管理员模块
    * */
    //主页面
    @RequestMapping("/admAllApplication")
    public String listAdmApplication(Model model) {
        List<Application> list = applicationService.queryAllApplication();
        model.addAttribute("list", list);
        return "applicationJsp/admAllApplication";
    }

    //新增
    @RequestMapping("admToAddApplication")
    public String admToAddApplication() {
        //return调用jsp页面
        return "applicationJsp/admAddApplication";
    }
    @RequestMapping("/admAddApplication")
    public String admAddApplication(Application application) {
        applicationService.addApplication(application);
        return "redirect:/application/admAllApplication";
    }

    //编辑
    @RequestMapping("admToUpdateApplication")
    public String admToUpdateApplication(Model model, Long id) {
        List<Application> list = applicationService.queryByNumberApplication(id);
        model.addAttribute("list", list);
        return "applicationJsp/admUpdateApplication";
    }
    @RequestMapping("/admUpdateApplication")
    public String admUpdateApplication(Model model, Application application) {
        applicationService.updateApplication(application);
        application = applicationService.queryByNumber(application.getApplicationNumber());
        model.addAttribute("application", application);
        return "redirect:/application/admAllApplication";
    }

    //删除
    @RequestMapping("/del/{applicationNumber}")
    public String deleteApplication(@PathVariable("applicationNumber") Long id) {
        applicationService.deleteApplicationByNumber(id);
        return "redirect:/application/admAllApplication";
    }

    //预览
    @RequestMapping("admToLookApplication")
    public String admToLookApplication(Model model, Long id) {
        List<Application> list = applicationService.queryByNumberApplication(id);
        model.addAttribute("list", list);
        return "applicationJsp/admLookApplication";
    }
    //预览界面显示后直接返回到主界面
    @RequestMapping("admLookApplication")
    public String admLookApplication() {
        return"redirect:/application/admAllApplication";
    }


    //下载
    @RequestMapping("/admSaveApplication")
    public String admSaveApplication(long id) throws Exception {
        ApplicationForWord tt = new ApplicationForWord();
        List<Application> list = applicationService.queryByNumberApplication(id);
        Application application = list.get(0);
        tt.testWrite(application);
        return "redirect:/application/admAllApplication";
    }


    /*
    *学生模块
    */
    //主页面
    @RequestMapping("/stuAllApplication")
    public String listStuApplication(Model model, SelectUserBaseVo userBaseVo, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (!ObjectUtils.isEmpty(session)){
            SelectUserBase userBase = (SelectUserBase) session.getAttribute("sessionUser");
            if (!ObjectUtils.isEmpty(userBase)){
                userBaseVo.setId(userBase.getId()).setUserCode(userBase.getUserCode());
            }
        }
        long id = Long.parseLong(userBaseVo.getUserCode());
        List<Application> list = applicationService.queryByNumberApplication(id);
        model.addAttribute("list", list);
        return "applicationJsp/stuAllApplication";

    }

    //编辑
    @RequestMapping("stuToUpdateApplication")
    public String stuToUpdateApplication(Model model, Long id) {
        List<Application> list = applicationService.queryByNumberApplication(id);
        model.addAttribute("list", list);
        return "applicationJsp/stuUpdateApplication";
    }
    @RequestMapping("/stuUpdateApplication")
    public String stuUpdateApplication(Model model, Application application) {
        applicationService.updateApplication(application);
        application = applicationService.queryByNumber(application.getApplicationNumber());
        model.addAttribute("application", application);
        return "redirect:/application/stuAllApplication";
    }

    //预览
    @RequestMapping("stuToLookApplication")
    public String stuToLookApplication(Model model, Long id) {
        List<Application> list = applicationService.queryByNumberApplication(id);
        model.addAttribute("list", list);
        return "applicationJsp/stuLookApplication";
    }
    //预览界面显示后直接返回到主界面
    @RequestMapping("stuLookApplication")
    public String stuLookApplication() {
        return"redirect:/application/stuAllApplication";
    }

    //下载
    @RequestMapping("/stuSaveApplication")
    public String stuSaveApplication(long id) throws Exception {
        ApplicationForWord tt = new ApplicationForWord();
        List<Application> list = applicationService.queryByNumberApplication(id);
        Application application = list.get(0);
        tt.testWrite(application);
        return "redirect:/application/stuAllApplication";
    }

    //将所有学生的学号和姓名动态的导入到各个表中
    //每个学生登录后只显示学号和自己相同的各个表的记录。  因学号唯一，只显示一条记录
    //学生只能编辑和下载
    //教师完成的模块学生只能下载




    /*
    *教师模块
    */
    @Autowired
    private ISelectTopicMapper selectTopicMapper;

    @Autowired
    private SelectUserBaseService selectUserBaseService;

    //主页面
    @RequestMapping("/teaAllApplication")
    public ModelAndView listTeaApplication(ModelAndView  modelAndView, SelectTopicVo vo, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (!ObjectUtils.isEmpty(session)){
            SelectUserBase userBase = (SelectUserBase) session.getAttribute("sessionUser");
            if (!ObjectUtils.isEmpty(userBase)){
                vo.setTeaId(userBase.getId());
            }
        }
        modelAndView.setViewName("applicationJsp/teaAllApplication");
        vo.setDelState(EnumYesOrNo.NO.getValue());
        //获取数据
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
    @RequestMapping("/teaUpdateApplication")
    public String teaUpdateApplication(Model model, Application application) {
        applicationService.updateApplication(application);
        application = applicationService.queryByNumber(application.getApplicationNumber());
        model.addAttribute("application", application);
        return "redirect:/application/teaAllApplication";
    }
    @RequestMapping("teaToUpdateApplication")
    public String LookTeaApplication(Model model, Long id) {

        List<Application> list = applicationService.queryByNumberApplication(id);
        model.addAttribute("list", list);
        return "applicationJsp/teaUpdateApplication";
    }

    //预览
    @RequestMapping("teaToLookApplication")
    public String teaToLookApplication(Model model, Long id) {

        List<Application> list = applicationService.queryByNumberApplication(id);
        model.addAttribute("list", list);
        return "applicationJsp/teaLookApplication";
    }
    //预览界面显示后直接返回到主界面
    @RequestMapping("teaLookApplication")
    public String teaLookApplication() {
        return"redirect:/application/teaAllApplication";
    }

    //下载
    @RequestMapping("/teaSaveApplication")
    public String teaSaveApplication(String id) throws Exception {
        ApplicationForWord tt = new ApplicationForWord();
        List<Application> list = applicationService.queryByNumberApplication(Long.parseLong(id));
        Application application = list.get(0);
        tt.testWrite(application);
        return "redirect:/application/teaAllApplication";
    }

    /*
    问题：
    教师的答辩申请表页面显示所有他指导的学生的答辩申请表中的记录  每条记录为一个申请表
    teaAllApplication的页面显示的是姓名和学号 但SelectTopic中并没有获取数据库中学生的学号，只获取了ID
    由于无法获取学号 所以无法通过学号去更新该学号对应的申请表的内容
    在SelectTopic和SelectTopicVo中添加了stuCode属性
    在SelectTopicMapper.xml总添加了一些信息  不会添加不知道如何添加
    */
}




