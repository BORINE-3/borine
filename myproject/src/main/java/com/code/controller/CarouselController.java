/***




**/
package com.code.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.code.mapper.CarouselMapper;
import com.code.entity.Carousel;
import com.code.util.CommonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 后台carousel表的管理操作
 */
@Controller
@RequestMapping("/carousel")
public class CarouselController {

    @Autowired   //注入对象
    public CarouselMapper carouselMapper;

    @RequestMapping("/add")
    public String toAdd(Model model) {
        return "carousel/carouselAdd";
    }

    @RequestMapping("/insert") //插入数据
    public String save(Carousel carousel) {
        carouselMapper.insert(carousel);
        return "redirect:list";
    }

    @RequestMapping("/update") //修改数据
    public String update(Carousel carousel) {
        carouselMapper.updateById(carousel);
        return "redirect:list";
    }

    @RequestMapping("/delete") //删除数据
    public String delete(int id) {
        carouselMapper.deleteById(id);
        return "redirect:list";
    }

    @RequestMapping("/edit") //编辑数据
    public String edit(int id, Model model) {
        Carousel carousel = carouselMapper.selectById(id);
        model.addAttribute("carousel", carousel);
        return "carousel/carouselUpdate";
    }

    @RequestMapping("/detail") //编辑数据
    public String detail(int id, Model model) {
        Carousel carousel = carouselMapper.selectById(id);
        model.addAttribute("carousel", carousel);
        return "carousel/carouselDetail";
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
        EntityWrapper<Carousel> queryWrapper = new EntityWrapper<Carousel>();
        p = null == p ? 1 : p; //默认显示第一页
        pageSize = null == pageSize ? 10 : pageSize; //默认每页显示10条
        Page<Carousel> sortPage = new Page<Carousel>(p, pageSize);//参数一是当前页，参数二是每页个数
        List<Carousel> carouselList = carouselMapper.selectPage(sortPage, queryWrapper);
        long total = sortPage.getTotal(); //总页数
        int current = sortPage.getCurrent();
        long pages = sortPage.getPages();
        model.addAttribute("carouselList", carouselList);   //绑定接受参数
        model.addAttribute("cp", current);   //当前页
        model.addAttribute("tp", pages);   //总页数
        model.addAttribute("total", total);   //总条数
        model.addAttribute("pageListURL", "carousel/list");   //总条数
        return "carousel/carouselList";
    }
}
