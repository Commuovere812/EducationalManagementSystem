package com.shhy.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import com.shhy.domain.Score;
import com.shhy.domain.ScoreSCT;

import com.shhy.service.ScoreService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
@Controller
@RequestMapping(value = "/score")
public class ScoreController {
    @Autowired
    private ScoreService scoreService;


    @RequestMapping(value = "/insert")
    public ModelAndView insert(Score score) {
        if(score.getCid()==null||score.getSid()==null){
            ModelAndView modelAndView = new ModelAndView("redirect:addForm");
            return modelAndView;
        }
        ScoreSCT scoreSCT = new ScoreSCT();
        scoreSCT.setCid(score.getCid());
        scoreSCT.setSid(score.getSid());
        List<ScoreSCT> all = scoreService.findAll(scoreSCT);
        System.out.println("************************************");
        if(all.size()!=0)
        {
            ModelAndView modelAndView = new ModelAndView("redirect:addForm");
            return modelAndView;
        }
        Integer i = scoreService.insert(score);
        ModelAndView modelAndView = new ModelAndView("redirect:list");
        return modelAndView;
    }


    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public ModelAndView findAll(ScoreSCT scoreSCT, @RequestParam(value = "page",defaultValue = "1")Integer page, @RequestParam(value = "pageSize",defaultValue = "5")Integer pageSize)
    {
        PageHelper.startPage(page,pageSize);
        ModelAndView modelAndView = new ModelAndView("/score/list");

        List<ScoreSCT> scoreSCTS  = scoreService.findAll(scoreSCT);
        //创建一个PageInfo对象,用以封装查询到的数据,同时指定页码导航列表的数目

        PageInfo pageinfo = new PageInfo(scoreSCTS,5);
        //将PageInfo对象封装到模型中
        modelAndView.addObject("pageinfo", pageinfo);
        return modelAndView;
    }

    @RequestMapping(value = "/findOne")
    public ModelAndView findOne(@RequestParam Integer cid ,@RequestParam Integer sid) {
        ScoreSCT scoreSCT = new ScoreSCT();
        scoreSCT.setSid(sid);
        scoreSCT.setCid(cid);
        ModelAndView modelAndView = new ModelAndView("score/updateForm");
        List<ScoreSCT> scoreSCTS  = scoreService.findAll(scoreSCT);
        modelAndView.addObject("scoreSCT", scoreSCTS);
        return modelAndView;
    }


    @RequestMapping(value = "/delete")
    public ModelAndView delete(Score score) {
        Integer i = scoreService.delete(score.getCid(),score.getSid());
        ModelAndView modelAndView = new ModelAndView("redirect:list");
        return modelAndView;
    }

    @RequestMapping(value = "deletesc")
    public ModelAndView deletesc(@Param(value = "cid")Integer cid,@Param(value = "sid")Integer sid) {
        Integer i = scoreService.delete(cid, sid);
        ModelAndView modelAndView = new ModelAndView("redirect:list");
        return modelAndView;
    }



    @RequestMapping(value = "/update")
    public ModelAndView update(Score score) {
        Integer i = scoreService.update(score);
        ModelAndView modelAndView = new ModelAndView("redirect:list");
        return modelAndView;
    }

    @RequestMapping(value = "/addForm")
    public String toAddForm(){
        return "score/addForm";
    }




}
