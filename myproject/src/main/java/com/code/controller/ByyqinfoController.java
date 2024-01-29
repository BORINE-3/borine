/***
 **/
package com.code.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.code.entity.Datainfo;
import com.code.mapper.ByyqinfoMapper;
import com.code.entity.Byyqinfo;
import com.code.mapper.DatainfoMapper;
import com.code.util.CommonUtils;
import com.code.util.GlobalResult;
import org.springframework.beans.factory.annotation.Autowired;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 后台byyqinfo表的管理操作
 */
@Controller
@RequestMapping("/byyqinfo")
public class ByyqinfoController {

    @Autowired   //注入对象
    public ByyqinfoMapper byyqinfoMapper;
    @Autowired   //注入对象
    public DatainfoMapper datainfoMapper;

    @ResponseBody
    @RequestMapping("/apiinsert") //插入数据
    public GlobalResult apiinsert(Byyqinfo byyqinfo) {
        try {
            byyqinfoMapper.insert(byyqinfo);
            return GlobalResult.ok(byyqinfo);
        } catch (Exception e) {
            return GlobalResult.errorMsg(e.getMessage());
        }
    }

    @ResponseBody
    @RequestMapping("/apiupdate") //修改数据
    public GlobalResult apiupdate(Byyqinfo byyqinfo) {
        try {
            byyqinfoMapper.updateById(byyqinfo);
            return GlobalResult.ok(byyqinfo);
        } catch (Exception e) {
            return GlobalResult.errorMsg(e.getMessage());
        }
    }

    @ResponseBody
    @RequestMapping("/apidelete") //删除数据
    public GlobalResult apidelete(Integer id) {
        try {
            byyqinfoMapper.deleteById(id);
            return GlobalResult.ok("删除成功");
        } catch (Exception e) {
            return GlobalResult.errorMsg(e.getMessage());
        }
    }

    @RequestMapping("/add")
    public String toAdd(Model model) {
        List<Datainfo> datainfoList = datainfoMapper.selectByMap(null);
        model.addAttribute("datainfoList", datainfoList);
        return "byyqinfo/byyqinfoAdd";
    }

    @RequestMapping("/insert") //插入数据
    public String save(Byyqinfo byyqinfo) {
        byyqinfoMapper.insert(byyqinfo);
        return "redirect:list";
    }

    @RequestMapping("/update") //修改数据
    public String update(Byyqinfo byyqinfo) {
        byyqinfoMapper.updateById(byyqinfo);
        return "redirect:list";
    }

    @RequestMapping("/delete") //删除数据
    public String delete(Integer id) {
        byyqinfoMapper.deleteById(id);
        return "redirect:list";
    }

    @RequestMapping("/edit") //编辑数据
    public String edit(String id, Model model) {
        Byyqinfo byyqinfo = byyqinfoMapper.selectById(id);
        model.addAttribute("byyqinfo", byyqinfo);
        List<Datainfo> datainfoList = datainfoMapper.selectByMap(null);
        model.addAttribute("datainfoList", datainfoList);
        return "byyqinfo/byyqinfoUpdate";
    }

    @RequestMapping("/detail") //编辑数据
    public String detail(String id, Model model) {
        Byyqinfo byyqinfo = byyqinfoMapper.selectById(id);
        model.addAttribute("byyqinfo", byyqinfo);
        return "byyqinfo/byyqinfoDetail";
    }

    /**
     * @param keyword  搜索关键词
     * @param p        页面            默认第1页
     * @param pageSize 每页显示条数 默认每页10条
     * @param model
     * @return
     */
    @RequestMapping("/list") //分页查询数据
    public String list(String keyword, Integer p, Integer pageSize, Model model) {
        EntityWrapper<Byyqinfo> queryWrapper = new EntityWrapper<Byyqinfo>();
        p = null == p ? 1 : p; //默认显示第一页
        pageSize = null == pageSize ? 10 : pageSize; //默认每页显示10条


        if (CommonUtils.isNotEmpty(keyword)) {
            queryWrapper.like("mname", keyword);
            model.addAttribute("keyword", keyword);   //绑定搜索关键词
            pageSize = 1000;
        }
        Page<Byyqinfo> sortPage = new Page<Byyqinfo>(p, pageSize);//参数一是当前页，参数二是每页个数
        List<Byyqinfo> byyqinfoList = byyqinfoMapper.selectPage(sortPage, queryWrapper);
        long total = sortPage.getTotal(); //总页数
        int current = sortPage.getCurrent();
        long pages = sortPage.getPages();
        model.addAttribute("byyqinfoList", byyqinfoList);   //绑定接受参数
        model.addAttribute("cp", current);   //当前页
        model.addAttribute("tp", pages);   //总页数
        model.addAttribute("total", total);   //总条数
        model.addAttribute("pageListURL", "byyqinfo/list");   //总条数
        return "byyqinfo/byyqinfoList";
    }
}
