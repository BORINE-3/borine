/***
 **/
package com.code.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.code.entity.Datainfo;
import com.code.mapper.DatainfoMapper;
import com.code.mapper.KcmbinfoMapper;
import com.code.entity.Kcmbinfo;
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
 * 后台kcmbinfo表的管理操作
 */
@Controller
@RequestMapping("/kcmbinfo")
public class KcmbinfoController {

    @Autowired   //注入对象
    public KcmbinfoMapper kcmbinfoMapper;
    @Autowired   //注入对象
    public DatainfoMapper datainfoMapper;

    @ResponseBody
    @RequestMapping("/apiinsert") //插入数据
    public GlobalResult apiinsert(Kcmbinfo kcmbinfo) {
        try {
            kcmbinfoMapper.insert(kcmbinfo);
            return GlobalResult.ok(kcmbinfo);
        } catch (Exception e) {
            return GlobalResult.errorMsg(e.getMessage());
        }
    }

    @ResponseBody
    @RequestMapping("/apiupdate") //修改数据
    public GlobalResult apiupdate(Kcmbinfo kcmbinfo) {
        try {
            kcmbinfoMapper.updateById(kcmbinfo);
            return GlobalResult.ok(kcmbinfo);
        } catch (Exception e) {
            return GlobalResult.errorMsg(e.getMessage());
        }
    }

    @ResponseBody
    @RequestMapping("/apidelete") //删除数据
    public GlobalResult apidelete(Integer id) {
        try {
            kcmbinfoMapper.deleteById(id);
            return GlobalResult.ok("删除成功");
        } catch (Exception e) {
            return GlobalResult.errorMsg(e.getMessage());
        }
    }

    @RequestMapping("/add")
    public String toAdd(Model model) {
        List<Datainfo> datainfoList = datainfoMapper.selectByMap(null);
        model.addAttribute("datainfoList", datainfoList);
        return "kcmbinfo/kcmbinfoAdd";
    }

    @RequestMapping("/insert") //插入数据
    public String save(Kcmbinfo kcmbinfo) {
        kcmbinfoMapper.insert(kcmbinfo);
        return "redirect:list";
    }

    @RequestMapping("/update") //修改数据
    public String update(Kcmbinfo kcmbinfo) {
        kcmbinfoMapper.updateById(kcmbinfo);
        return "redirect:list";
    }

    @RequestMapping("/delete") //删除数据
    public String delete(Integer id) {
        kcmbinfoMapper.deleteById(id);
        return "redirect:list";
    }

    @RequestMapping("/edit") //编辑数据
    public String edit(String id, Model model) {
        List<Datainfo> datainfoList = datainfoMapper.selectByMap(null);
        model.addAttribute("datainfoList", datainfoList);
        Kcmbinfo kcmbinfo = kcmbinfoMapper.selectById(id);
        model.addAttribute("kcmbinfo", kcmbinfo);
        return "kcmbinfo/kcmbinfoUpdate";
    }

    @RequestMapping("/detail") //编辑数据
    public String detail(String id, Model model) {
        Kcmbinfo kcmbinfo = kcmbinfoMapper.selectById(id);
        model.addAttribute("kcmbinfo", kcmbinfo);
        return "kcmbinfo/kcmbinfoDetail";
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
        EntityWrapper<Kcmbinfo> queryWrapper = new EntityWrapper<Kcmbinfo>();


        p = null == p ? 1 : p; //默认显示第一页
        pageSize = null == pageSize ? 10 : pageSize; //默认每页显示10条

        if (CommonUtils.isNotEmpty(keyword)) {
            queryWrapper.like("wkname", keyword);
            model.addAttribute("keyword", keyword);   //绑定搜索关键词
            pageSize = 1000;
        }

        Page<Kcmbinfo> sortPage = new Page<Kcmbinfo>(p, pageSize);//参数一是当前页，参数二是每页个数
        List<Kcmbinfo> kcmbinfoList = kcmbinfoMapper.selectPage(sortPage, queryWrapper);
        long total = sortPage.getTotal(); //总页数
        int current = sortPage.getCurrent();
        long pages = sortPage.getPages();
        model.addAttribute("kcmbinfoList", kcmbinfoList);   //绑定接受参数
        model.addAttribute("cp", current);   //当前页
        model.addAttribute("tp", pages);   //总页数
        model.addAttribute("total", total);   //总条数
        model.addAttribute("pageListURL", "kcmbinfo/list");   //总条数
        return "kcmbinfo/kcmbinfoList";
    }
}
