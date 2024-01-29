/***
 **/
package com.code.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.code.mapper.SorttypeMapper;
import com.code.entity.Sorttype;
import org.springframework.beans.factory.annotation.Autowired;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 后台sorttype表的管理操作
 */
@Controller
@RequestMapping("/sorttype")
public class SorttypeController {

    @Autowired   //注入对象
    public SorttypeMapper sorttypeMapper;

    @RequestMapping("/add")
    public String toAdd() {
        return "sorttype/sorttypeAdd";
    }

    @RequestMapping("/insert") //插入数据
    public String save(Sorttype sorttype) {
        sorttypeMapper.insert(sorttype);
        return "redirect:list";
    }

    @RequestMapping("/update") //修改数据
    public String update(Sorttype sorttype) {
        sorttypeMapper.updateById(sorttype);
        return "redirect:list";
    }

    @RequestMapping("/delete") //删除数据
    public String delete(int id) {
        sorttypeMapper.deleteById(id);
        return "redirect:list";
    }

    @RequestMapping("/edit") //编辑数据
    public String edit(int id, Model model) {
        Sorttype sorttype = sorttypeMapper.selectById(id);
        model.addAttribute("sorttype", sorttype);
        return "sorttype/sorttypeUpdate";
    }

    @RequestMapping("/detail") //编辑数据
    public String detail(int id, Model model) {
        Sorttype sorttype = sorttypeMapper.selectById(id);
        model.addAttribute("sorttype", sorttype);
        return "sorttype/sorttypeDetail";
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
        EntityWrapper<Sorttype> queryWrapper = new EntityWrapper<Sorttype>();
        p = null == p ? 1 : p; //默认显示第一页
        pageSize = null == pageSize ? 10 : pageSize; //默认每页显示10条
        Page<Sorttype> sortPage = new Page<Sorttype>(p, pageSize);//参数一是当前页，参数二是每页个数
        List<Sorttype> sorttypeList = sorttypeMapper.selectPage(sortPage, queryWrapper);
        long total = sortPage.getTotal(); //总页数
        int current = sortPage.getCurrent();
        long pages = sortPage.getPages();
        model.addAttribute("sorttypeList", sorttypeList);   //绑定接受参数
        model.addAttribute("cp", current);   //当前页
        model.addAttribute("tp", pages);   //总页数
        model.addAttribute("total", total);   //总条数
        model.addAttribute("pageListURL", "sorttype/list");   //总条数
        return "sorttype/sorttypeList";
    }
}
