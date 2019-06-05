package com.slxy.www.web;


import com.baomidou.mybatisplus.plugins.Page;
import com.slxy.www.dao.ISelectTopicMapper;
import com.slxy.www.domain.dto.SelectTopicDto;
import com.slxy.www.domain.po.OpeningReport;
import com.slxy.www.domain.po.Registration;
import com.slxy.www.domain.po.Registration1;
import com.slxy.www.domain.po.Score;
import com.slxy.www.domain.po.Score1;
import com.slxy.www.domain.po.SelectUserBase;
import com.slxy.www.domain.vo.SelectTopicVo;
import com.slxy.www.domain.vo.SelectUserBaseVo;
import com.slxy.www.enums.EnumYesOrNo;
import com.slxy.www.service.SelectUserBaseService;
import com.slxy.www.service.forWord.RegistrationForWord;
import com.slxy.www.service.RegistrationService;
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
@RequestMapping("/registration")
public class RegistrationController {
    @Autowired
    private RegistrationService registrationService;

    /*
    //管理员模块
    */
    //主页面
    @RequestMapping("/admAllRegistration")
    public String listAdmRegistration(Model model) {
        List<Registration> list = registrationService.queryAllRegistration();
        model.addAttribute("list", list);
        return "registrationJsp/admAllRegistration";
    }

    //新增
    @RequestMapping("admToAddRegistration")
    public String admToAddRegistration() {
        //return调用jsp页面
        return "registrationJsp/admAddRegistration";
    }
    @RequestMapping("/admAddRegistration")
    public String admAddRegistration(Registration1 registration1) {
        Registration registration = ForFloat(registration1);
        registrationService.addRegistration(registration);
        return "redirect:/registration/admAllRegistration";
    }

    //删除
    @RequestMapping("/del/{registrationNumber}")
    public String deleteRegistration(@PathVariable("registrationNumber") Long id) {
        registrationService.deleteRegistrationByNumber(id);
        return "redirect:/registration/admAllRegistration";
    }

    //编辑
    @RequestMapping("admToUpdateRegistration")
    public String admToUpdateRegistration(Model model, Long id) {
        List<Registration> list = registrationService.queryByNumberRegistration(id);
        model.addAttribute("list", list);
        return "registrationJsp/admUpdateRegistration";
    }
    @RequestMapping("/admUpdateRegistration")
    public String admUpdateRegistration(Model model, Registration1 registration1) {
        Registration registration = ForFloat(registration1);
        registrationService.updateRegistration(registration);
        registration = registrationService.queryByNumber(registration.getRegistrationNumber());
        model.addAttribute("registration", registration);
        return "redirect:/registration/admAllRegistration";
    }

    //预览
    @RequestMapping("admToLookRegistration")
    public String admToLookRegistration(Model model, Long id) {
        List<Registration> list = registrationService.queryByNumberRegistration(id);
        model.addAttribute("list", list);
        return "registrationJsp/admLookRegistration";
    }
    //预览界面显示后直接返回到主界面
    @RequestMapping("admLookRegistration")
    public String admLookRegistration() {
        return"redirect:/registration/admAllRegistration";
    }

    //下载
    @RequestMapping("/admSaveRegistration")
    public String admSaveRegistration(long id) throws Exception {
        RegistrationForWord tt = new RegistrationForWord();
        List<Registration> list = registrationService.queryByNumberRegistration(id);
        Registration registration = list.get(0);
        tt.testWrite(registration);
        return "redirect:/registration/admAllRegistration";
    }


    /*
    //教师模块
    */
    //主页面
    @Autowired
    private ISelectTopicMapper selectTopicMapper;

    @Autowired
    private SelectUserBaseService selectUserBaseService;

