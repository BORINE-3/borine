/***




**/
package com.code.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.code.mapper.CommentinfoMapper;
import com.code.entity.Commentinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 后台commentinfo表的管理操作
 */
@Controller
@RequestMapping("/commentinfo")
public class CommentinfoController {

    @Autowired   //注入对象
    public CommentinfoMapper commentinfoMapper;

    @RequestMapping("/add")
    public String toAdd() {
        return "commentinfo/commentinfoAdd";
    }

    @RequestMapping("/insert") //插入数据
    public String save(Commentinfo commentinfo) {
        commentinfoMapper.insert(commentinfo);
        return "redirect:list";
    }

    @RequestMapping("/update") //修改数据
    public String update(Commentinfo commentinfo) {
        commentinfoMapper.updateById(commentinfo);
        return "redirect:list";
    }

    @RequestMapping("/delete") //删除数据
    public String delete(int id) {
        commentinfoMapper.deleteById(id);
        return "redirect:list";
    }

    @RequestMapping("/edit") //编辑数据
    public String edit(int id, Model model) {
        Commentinfo commentinfo = commentinfoMapper.selectById(id);
        model.addAttribute("commentinfo", commentinfo);
        return "commentinfo/commentinfoUpdate";
    }

    @RequestMapping("/detail") //编辑数据
    public String detail(int id, Model model) {
        Commentinfo commentinfo = commentinfoMapper.selectById(id);
        model.addAttribute("commentinfo", commentinfo);
        return "commentinfo/commentinfoDetail";
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

        p = null == p ? 1 : p; //默认显示第一页
        pageSize = null == pageSize ? 10 : pageSize; //默认每页显示10条
        Page<Commentinfo> sortPage = new Page<Commentinfo>(p, pageSize);//参数一是当前页，参数二是每页个数
        List<Commentinfo> commentinfoList = commentinfoMapper.selectPage(sortPage, null);
        long total = sortPage.getTotal(); //总页数
        int current = sortPage.getCurrent();
        long pages = sortPage.getPages();
        model.addAttribute("commentinfoList", commentinfoList);   //绑定接受参数
        model.addAttribute("cp", current);   //当前页
        model.addAttribute("tp", pages);   //总页数
        model.addAttribute("total", total);   //总条数
        model.addAttribute("pageListURL", "commentinfo/list");   //总条数
        return "commentinfo/commentinfoList";
    }
}
