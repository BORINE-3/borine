/***
 **/
package com.code.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.code.entity.Datainfo;
import com.code.entity.Kcmbinfo;
import com.code.mapper.DatainfoMapper;
import com.code.mapper.KcmbinfoMapper;
import com.code.mapper.ScoreinfoMapper;
import com.code.entity.Scoreinfo;
import com.code.util.CommonUtils;
import com.code.util.GlobalResult;
import org.springframework.beans.factory.annotation.Autowired;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 后台scoreinfo表的管理操作
 */
@Controller
@RequestMapping("/scoreinfo")
public class ScoreinfoController {
    @Autowired   //注入对象
    public DatainfoMapper datainfoMapper;
    @Autowired   //注入对象
    public ScoreinfoMapper scoreinfoMapper;
    @Autowired   //注入对象
    public KcmbinfoMapper kcmbinfoMapper;

    @ResponseBody
    @RequestMapping("/apiinsert") //插入数据
    public GlobalResult apiinsert(Scoreinfo scoreinfo) {
        try {
            scoreinfoMapper.insert(scoreinfo);
            return GlobalResult.ok(scoreinfo);
        } catch (Exception e) {
            return GlobalResult.errorMsg(e.getMessage());
        }
    }

    @ResponseBody
    @RequestMapping("/apiupdate") //修改数据
    public GlobalResult apiupdate(Scoreinfo scoreinfo) {
        try {
            scoreinfoMapper.updateById(scoreinfo);
            return GlobalResult.ok(scoreinfo);
        } catch (Exception e) {
            return GlobalResult.errorMsg(e.getMessage());
        }
    }

    @ResponseBody
    @RequestMapping("/apidelete") //删除数据
    public GlobalResult apidelete(int id) {
        try {
            scoreinfoMapper.deleteById(id);
            return GlobalResult.ok("删除成功");
        } catch (Exception e) {
            return GlobalResult.errorMsg(e.getMessage());
        }
    }

    @RequestMapping("/add")
    public String toAdd(Model model) {
        model.addAttribute("dataList", datainfoMapper.selectByMap(null));
        return "scoreinfo/scoreinfoAdd";
    }

    @RequestMapping("/insert") //插入数据
    public String save(Scoreinfo s) {

        s.setPscore(  (Double.parseDouble(s.getCq())+Double.parseDouble(s.getZy()) ) +"" );
        s.setYscore(  (Double.parseDouble(s.getSj())+Double.parseDouble(s.getBg()) ) +"" );
        s.setQscore((Double.parseDouble(s.getKs1()) + Double.parseDouble(s.getKs2()) + Double.parseDouble(s.getKs3()) + Double.parseDouble(s.getKs4())+ Double.parseDouble(s.getKs5())+Double.parseDouble(s.getKs6())  ) + "");


        scoreinfoMapper.insert(s);
        return "redirect:list";
    }

    @RequestMapping("/update") //修改数据
    public String update(Scoreinfo s) {

        s.setPscore(  (Double.parseDouble(s.getCq())+Double.parseDouble(s.getZy()) ) +"" );
        s.setYscore(  (Double.parseDouble(s.getSj())+Double.parseDouble(s.getBg()) ) +"" );
        s.setQscore((Double.parseDouble(s.getKs1()) + Double.parseDouble(s.getKs2()) + Double.parseDouble(s.getKs3()) + Double.parseDouble(s.getKs4())+ Double.parseDouble(s.getKs5())+Double.parseDouble(s.getKs6())  ) + "");

        scoreinfoMapper.updateById(s);
        return "redirect:list";
    }

    @RequestMapping("/delete") //删除数据
    public String delete(int id) {
        scoreinfoMapper.deleteById(id);
        return "redirect:list";
    }

    @RequestMapping("/edit") //编辑数据
    public String edit(int id, Model model) {
        model.addAttribute("dataList", datainfoMapper.selectByMap(null));
        Scoreinfo scoreinfo = scoreinfoMapper.selectById(id);
        model.addAttribute("scoreinfo", scoreinfo);
        return "scoreinfo/scoreinfoUpdate";
    }

    @RequestMapping("/detail") //编辑数据
    public String detail(int id, Model model) {
        Scoreinfo scoreinfo = scoreinfoMapper.selectById(id);
        model.addAttribute("scoreinfo", scoreinfo);
        return "scoreinfo/scoreinfoDetail";
    }

    /**
     * @param keyword  搜索关键词
     * @param p        页面            默认第1页
     * @param pageSize 每页显示条数 默认每页10条
     * @param model
     * @return
     */
    @RequestMapping("/list") //分页查询数据
    public String list(String keyword, String tname, Integer p, Integer pageSize, Model model) {
        model.addAttribute("dataList", datainfoMapper.selectByMap(null));


        EntityWrapper<Scoreinfo> queryWrapper = new EntityWrapper<Scoreinfo>();
        if (CommonUtils.isNotEmpty(keyword)) {
            queryWrapper.like("uname", keyword);
            model.addAttribute("keyword", keyword);   //绑定搜索关键词
            pageSize = 1000;
        }
        if (CommonUtils.isNotEmpty(tname)) {
            queryWrapper.eq("tname", tname);
            model.addAttribute("tname", tname);   //绑定搜索关键词
            pageSize = 1000;
        }
        p = null == p ? 1 : p; //默认显示第一页
        pageSize = null == pageSize ? 10 : pageSize; //默认每页显示10条
        Page<Scoreinfo> sortPage = new Page<Scoreinfo>(p, pageSize);//参数一是当前页，参数二是每页个数
        List<Scoreinfo> scoreinfoList = scoreinfoMapper.selectPage(sortPage, queryWrapper);

        for (Scoreinfo ss : scoreinfoList) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("name", ss.getTname());
            Datainfo datainfo = datainfoMapper.selectByMap(map).get(0);
            //计算k1 k2 k3
            Map<String, Object> var1 = new HashMap<String, Object>();
            var1.put("wkname", datainfo.getName());
            List<Kcmbinfo> kcmbinfoList = kcmbinfoMapper.selectByMap(var1);



            double 学生课程达成度 = new Suanfa().学生课程达成度计算(kcmbinfoList,ss, datainfo);
            ss.set学生课程达成度(学生课程达成度 + "");
        }
        long total = sortPage.getTotal(); //总页数
        int current = sortPage.getCurrent();
        long pages = sortPage.getPages();
        model.addAttribute("scoreinfoList", scoreinfoList);   //绑定接受参数
        model.addAttribute("cp", current);   //当前页
        model.addAttribute("tp", pages);   //总页数
        model.addAttribute("total", total);   //总条数
        model.addAttribute("pageListURL", "scoreinfo/list");   //总条数


        return "scoreinfo/scoreinfoList";
    }


}
