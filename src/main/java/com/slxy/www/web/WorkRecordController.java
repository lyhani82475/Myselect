package com.slxy.www.web;

import com.baomidou.mybatisplus.plugins.Page;
import com.slxy.www.dao.ISelectTopicMapper;
import com.slxy.www.domain.dto.SelectTopicDto;
import com.slxy.www.domain.po.Score;
import com.slxy.www.domain.po.SelectUserBase;
import com.slxy.www.domain.po.WorkRecord;
import com.slxy.www.domain.vo.SelectTopicVo;
import com.slxy.www.domain.vo.SelectUserBaseVo;
import com.slxy.www.enums.EnumYesOrNo;
import com.slxy.www.service.SelectUserBaseService;
import com.slxy.www.service.WorkRecordService;
import com.slxy.www.service.forWord.WorkRecordForWord;
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
@RequestMapping("/workRecord")
public class WorkRecordController {

    @Autowired
    private WorkRecordService workRecordService;

    /*
    //管理员模块
    */
    //主界面
    @RequestMapping("/admAllRecord")
    public String listAdmRecord(Model model) {
        List<WorkRecord> list = workRecordService.queryAllWorkRecord();
        model.addAttribute("list", list);
        return "workRecordJsp/admAllRecord";
    }

    //添加
    @RequestMapping("admToAddRecord")
    public String admToAddRecord() {
        //return调用jsp页面
        return "workRecordJsp/admAddRecord";
    }
    @RequestMapping("/admAddRecord")
    public String admAddRecord(WorkRecord workRecord) {
        workRecordService.addWorkRecord(workRecord);
        return "redirect:/workRecord/admAllRecord";
    }

    //下载
    @RequestMapping("/del/{workRecordNumber}")
    public String deleteRecord(@PathVariable("workRecordNumber") Long id) {
        workRecordService.deleteWorkRecordByNumber(id);
        return "redirect:/workRecord/admAllRecord";
    }

    //编辑
    @RequestMapping("admToUpdateRecord")
    public String admToUpdateRecord(Model model, Long id) {
        List<WorkRecord> list = workRecordService.queryByNumberWorkRecord(id);
        model.addAttribute("list", list);
        return "workRecordJsp/admUpdateRecord";
    }
    @RequestMapping("/admUpdateRecord")
    public String admUpdateRecord(Model model, WorkRecord workRecord) {
        workRecordService.updateWorkRecord(workRecord);
        workRecord = workRecordService.queryByNumber(workRecord.getWorkRecordNumber());
        model.addAttribute("workRecord", workRecord);
        return "redirect:/workRecord/admAllRecord";
    }

    //预览
    @RequestMapping("admToLookRecord")
    public String admToLookRecord(Model model, Long id) {
        List<WorkRecord> list = workRecordService.queryByNumberWorkRecord(id);
        model.addAttribute("list", list);
        return "workRecordJsp/admLookRecord";
    }
    //预览界面显示后直接返回到主界面
    @RequestMapping("admLookRecord")
    public String admLookRecord() {
        return"redirect:/workRecord/admAllRecord";
    }

    //下载
    @RequestMapping("/admSaveRecord")
        public String admSaveRecord(long id) throws Exception {
        WorkRecordForWord tt = new WorkRecordForWord();
        List<WorkRecord> list = workRecordService.queryByNumberWorkRecord(id);
        WorkRecord workRecord = list.get(0);
        tt.testWrite(workRecord);
        return "redirect:/workRecord/admAllRecord";
    }


    /*
     *学生模块
     */
    //主页面
    @RequestMapping("/stuAllRecord")
    public String listStuRecord(Model model, SelectUserBaseVo userBaseVo, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (!ObjectUtils.isEmpty(session)){
            SelectUserBase userBase = (SelectUserBase) session.getAttribute("sessionUser");
            if (!ObjectUtils.isEmpty(userBase)){
                userBaseVo.setId(userBase.getId()).setUserCode(userBase.getUserCode());
            }
        }
        long id = Long.parseLong(userBaseVo.getUserCode());
        List<WorkRecord> list = workRecordService.queryByNumberWorkRecord(id);
        model.addAttribute("list", list);
        return "workRecordJsp/stuAllRecord";
    }

