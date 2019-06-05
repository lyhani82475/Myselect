package com.slxy.www.web;

import com.baomidou.mybatisplus.plugins.Page;
import com.slxy.www.dao.ISelectTopicMapper;
import com.slxy.www.domain.dto.SelectTopicDto;
import com.slxy.www.domain.po.OpeningReport;
import com.slxy.www.domain.po.SelectUserBase;
import com.slxy.www.domain.vo.SelectTopicVo;
import com.slxy.www.domain.vo.SelectUserBaseVo;
import com.slxy.www.enums.EnumYesOrNo;
import com.slxy.www.service.OpeningReportService;
import com.slxy.www.service.SelectUserBaseService;
import com.slxy.www.service.forWord.OpeningReportForWord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/openingReport")
@SessionAttributes(value = {"sessionUser","userType","sessionIp"})
public class OpeningReportController {
    @Autowired
    private OpeningReportService openingReportService;

    /*
    * 管理员模块
    * */
    //主页面
    @RequestMapping("/admAllReport")
    public String listAdmReport(Model model) {
        List<OpeningReport> list = openingReportService.queryAllReport();
        model.addAttribute("list", list);
        return "openingReportJsp/admAllReport";
    }

    //添加
    @RequestMapping("admToAddReport")
    public String admToAddReport() {
        //return调用jsp页面
        return "openingReportJsp/admAddReport";
    }
    @RequestMapping("/admAddReport")
    public String admAddReport(OpeningReport openingReport) {
        openingReportService.addReport(openingReport);
        return "redirect:/openingReport/admAllReport";
    }

    //删除
    @RequestMapping("/del/{openingReportNumber}")
    public String deleteReport(@PathVariable("openingReportNumber") Long id) {
        openingReportService.deleteReportByNumber(id);
        return "redirect:/openingReport/admAllReport";
    }

    //编辑
    @RequestMapping("admToUpdateReport")
    public String admToUpdateReport(Model model, Long id) {
        List<OpeningReport> list = openingReportService.queryByNumberReport(id);
        model.addAttribute("list", list);
        return "openingReportJsp/admUpdateReport";
    }
    @RequestMapping("/admUpdateReport")
    public String updateReport(Model model, OpeningReport openingReport) {
        openingReportService.updateReport(openingReport);
        openingReport = openingReportService.queryByNumber(openingReport.getOpeningReportNumber());
        model.addAttribute("openingReport", openingReport);
        return "redirect:/openingReport/admAllReport";
    }

    //预览
    @RequestMapping("admToLookReport")
    public String admToLookReport(Model model, Long id) {
        List<OpeningReport> list = openingReportService.queryByNumberReport(id);
        model.addAttribute("list", list);
        return "openingReportJsp/admLookReport";
    }
    //预览界面显示后直接返回到主界面
    @RequestMapping("admLookReport")
    public String admLookReport() {
        return"redirect:/openingReport/admAllReport";
    }

    //下载
    @RequestMapping("/admSaveReport")
    public String admSaveReport(long id) throws Exception {
        OpeningReportForWord tt = new OpeningReportForWord();
        List<OpeningReport> list = openingReportService.queryByNumberReport(id);
        OpeningReport openingReport = list.get(0);
        tt.testWrite(openingReport);
        return "redirect:/openingReport/admAllReport";
    }


    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    //    学生模块
    //主页面
    @RequestMapping("/stuAllReport")
    public String listStuReport(Model model, SelectUserBaseVo userBaseVo, HttpServletRequest request) {
        //你传过来的vo肯定时空的userBaseVo
        HttpSession session = request.getSession();
        if (!ObjectUtils.isEmpty(session)){
            SelectUserBase userBase = (SelectUserBase) session.getAttribute("sessionUser");
            if (!ObjectUtils.isEmpty(userBase)){
                userBaseVo.setId(userBase.getId()).setUserCode(userBase.getUserCode());
            }
        }
        long id = Long.parseLong(userBaseVo.getUserCode());
        List<OpeningReport> list = openingReportService.queryByNumberReport(id);
        model.addAttribute("list", list);
        return "openingReportJsp/stuAllReport";
    }

