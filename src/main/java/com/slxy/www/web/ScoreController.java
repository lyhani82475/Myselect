package com.slxy.www.web;


import com.baomidou.mybatisplus.plugins.Page;
import com.slxy.www.dao.ISelectTopicMapper;
import com.slxy.www.domain.dto.SelectTopicDto;
import com.slxy.www.domain.po.Registration;
import com.slxy.www.domain.po.Score;
import com.slxy.www.domain.po.Score1;
import com.slxy.www.domain.po.SelectUserBase;
import com.slxy.www.domain.vo.SelectTopicVo;
import com.slxy.www.domain.vo.SelectUserBaseVo;
import com.slxy.www.enums.EnumYesOrNo;
import com.slxy.www.service.SelectUserBaseService;
import com.slxy.www.service.forWord.ScoreForWord;
import com.slxy.www.service.ScoreService;
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
@RequestMapping("/score")
public class ScoreController {
    @Autowired
    private ScoreService scoreService;

    /*
    //管理员模块
    */
    //主页面
    @RequestMapping("/admAllScore")
    public String listAdmScore(Model model) {
        List<Score> list = scoreService.queryAllScore();
        model.addAttribute("list", list);
        return "scoreJsp/admAllScore";
    }

    //添加
    @RequestMapping("admToAddScore")
    public String admToAddScore() {
        //return调用jsp页面
        return "scoreJsp/admAddScore";
    }
    @RequestMapping("/admAddScore")
    public String admAddScore(Score1 score1) {
        Score score = ForFloat(score1);
        scoreService.addScore(score);
        return "redirect:/score/admAllScore";
    }

    //删除
    @RequestMapping("/del/{scoreNumber}")
    public String deleteScore(@PathVariable("scoreNumber") Long id) {
        scoreService.deleteScoreByNumber(id);
        return "redirect:/score/admAllScore";
    }

    //编辑
    @RequestMapping("admToUpdateScore")
    public String admToUpdateScore(Model model, Long id) {
        List<Score> list = scoreService.queryByNumberScore(id);
        model.addAttribute("list", list);
        return "scoreJsp/admUpdateScore";
    }
    @RequestMapping("/admUpdateScore")
    public String admUpdateScore(Model model, Score1 score1) {
        Score score = ForFloat(score1);
        scoreService.updateScore(score);
        score = scoreService.queryByNumber(score.getScoreNumber());
        model.addAttribute("score", score);
        return "redirect:/score/admAllScore";
    }

    //预览
    @RequestMapping("admToLookScore")
    public String admToLookScore(Model model, Long id) {
        List<Score> list = scoreService.queryByNumberScore(id);
        model.addAttribute("list", list);
        return "scoreJsp/admLookScore";
    }
    //预览界面显示后直接返回到主界面
    @RequestMapping("admLookScore")
    public String admLookScore() {
        return"redirect:/score/admAllScore";
    }

    //下载
    @RequestMapping("/admSaveScore")
    public String admSaveScore(long id) throws Exception {
        ScoreForWord tt = new ScoreForWord();
        List<Score> list = scoreService.queryByNumberScore(id);
        Score score = list.get(0);
        tt.testWrite(score);
        return "redirect:/score/admAllScore";
    }


    /*
    //教师模块
    */
    @Autowired
    private ISelectTopicMapper selectTopicMapper;

    @Autowired
    private SelectUserBaseService selectUserBaseService;

