package com.code.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.code.entity.Datainfo;
import com.code.entity.Kcmbinfo;
import com.code.entity.Scoreinfo;
import com.code.entity.Userinfo;
import com.code.mapper.DatainfoMapper;
import com.code.mapper.KcmbinfoMapper;
import com.code.mapper.ScoreinfoMapper;
import com.code.mapper.UserinfoMapper;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 后台userinfo表的管理操作
 */
@Controller
@RequestMapping("/userinfo")
public class UserinfoController {

    @Autowired   //注入对象
    private UserinfoMapper userinfoMapper;
    @Autowired   //注入对象
    private DatainfoMapper datainfoMapper;
    @Autowired   //注入对象
    private ScoreinfoMapper scoreinfoMapper;
    @Autowired   //注入对象
    private KcmbinfoMapper kcmbinfoMapper;

    @RequestMapping("/add")
    public String toAdd(Model model) {
        return "userinfo/userinfoAdd";
    }

    @RequestMapping("/insert") //插入数据
    public String save(Userinfo userinfo) {
        userinfoMapper.insert(userinfo);
        return "redirect:list";
    }

    @RequestMapping("/update") //修改数据
    public String update(Userinfo userinfo) {
        userinfoMapper.updateById(userinfo);
        return "redirect:list";
    }

    @RequestMapping("/delete") //删除数据
    public String save(int id) {
        userinfoMapper.deleteById(id);
        return "redirect:list";
    }

    @RequestMapping("/edit") //编辑数据
    public String edit(int id, Model model) {
        Userinfo userinfo = userinfoMapper.selectById(id);
        model.addAttribute("userinfo", userinfo);
        return "userinfo/userinfoUpdate";
    }

    @RequestMapping("/detail") //编辑数据
    public String detail(int id, Model model) {
        Userinfo userinfo = userinfoMapper.selectById(id);
        model.addAttribute("userinfo", userinfo);
        return "userinfo/userinfoDetail";
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

        EntityWrapper<Userinfo> queryWrapper = new EntityWrapper<Userinfo>();
        if (StringUtils.isNotEmpty(keyword)) {
            queryWrapper.like("name", keyword);
            queryWrapper.or().like("intro", keyword);
            model.addAttribute("keyword", keyword);
            pageSize = 100;
        }

        Page<Userinfo> sortPage = new Page<Userinfo>(p, pageSize);//参数一是当前页，参数二是每页个数
        List<Userinfo> userinfoList = userinfoMapper.selectPage(sortPage, queryWrapper);
        for (Userinfo userinfo : userinfoList) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("uname", userinfo.getName());
            List<Scoreinfo> scoreinfoList = scoreinfoMapper.selectByMap(map);
            double result=0;
            for (Scoreinfo scoreinfo : scoreinfoList) {
                Map<String, Object> var = new HashMap<String, Object>();
                var.put("name", scoreinfo.getTname());
                Datainfo datainfo = datainfoMapper.selectByMap(var).get(0);

                //计算k1 k2 k3
                Map<String, Object> var1 = new HashMap<String, Object>();
                var1.put("wkname", datainfo.getName());
                List<Kcmbinfo> kcmbinfoList = kcmbinfoMapper.selectByMap(var1);
                double rs = new Suanfa().学生课程达成度计算(kcmbinfoList,scoreinfo, datainfo);
                result=result+rs;
            }
            userinfo.set毕业达成度(Suanfa.nums3(result/scoreinfoList.size()) + "");
        }

        long total = sortPage.getTotal(); //总页数
        int current = sortPage.getCurrent();
        long pages = sortPage.getPages();
        model.addAttribute("userinfoList", userinfoList);   //绑定接受参数
        model.addAttribute("cp", current);   //当前页
        model.addAttribute("tp", pages);   //总页数
        model.addAttribute("total", total);   //总条数
        model.addAttribute("pageListURL", "userinfo/list");   //总条数
        return "userinfo/userinfoList";
    }
}