    //编辑
    @RequestMapping("stuToUpdateReport")
    public String LookStuReport(Model model, Long id) {
        List<OpeningReport> list = openingReportService.queryByNumberReport(id);
        model.addAttribute("list", list);
        return "openingReportJsp/stuUpdateReport";
    }
    @RequestMapping("/stuUpdateReport")
    public String stuUpdateReport(Model model, OpeningReport openingReport) {
        openingReportService.updateReport(openingReport);
        openingReport = openingReportService.queryByNumber(openingReport.getOpeningReportNumber());
        model.addAttribute("openingReport", openingReport);
        return "redirect:/openingReport/stuAllReport";
    }

    //预览
    @RequestMapping("stuToLookReport")
    public String stuToLookReport(Model model, Long id) {
        List<OpeningReport> list = openingReportService.queryByNumberReport(id);
        model.addAttribute("list", list);
        return "openingReportJsp/stuLookReport";
    }
    //预览界面显示后直接返回到主界面
    @RequestMapping("stuLookReport")
    public String stuLookReport() {
        return"redirect:/openingReport/stuAllReport";
    }

    //下载
    @RequestMapping("/stuSaveReport")
    public String stuSaveReport(long id) throws Exception {
        OpeningReportForWord tt = new OpeningReportForWord();
        List<OpeningReport> list = openingReportService.queryByNumberReport(id);
        OpeningReport openingReport = list.get(0);
        tt.testWrite(openingReport);
        return "redirect:/openingReport/stuAllReport";
    }


    /*
    * 教师模块
    * */
    @Autowired
    private ISelectTopicMapper selectTopicMapper;

    @Autowired
    private SelectUserBaseService selectUserBaseService;

    //主页面
    @RequestMapping("/teaAllReport")
    public ModelAndView listTeaReport(ModelAndView  modelAndView, SelectTopicVo vo, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (!ObjectUtils.isEmpty(session)){
            SelectUserBase userBase = (SelectUserBase) session.getAttribute("sessionUser");
            if (!ObjectUtils.isEmpty(userBase)){
                vo.setTeaId(userBase.getId());
            }
        }
        modelAndView.setViewName("openingReportJsp/teaAllReport");
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
    @RequestMapping("teaToUpdateReport")
    public String LookTeaReport(Model model, Long id) {
        List<OpeningReport> list = openingReportService.queryByNumberReport(id);
        model.addAttribute("list", list);
        return "openingReportJsp/teaUpdateReport";
    }
    @RequestMapping("/teaUpdateReport")
    public String teaUpdateReport(Model model, OpeningReport openingReport) {
        openingReportService.updateReport(openingReport);
        openingReport = openingReportService.queryByNumber(openingReport.getOpeningReportNumber());
        model.addAttribute("openingReport", openingReport);
        return "redirect:/openingReport/teaAllReport";
    }

    //预览
    @RequestMapping("teaToLookReport")
    public String teaToLookReport(Model model, Long id) {
        List<OpeningReport> list = openingReportService.queryByNumberReport(id);
        model.addAttribute("list", list);
        return "openingReportJsp/teaLookReport";
    }
    //预览界面显示后直接返回到主界面
    @RequestMapping("teaLookReport")
    public String teaLookReport() {
        return"redirect:/openingReport/teaAllReport";
    }

    //下载
    @RequestMapping("/teaSaveReport")
    public String teaSaveReport(long id) throws Exception {
        OpeningReportForWord tt = new OpeningReportForWord();
        List<OpeningReport> list = openingReportService.queryByNumberReport(id);
        OpeningReport openingReport = list.get(0);
        tt.testWrite(openingReport);
        return "redirect:/openingReport/teaAllReport";
    }
}