    //主页面
    @RequestMapping("/teaAllRegistration")
    public ModelAndView listTeaRegistration(ModelAndView  modelAndView, SelectTopicVo vo, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (!ObjectUtils.isEmpty(session)){
            SelectUserBase userBase = (SelectUserBase) session.getAttribute("sessionUser");
            if (!ObjectUtils.isEmpty(userBase)){
                vo.setTeaId(userBase.getId());
            }
        }
        modelAndView.setViewName("registrationJsp/teaAllRegistration");
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
    @RequestMapping("teaToUpdateRegistration")
    public String LookTeaRegistration(Model model, Long id) {
        List<Registration> list = registrationService.queryByNumberRegistration(id);
        model.addAttribute("list", list);
        return "registrationJsp/teaUpdateRegistration";
    }
    @RequestMapping("/teaUpdateRegistration")
    public String teaUpdateRegistration(Model model, Registration1 registration1) {
        Registration registration = ForFloat(registration1);
        registrationService.updateRegistration(registration);
        registration = registrationService.queryByNumber(registration.getRegistrationNumber());
        model.addAttribute("registration", registration);
        return "redirect:/registration/teaAllRegistration";
    }

    //预览
    @RequestMapping("teaToLookRegistration")
    public String teaToLookRegistration(Model model, Long id) {
        List<Registration> list = registrationService.queryByNumberRegistration(id);
        model.addAttribute("list", list);
        return "registrationJsp/teaLookRegistration";
    }
    //预览界面显示后直接返回到主界面
    @RequestMapping("teaLookRegistration")
    public String teaLookRegistration() {
        return"redirect:/registration/teaAllRegistration";
    }

    //下载
    @RequestMapping("/teaSaveRegistration")
    public String teaSaveRegistration(long id) throws Exception {
        RegistrationForWord tt = new RegistrationForWord();
        List<Registration> list = registrationService.queryByNumberRegistration(id);
        Registration registration = list.get(0);
        tt.testWrite(registration);
        return "redirect:/registration/teaAllRegistration";
    }

    public Registration ForFloat(Registration1 registration1)
    {
        Registration registration = new Registration();
        registration.setRegistrationFaculty(ObjectUtils.isEmpty(registration1.getRegistrationFaculty())?"":registration1.getRegistrationFaculty());
        registration.setRegistrationMajor(ObjectUtils.isEmpty(registration1.getRegistrationMajor())?"":registration1.getRegistrationMajor());
        registration.setRegistrationNumber(ObjectUtils.isEmpty(registration1.getRegistrationNumber())?0:registration1.getRegistrationNumber());
        registration.setRegistrationName(ObjectUtils.isEmpty(registration1.getRegistrationName())?"":registration1.getRegistrationName());
        registration.setRegistrationTitle(ObjectUtils.isEmpty(registration1.getRegistrationTitle())?"":registration1.getRegistrationTitle());
        registration.setRegistrationTeacher(ObjectUtils.isEmpty(registration1.getRegistrationTeacher())?"":registration1.getRegistrationTeacher());
        registration.setRegistrationTime(ObjectUtils.isEmpty(registration1.getRegistrationTime())?"":registration1.getRegistrationTime());
        registration.setRegistrationLocation(ObjectUtils.isEmpty(registration1.getRegistrationLocation())?"":registration1.getRegistrationLocation());
        registration.setRegistrationMember_1_name(ObjectUtils.isEmpty(registration1.getRegistrationMember_1_name())?"":registration1.getRegistrationMember_1_name());
        registration.setRegistrationMember_1_title(ObjectUtils.isEmpty(registration1.getRegistrationMember_1_title())?"":registration1.getRegistrationMember_1_title());
        registration.setRegistrationMember_1_research(ObjectUtils.isEmpty(registration1.getRegistrationMember_1_research())?"":registration1.getRegistrationMember_1_research());
        registration.setRegistrationMember_1_score(ObjectUtils.isEmpty(registration1.getRegistrationMember_1_score())?0:Float.valueOf(registration1.getRegistrationMember_1_score()));
        registration.setRegistrationMember_2_name(ObjectUtils.isEmpty(registration1.getRegistrationMember_2_name())?"":registration1.getRegistrationMember_2_name());
        registration.setRegistrationMember_2_title(ObjectUtils.isEmpty(registration1.getRegistrationMember_2_title())?"":registration1.getRegistrationMember_2_title());
        registration.setRegistrationMember_2_research(ObjectUtils.isEmpty(registration1.getRegistrationMember_2_research())?"":registration1.getRegistrationMember_2_research());
        registration.setRegistrationMember_2_score(ObjectUtils.isEmpty(registration1.getRegistrationMember_2_score())?0:Float.valueOf(registration1.getRegistrationMember_2_score()));
        registration.setRegistrationMember_3_name(ObjectUtils.isEmpty(registration1.getRegistrationMember_3_name())?"":registration1.getRegistrationMember_3_name());
        registration.setRegistrationMember_3_title(ObjectUtils.isEmpty(registration1.getRegistrationMember_3_title())?"":registration1.getRegistrationMember_3_title());
        registration.setRegistrationMember_3_research(ObjectUtils.isEmpty(registration1.getRegistrationMember_3_research())?"":registration1.getRegistrationMember_3_research());
        registration.setRegistrationMember_3_score(ObjectUtils.isEmpty(registration1.getRegistrationMember_3_score())?0:Float.valueOf(registration1.getRegistrationMember_3_score()));
        registration.setRegistrationMember_4_name(ObjectUtils.isEmpty(registration1.getRegistrationMember_4_name())?"":registration1.getRegistrationMember_4_name());
        registration.setRegistrationMember_4_title(ObjectUtils.isEmpty(registration1.getRegistrationMember_4_title())?"":registration1.getRegistrationMember_4_title());
        registration.setRegistrationMember_4_research(ObjectUtils.isEmpty(registration1.getRegistrationMember_4_research())?"":registration1.getRegistrationMember_4_research());
        registration.setRegistrationMember_4_score(ObjectUtils.isEmpty(registration1.getRegistrationMember_4_score())?0:Float.valueOf(registration1.getRegistrationMember_4_score()));
        registration.setRegistrationMember_5_name(ObjectUtils.isEmpty(registration1.getRegistrationMember_5_name())?"":registration1.getRegistrationMember_5_name());
        registration.setRegistrationMember_5_title(ObjectUtils.isEmpty(registration1.getRegistrationMember_5_title())?"":registration1.getRegistrationMember_5_title());
        registration.setRegistrationMember_5_research(ObjectUtils.isEmpty(registration1.getRegistrationMember_5_research())?"":registration1.getRegistrationMember_5_research());
        registration.setRegistrationMember_5_score(ObjectUtils.isEmpty(registration1.getRegistrationMember_5_score())?0:Float.valueOf(registration1.getRegistrationMember_5_score()));

        registration.setRegistrationTotal_score(registration.getRegistrationMember_1_score()+registration.getRegistrationMember_2_score()+registration.getRegistrationMember_3_score()+registration.getRegistrationMember_4_score()+registration.getRegistrationMember_5_score());

        registration.setRegistrationJudgement(ObjectUtils.isEmpty(registration1.getRegistrationJudgement())?"":registration1.getRegistrationJudgement());
        registration.setRegistrationMentor_score(ObjectUtils.isEmpty(registration1.getRegistrationMentor_score())?0:Float.valueOf(registration1.getRegistrationMentor_score()));
        registration.setRegistrationJudge_score(ObjectUtils.isEmpty(registration1.getRegistrationJudge_score())?0:Float.valueOf(registration1.getRegistrationJudge_score()));
        registration.setRegistrationScore(registration.getRegistrationTotal_score());
        registration.setRegistrationThesis_score(registration.getRegistrationMentor_score()+registration.getRegistrationJudge_score()+registration.getRegistrationScore());
        registration.setRegistrationThesis_score1(registration.getRegistrationThesis_score());

        registration.setRegistrationThesis_scale(ObjectUtils.isEmpty(registration1.getRegistrationThesis_scale())?"":registration1.getRegistrationThesis_scale());
        registration.setRegistrationRecord(ObjectUtils.isEmpty(registration1.getRegistrationRecord())?"":registration1.getRegistrationRecord());


        return registration;
    }
}