    //主页面
    @RequestMapping("/teaAllScore")
    public ModelAndView listTeaScore(ModelAndView  modelAndView, SelectTopicVo vo, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (!ObjectUtils.isEmpty(session)){
            SelectUserBase userBase = (SelectUserBase) session.getAttribute("sessionUser");
            if (!ObjectUtils.isEmpty(userBase)){
                vo.setTeaId(userBase.getId());
            }
        }
        modelAndView.setViewName("scoreJsp/teaAllScore");
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
    @RequestMapping("teaToUpdateScore")
    public String LookTeaScore(Model model, Long id) {
        List<Score> list = scoreService.queryByNumberScore(id);
        model.addAttribute("list", list);
        return "scoreJsp/teaUpdateScore";
    }
    @RequestMapping("/teaUpdateScore")
    public String teaUpdateScore(Model model, Score1 score1) {
        Score score = ForFloat(score1);
        scoreService.updateScore(score);
        score = scoreService.queryByNumber(score.getScoreNumber());
        model.addAttribute("score", score);
        return "redirect:/score/teaAllScore";
    }

    //预览
    @RequestMapping("teaToLookScore")
    public String teaToLookScore(Model model, Long id) {
        List<Score> list = scoreService.queryByNumberScore(id);
        model.addAttribute("list", list);
        return "scoreJsp/teaLookScore";
    }
    //预览界面显示后直接返回到主界面
    @RequestMapping("teaLookScore")
    public String teaLookScore() {
        return"redirect:/score/teaAllScore";
    }

    //下载
    @RequestMapping("/teaSaveScore")
    public String teaSaveScore(long id) throws Exception {
        ScoreForWord tt = new ScoreForWord();
        List<Score> list = scoreService.queryByNumberScore(id);
        Score score = list.get(0);
        tt.testWrite(score);
        return "redirect:/score/teaAllScore";
    }

    public Score ForFloat(Score1 score1)
    {
        Score score = new Score();
        score.setScoreFaculty(ObjectUtils.isEmpty(score1.getScoreFaculty())?"":score1.getScoreFaculty());
        score.setScoreMajor(ObjectUtils.isEmpty(score1.getScoreMajor())?"":score1.getScoreMajor());
        score.setScoreName(ObjectUtils.isEmpty(score1.getScoreName())?"":score1.getScoreName());
        score.setScoreNumber(ObjectUtils.isEmpty(score1.getScoreNumber())?0:score1.getScoreNumber());
        score.setScoreTitle(ObjectUtils.isEmpty(score1.getScoreTitle())?"":score1.getScoreTitle());
        score.setScoreScore_1(ObjectUtils.isEmpty(score1.getScoreScore_1())?0:Float.valueOf(score1.getScoreScore_1()));
        score.setScoreScore_2(ObjectUtils.isEmpty(score1.getScoreScore_2())?0:Float.valueOf(score1.getScoreScore_2()));
        score.setScoreScore_3(ObjectUtils.isEmpty(score1.getScoreScore_3())?0:Float.valueOf(score1.getScoreScore_3()));
        score.setScoreScore_4(ObjectUtils.isEmpty(score1.getScoreScore_4())?0:Float.valueOf(score1.getScoreScore_4()));
        score.setScoreScore_5(ObjectUtils.isEmpty(score1.getScoreScore_5())?0:Float.valueOf(score1.getScoreScore_5()));
        score.setScoreScore_6(ObjectUtils.isEmpty(score1.getScoreScore_6())?0:Float.valueOf(score1.getScoreScore_6()));
        score.setScoreScore_7(ObjectUtils.isEmpty(score1.getScoreScore_7())?0:Float.valueOf(score1.getScoreScore_7()));
        score.setScoreScore_8(ObjectUtils.isEmpty(score1.getScoreScore_8())?0:Float.valueOf(score1.getScoreScore_8()));
        score.setScoreScore_9(ObjectUtils.isEmpty(score1.getScoreScore_9())?0:Float.valueOf(score1.getScoreScore_9()));
        score.setScoreScore_10(ObjectUtils.isEmpty(score1.getScoreScore_10())?0:Float.valueOf(score1.getScoreScore_10()));
        score.setScoreScore_11(ObjectUtils.isEmpty(score1.getScoreScore_11())?0:Float.valueOf(score1.getScoreScore_11()));
        score.setScoreScore_12(ObjectUtils.isEmpty(score1.getScoreScore_12())?0:Float.valueOf(score1.getScoreScore_12()));
        score.setScoreScore_13(ObjectUtils.isEmpty(score1.getScoreScore_13())?0:Float.valueOf(score1.getScoreScore_13()));
        score.setScoreScore_14(ObjectUtils.isEmpty(score1.getScoreScore_14())?0:Float.valueOf(score1.getScoreScore_14()));
        score.setScoreScore_15(ObjectUtils.isEmpty(score1.getScoreScore_15())?0:Float.valueOf(score1.getScoreScore_15()));
        score.setScoreScore_16(score.getScoreScore_1()+score.getScoreScore_2()+score.getScoreScore_3()+score.getScoreScore_4()+score.getScoreScore_5()+score.getScoreScore_6()+score.getScoreScore_7()+score.getScoreScore_8()+score.getScoreScore_9()+score.getScoreScore_10()+score.getScoreScore_11()+score.getScoreScore_12()+score.getScoreScore_13()+score.getScoreScore_14()+score.getScoreScore_15());
        score.setScoreTeacher_judge(ObjectUtils.isEmpty(score1.getScoreTeacher_judge())?"":score1.getScoreTeacher_judge());
        return score;
    }

}