    //编辑
    @RequestMapping("stuToUpdateRecord")
    public String stuToUpdateRecord(Model model, Long id) {
        List<WorkRecord> list = workRecordService.queryByNumberWorkRecord(id);
        model.addAttribute("list", list);
        return "workRecordJsp/stuUpdateRecord";
    }
    @RequestMapping("/stuUpdateRecord")
    public String stuUpdateRecord(Model model, WorkRecord workRecord) {
        workRecordService.updateWorkRecord(workRecord);
        workRecord = workRecordService.queryByNumber(workRecord.getWorkRecordNumber());
        model.addAttribute("workRecord", workRecord);
        return "redirect:/workRecord/stuAllRecord";
    }

    //预览
    @RequestMapping("stuToLookRecord")
    public String stuToLookRecord(Model model, Long id) {
        List<WorkRecord> list = workRecordService.queryByNumberWorkRecord(id);
        model.addAttribute("list", list);
        return "workRecordJsp/stuLookRecord";
    }
    //预览界面显示后直接返回到主界面
    @RequestMapping("stuLookRecord")
    public String stuLookRecord() {
        return"redirect:/workRecord/stuAllRecord";
    }

    //下载
    @RequestMapping("/stuSaveRecord")
    public String stuSaveRecord(long id) throws Exception {
        WorkRecordForWord tt = new WorkRecordForWord();
        List<WorkRecord> list = workRecordService.queryByNumberWorkRecord(id);
        WorkRecord workRecord = list.get(0);
        tt.testWrite(workRecord);
        return "redirect:/workRecord/stuAllRecord";
    }



    /*
    //教师模块
    */
    @Autowired
    private ISelectTopicMapper selectTopicMapper;

    @Autowired
    private SelectUserBaseService selectUserBaseService;

    //主页面
    @RequestMapping("/teaAllRecord")
    public ModelAndView listTeaRecord(ModelAndView  modelAndView, SelectTopicVo vo, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (!ObjectUtils.isEmpty(session)){
            SelectUserBase userBase = (SelectUserBase) session.getAttribute("sessionUser");
            if (!ObjectUtils.isEmpty(userBase)){
                vo.setTeaId(userBase.getId());
            }
        }
        modelAndView.setViewName("workRecordJsp/teaAllRecord");
        vo.setDelState(EnumYesOrNo.NO.getValue());

        Page<SelectTopicDto> page = new Page<>(vo.getPage(),100);
        List<SelectTopicDto> list = selectTopicMapper.getTopicByPage(page, vo);

        List<SelectTopicDto> topicDtos = new ArrayList<>();
        for(SelectTopicDto dto : list){
            if (dto.getTeaAuditState().equals(2)){
                SelectUserBase userBase = selectUserBaseService.selectById(dto.getStuId());
                dto.setStuName(userBase.getUserName()).setUserCode(userBase.getUserCode());
                topicDtos.add(dto);
            }
        }

        modelAndView.addObject("topicList",topicDtos);
        return modelAndView;
    }

    //编辑
    @RequestMapping("teaToUpdateRecord")
    public String LookTeaRecord(Model model, Long id) {
        List<WorkRecord> list = workRecordService.queryByNumberWorkRecord(id);
        model.addAttribute("list", list);
        return "workRecordJsp/teaUpdateRecord";
    }
    @RequestMapping("/teaUpdateRecord")
    public String teaUpdateRecord(Model model, WorkRecord workRecord) {
        workRecordService.updateWorkRecord(workRecord);
        workRecord = workRecordService.queryByNumber(workRecord.getWorkRecordNumber());
        model.addAttribute("workRecord", workRecord);
        return "redirect:/workRecord/teaAllRecord";
    }

    //预览
    @RequestMapping("teaToLookRecord")
    public String teaToLookRecord(Model model, Long id) {
        List<WorkRecord> list = workRecordService.queryByNumberWorkRecord(id);
        model.addAttribute("list", list);
        return "workRecordJsp/teaLookRecord";
    }
    //预览界面显示后直接返回到主界面
    @RequestMapping("teaLookRecord")
    public String teaLookRecord() {
        return"redirect:/workRecord/teaAllRecord";
    }

    //下载
    @RequestMapping("/teaSaveRecord")
    public String teaSaveRecord(long id) throws Exception {
        WorkRecordForWord tt = new WorkRecordForWord();
        List<WorkRecord> list = workRecordService.queryByNumberWorkRecord(id);
        WorkRecord workRecord = list.get(0);
        tt.testWrite(workRecord);
        return "redirect:/workRecord/teaAllRecord";
    }

}
