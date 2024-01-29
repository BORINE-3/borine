/***
 **/
package com.code.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.code.entity.Kcmbinfo;
import com.code.entity.Scoreinfo;
import com.code.entity.Sorttype;
import com.code.mapper.DatainfoMapper;
import com.code.entity.Datainfo;
import com.code.mapper.KcmbinfoMapper;
import com.code.mapper.ScoreinfoMapper;
import com.code.mapper.SorttypeMapper;
import com.code.util.CommonUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 后台datainfo表的管理操作
 */
@Controller
@RequestMapping("/datainfo")
public class DatainfoController {

    @Autowired   //注入对象
    public DatainfoMapper datainfoMapper;
    @Autowired   //注入对象
    public SorttypeMapper sorttypeMapper;
    @Autowired   //注入对象
    public ScoreinfoMapper scoreinfoMapper;
    @Autowired   //注入对象
    public KcmbinfoMapper kcmbinfoMapper;

    @RequestMapping("/add")
    public String toAdd(Model model) {
        List<Sorttype> sorttypeList = sorttypeMapper.selectByMap(null);
        model.addAttribute("sorttypeList", sorttypeList);
        return "datainfo/datainfoAdd";
    }

    @RequestMapping("/insert") //插入数据
    public String save(Datainfo datainfo) {
        datainfoMapper.insert(datainfo);
        return "redirect:list";
    }

    @RequestMapping("/update") //修改数据
    public String update(Datainfo datainfo) {
        datainfoMapper.updateById(datainfo);
        return "redirect:list";
    }

    @RequestMapping("/delete") //删除数据
    public String delete(int id) {
        datainfoMapper.deleteById(id);
        return "redirect:list";
    }

    @RequestMapping("/edit") //编辑数据
    public String edit(int id, Model model) {
        Datainfo datainfo = datainfoMapper.selectById(id);
        model.addAttribute("datainfo", datainfo);
        List<Sorttype> sorttypeList = sorttypeMapper.selectByMap(null);
        model.addAttribute("sorttypeList", sorttypeList);
        return "datainfo/datainfoUpdate";
    }

    @RequestMapping("/detail") //编辑数据
    public String detail(int id, Model model) {
        Datainfo datainfo = datainfoMapper.selectById(id);
        //计算k1 k2 k3
        Map<String, Object> var1 = new HashMap<String, Object>();
        var1.put("wkname", datainfo.getName());
        List<Kcmbinfo> kcmbinfoList = kcmbinfoMapper.selectByMap(var1);

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("tname", datainfo.getName());
        List<Scoreinfo> scoreinfoList = scoreinfoMapper.selectByMap(map);

        datainfo = new Suanfa().k1k2k3(kcmbinfoList, scoreinfoList, datainfo);

        model.addAttribute("datainfo", datainfo);
        return "datainfo/datainfoDetail";
    }

    @RequestMapping("/datainfoCount") //编辑数据
    public String datainfoCount(Model model) {
        return "datainfo/datainfoCount";
    }


    /**
     * @param keyword  搜索关键词
     * @param p        页面            默认第1页
     * @param pageSize 每页显示条数 默认每页10条
     * @param model
     * @return
     */
    @RequestMapping("/list") //分页查询数据
    public String list(String keyword, String sorttype, Integer p, Integer pageSize, Model model) {
        List<Sorttype> sorttypeList = sorttypeMapper.selectByMap(null);
        model.addAttribute("sorttypeList", sorttypeList);

        EntityWrapper<Datainfo> queryWrapper = new EntityWrapper<Datainfo>();
        if (StringUtils.isNotEmpty(keyword)) {
            queryWrapper.like("name", keyword);
            pageSize = 100;
        }
        if (StringUtils.isNotEmpty(sorttype)) {
            queryWrapper.like("sorttype", sorttype);
            pageSize = 100;
        }
        p = null == p ? 1 : p; //默认显示第一页
        pageSize = null == pageSize ? 10 : pageSize; //默认每页显示10条
        Page<Datainfo> sortPage = new Page<Datainfo>(p, pageSize);//参数一是当前页，参数二是每页个数
        List<Datainfo> datainfoList = datainfoMapper.selectPage(sortPage, queryWrapper);


        for (Datainfo datainfo : datainfoList) {

            //计算k1 k2 k3
            Map<String, Object> var1 = new HashMap<String, Object>();
            var1.put("wkname", datainfo.getName());
            List<Kcmbinfo> kcmbinfoList = kcmbinfoMapper.selectByMap(var1);

            Map<String, Object> map = new HashMap<String, Object>();
            map.put("tname", datainfo.getName());
            List<Scoreinfo> scoreinfoList = scoreinfoMapper.selectByMap(map);

            datainfo = new Suanfa().k1k2k3(kcmbinfoList, scoreinfoList, datainfo);



        }
        long total = sortPage.getTotal(); //总页数
        int current = sortPage.getCurrent();
        long pages = sortPage.getPages();
        model.addAttribute("datainfoList", datainfoList);   //绑定接受参数
        model.addAttribute("cp", current);   //当前页
        model.addAttribute("tp", pages);   //总页数
        model.addAttribute("total", total);   //总条数
        model.addAttribute("pageListURL", "datainfo/list");   //总条数
        return "datainfo/datainfoList";
    }


    /**
     * @param keyword  搜索关键词
     * @param p        页面            默认第1页
     * @param pageSize 每页显示条数 默认每页10条
     * @param model
     * @return
     */
    @RequestMapping("/list2") //分页查询数据
    public String list2(String keyword, String sorttype, Integer p, Integer pageSize, Model model) {
        List<Sorttype> sorttypeList = sorttypeMapper.selectByMap(null);
        model.addAttribute("sorttypeList", sorttypeList);

        EntityWrapper<Datainfo> queryWrapper = new EntityWrapper<Datainfo>();
        if (StringUtils.isNotEmpty(keyword)) {
            queryWrapper.like("name", keyword);
            pageSize = 100;
        }
        if (StringUtils.isNotEmpty(sorttype)) {
            queryWrapper.like("sorttype", sorttype);
            pageSize = 100;
        }
        p = null == p ? 1 : p; //默认显示第一页
        pageSize = null == pageSize ? 10 : pageSize; //默认每页显示10条
        Page<Datainfo> sortPage = new Page<Datainfo>(p, pageSize);//参数一是当前页，参数二是每页个数
        List<Datainfo> datainfoList = datainfoMapper.selectPage(sortPage, queryWrapper);


        for (Datainfo datainfo : datainfoList) {

            //计算k1 k2 k3
            Map<String, Object> var1 = new HashMap<String, Object>();
            var1.put("wkname", datainfo.getName());
            List<Kcmbinfo> kcmbinfoList = kcmbinfoMapper.selectByMap(var1);

            Map<String, Object> map = new HashMap<String, Object>();
            map.put("tname", datainfo.getName());
            List<Scoreinfo> scoreinfoList = scoreinfoMapper.selectByMap(map);

            datainfo = new Suanfa().k1k2k3(kcmbinfoList, scoreinfoList, datainfo);



        }
        long total = sortPage.getTotal(); //总页数
        int current = sortPage.getCurrent();
        long pages = sortPage.getPages();
        model.addAttribute("datainfoList", datainfoList);   //绑定接受参数
        model.addAttribute("cp", current);   //当前页
        model.addAttribute("tp", pages);   //总页数
        model.addAttribute("total", total);   //总条数
        model.addAttribute("pageListURL", "datainfo/list2");   //总条数
        return "datainfo/datainfoList2";
    }
}
