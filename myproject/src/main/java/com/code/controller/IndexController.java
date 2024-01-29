package com.code.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.code.entity.*;
import com.code.mapper.ByyqinfoMapper;
import com.code.mapper.KcmbinfoMapper;
import com.code.mapper.ScoreinfoMapper;
import com.code.util.CommonUtils;
import com.code.util.GlobalResult;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.DecimalFormat;
import java.util.*;

@Controller
@CrossOrigin("*") //允许跨域请求
public class IndexController extends BaseController {

    @Autowired   //注入对象
    public ScoreinfoMapper scoreinfoMapper;
    @Autowired   //注入对象
    public KcmbinfoMapper kcmbinfoMapper;
    @Autowired   //注入对象
    public ByyqinfoMapper byyqinfoMapper;

    //保留两位小数
    public String toFix2(float val) {
        DecimalFormat decimalFormat = new DecimalFormat(".00");
        String pri = decimalFormat.format(val);
        return pri;
    }

    //跳转发布信息
    @RequestMapping("/send")
    public String send(Model model, HttpSession session) {
        List<Sorttype> sorttypeList = sorttypeMapper.selectByMap(null);
        model.addAttribute("sorttypeList", sorttypeList);
        return "send";
    }

    @RequestMapping("/echarts_score")
    public String echarts_score(Model model, HttpSession session) {
        return "echarts_score";
    }

    //跳转发布信息
    @RequestMapping("/indexpointList")
    public String indexpointList(Model model, String keyword, HttpSession session) {

        Map<String, Object> map = new HashMap<String, Object>();
        if (StringUtils.isNotEmpty(keyword)) {
            map.put("mname", keyword);
        }
        List<Byyqinfo> byyqinfoList = byyqinfoMapper.selectByMap(map);
        model.addAttribute("byyqinfoList", byyqinfoList);
        return "indexpointList";
    }

    //发布信息保存
    @RequestMapping("/sendSubmit")
    public String sendSubmit(Datainfo datainfo, Model model, HttpSession session) {
        datainfoMapper.insert(datainfo);
        return "redirect:index";
    }

    //信息删除
    @RequestMapping("/datainfoDelete")
    public String datainfoDelete(Integer id, Model model, HttpSession session) {
        datainfoMapper.deleteById(id);
        return "redirect:myDataList";
    }

    //发布信息
    @RequestMapping("/myDataList")
    public String myDataList(Model model, HttpSession session) {
        //判断是否登陆
        if (session.getAttribute("loginUserinfo") == null) {
            model.addAttribute("errorMsg", "登陆以后才可以操作");
            return "login";
        }
        Userinfo loginUserinfo = getLoginUserinfo(session);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("uname", loginUserinfo.getName());
        List<Scoreinfo> scoreinfos = scoreinfoMapper.selectByMap(map);
        model.addAttribute("scoreinfos", scoreinfos);   //绑定搜索关键词
        return "myDataList";
    }


    @RequestMapping("/")
    public String index2() {
        return "redirect:index";
    }

    //列表页面  分页搜索功能都有
    @RequestMapping("/index")
    public String index(String keyword, String sorttype, String type, Integer p, Model model, HttpSession session) {
        System.out.println("进入系统首页......");
        p = null == p ? 1 : p; //默认显示第一页
        Integer pageSize = 6; //默认每页显示10条

        EntityWrapper<Datainfo> queryWrapper = new EntityWrapper<Datainfo>();
        if (CommonUtils.isNotEmpty(keyword)) {
            queryWrapper.like("name", keyword);
            model.addAttribute("keyword", keyword);   //绑定搜索关键词
            pageSize = 1000;
        }
        if (CommonUtils.isNotEmpty(sorttype)) {
            queryWrapper.eq("sorttype", sorttype);
            model.addAttribute("sorttype", sorttype);   //绑定搜索关键词
            pageSize = 1000;
        }
        queryWrapper.orderBy("id", true);  // order by id desc 根据id倒序
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
        model.addAttribute("datainfoList", datainfoList);  //绑定接受参数
        model.addAttribute("cp", current);   //当前页
        model.addAttribute("tp", pages);   //总页数
        model.addAttribute("total", total);   //总条数
        model.addAttribute("pageListURL", "/index");   //总条数

        List<Sorttype> sorttypeList = sorttypeMapper.selectByMap(null);
        model.addAttribute("sorttypeList", sorttypeList);
        List<Carousel> carouselList = carouselMapper.selectByMap(null);
        session.setAttribute("carouselListIndex", carouselList);
        if (null != type) {
            return "index2";
        }
        return "index";
    }


    //详情页面
    @RequestMapping("/detail")
    public String index(Integer id, Model model, HttpSession session) {
        Datainfo datainfo = datainfoMapper.selectById(id);
        model.addAttribute("datainfo", datainfo);
        datainfo.setNums(datainfo.getNums() + 1);
        datainfoMapper.updateById(datainfo);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("tid", id);
        List<Commentinfo> commentinfoList = commentinfoMapper.selectByMap(map);
        model.addAttribute("commentinfoList", commentinfoList);
        List<Sorttype> sorttypeList = sorttypeMapper.selectByMap(null);
        model.addAttribute("sorttypeList", sorttypeList);
        return "detail";
    }


    //评论保存
    @RequestMapping("/commentinfoSubmit")
    public String commentinfoSubmit(Commentinfo obj, Model model, HttpSession session) {
        commentinfoMapper.insert(obj);
        return "redirect:detail?id=" + obj.getTid();
    }

    //评论点赞
    @RequestMapping("/commentinfoDianzan")
    @ResponseBody
    public GlobalResult commentinfoDianzan(int id, Model model, HttpSession session) {
        Commentinfo commentinfo = commentinfoMapper.selectById(id);
        commentinfo.setLikenum(commentinfo.getLikenum() + 1);
        commentinfoMapper.updateById(commentinfo);
        return GlobalResult.ok("评论点赞成功");
    }

    //个人中心
    @RequestMapping("/userinfoCenter")
    public String userinfoCenter(HttpSession session, Model model) {
        Userinfo userinfo = (Userinfo) session.getAttribute("loginUserinfo");
        model.addAttribute("userinfo", userinfo);
        return "userinfoCenter";
    }


    //退出登陆
    @RequestMapping("/loginOut")
    public String loginOut(HttpSession session, Model model) {
        session.invalidate();
        return "redirect:index";
    }


    @RequestMapping("/infoList")
    public String infoList(Model model, String keyword) {
        EntityWrapper<Noticeinfo> queryWrapper = new EntityWrapper<Noticeinfo>();
        //如果有搜索内容 则进行模糊查询
        if (CommonUtils.isNotEmpty(keyword)) {
            queryWrapper.like("noticetitle", keyword).or().like("noticecontent", keyword);
            model.addAttribute("keyword", keyword);   //绑定搜索关键词
        }
        List<Noticeinfo> noticeinfoList = noticeinfoMapper.selectList(queryWrapper);
        model.addAttribute("noticeinfoList", noticeinfoList);
        return "infoList";
    }


    @ResponseBody
    @RequestMapping("/checkName")
    public GlobalResult registerSubmit(String name, HttpSession session) {
        List<Userinfo> userinfoList = userinfoMapper.selectByMap(null);
        for (Userinfo u : userinfoList) {
            if (u.getName().equals(name)) {
                return GlobalResult.errorMsg("用户名已经存在");
            }
        }
        return GlobalResult.ok("可用使用");
    }

    //注册提交
    @ResponseBody
    @RequestMapping("/registerSubmit")
    public GlobalResult registerSubmit(Userinfo userinfo, String vercode, HttpSession session) {
        String randCode = session.getAttribute("randCode").toString();
        //开发测试禁用验证码
        if (!randCode.equals(vercode)) {
            return GlobalResult.errorMsg("验证码不正确");
        }
        List<Userinfo> userinfoList = userinfoMapper.selectByMap(null);
        for (Userinfo u : userinfoList) {
            if (u.getName().equals(userinfo.getName())) {
                return GlobalResult.errorMsg("用户名已经存在");
            }
            if (u.getPhone().equals(userinfo.getPhone())) {
                return GlobalResult.errorMsg("手机号已经存在");
            }
            if (u.getEmail().equals(userinfo.getEmail())) {
                return GlobalResult.errorMsg("邮箱已经存在");
            }
        }
        Integer insert = userinfoMapper.insert(userinfo);
        return GlobalResult.ok("用户注册成功");
    }

    //个人信息修改
    @ResponseBody
    @RequestMapping("/updateUserinfo")
    public GlobalResult updateUserinfo(HttpSession session, Userinfo userinfo) {
        Integer insert = userinfoMapper.updateById(userinfo);
        setLoginUserinfo(session, userinfo);
        return GlobalResult.ok("个人信息修改成功");
    }

    //公共查询方法
    @ResponseBody
    @RequestMapping("/selectAction")
    public GlobalResult selectAction(String sql) {
        List<Map> mapList = commonMapper.selectAction(sql);
        return GlobalResult.ok(mapList);
    }

    //公共修改方法
    @ResponseBody
    @RequestMapping("/updateAction")
    public GlobalResult updateAction(String sql) {
        commonMapper.updateAction(sql);
        return GlobalResult.ok("操作成功");
    }

    //登陆提交验证
    @ResponseBody
    @RequestMapping("/loginSubmit") //插入数据
    public GlobalResult login(String username, String password, String vercode, HttpSession session, Model model) {
        String randCode = session.getAttribute("randCode").toString();
        //开发测试禁用验证码
        if (!randCode.equals(vercode)) {
            return GlobalResult.errorMsg("验证码不正确");
        }
        List<Userinfo> userinfoList = userinfoMapper.selectByMap(null);
        Userinfo admin = new Userinfo();
        boolean is = false;
        for (Userinfo admininfo : userinfoList) {
            if ((admininfo.getName().equals(username) || admininfo.getIntro().equals(username)) && admininfo.getPassword().equals(password)) {
                admin = admininfo;
                is = true;
                break;
            }
        }
        if (is) {
            session.setAttribute("loginUserinfo", admin);
            return GlobalResult.ok("登陆成功");
        } else {
            model.addAttribute("msg", "账号或者密码错误");
            return GlobalResult.errorMsg("账号或者密码错误");
        }
    }


    //测试直接登录
    @RequestMapping("/index00")
    public String index00(HttpSession session) {
        session.setAttribute("loginUserinfo", userinfoMapper.selectById(1));
        return "redirect:index";
    }


    //详情页面
    @RequestMapping("/bigTable")
    public String bigTable(Model model, HttpSession session) {

        //构建表头
        List<String> thList = new ArrayList<String>();
        List<String> th2List = new ArrayList<String>();
        for (int i = 1; i <= 12; i++) {
            thList.add("毕业要求" + i);
            for (int j = 1; j <= 3; j++) {
                th2List.add(i + "." + j);
            }
        }

        //构建表数据
        List<Datainfo> datainfoList = datainfoMapper.selectByMap(null);
        List<Map> mapList = new ArrayList<Map>();

        for (Datainfo data : datainfoList) {
            Map resultMap = new HashMap();
            resultMap.put("name", data.getName());
            List<String> KK = new ArrayList<String>();
            for (int i = 1; i <= 12; i++) {
                Map<String, Object> var = new HashMap<String, Object>();
                var.put("mname", data.getName());
                var.put("mcontent", "毕业要求" + i);
                if (byyqinfoMapper.selectByMap(var).size() > 0) {
                    Byyqinfo byyqinfo = byyqinfoMapper.selectByMap(var).get(0);
                    KK.add(changeStr(byyqinfo.getM1()));
                    KK.add(changeStr(byyqinfo.getM2()));
                    KK.add(changeStr(byyqinfo.getM3()));
                }
            }
            if (KK.size() == 0) {
                for (int i = 1; i <= 36; i++) {
                    KK.add(" ");
                }
            }
            resultMap.put("vlist", KK);
            mapList.add(resultMap);
        }
        model.addAttribute("thList", thList);
        model.addAttribute("th2List", th2List);
        model.addAttribute("datainfoList", datainfoList);
        model.addAttribute("mapList", mapList);
        return "bigTable";
    }


    //详情页面
    @RequestMapping("/bigTable36")
    public String bigTable36(Model model, HttpSession session) {
        double[] vals = new double[36];
        //构建表头
        List<String> th2List = new ArrayList<String>();
        for (int i = 1; i <= 12; i++) {
            for (int j = 1; j <= 3; j++) {
                th2List.add(i + "." + j);
            }
        }

        //构建表数据
        List<Datainfo> datainfoList = datainfoMapper.selectByMap(null);
        List<Map> mapList = new ArrayList<Map>();
        //计算课程达成度
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
        for (Datainfo data : datainfoList) {
            List<String> KK = new ArrayList<String>();
            for (int i = 1; i <= 12; i++) {
                int index = (i - 1) * 3;  //下标
                Map<String, Object> var = new HashMap<String, Object>();
                var.put("mname", data.getName());
                var.put("mcontent", "毕业要求" + i);
                if (byyqinfoMapper.selectByMap(var).size() > 0) {
                    Byyqinfo byyqinfo = byyqinfoMapper.selectByMap(var).get(0);
                    vals[index] += Double.parseDouble(byyqinfo.getM1()) * Double.parseDouble(data.get课程达成度());
                    vals[index + 1] += Double.parseDouble(byyqinfo.getM2()) * Double.parseDouble(data.get课程达成度());
                    vals[index + 2] += Double.parseDouble(byyqinfo.getM3()) * Double.parseDouble(data.get课程达成度());

                }
            }
        }
        //保留4位小数
        for (int i = 0; i < vals.length; i++) {
            vals[i] = toFix4(vals[i]);
        }
        model.addAttribute("th2List", th2List);
        model.addAttribute("vals", vals);
        return "bigTable36";
    }


    //详情页面
    @RequestMapping("/bigTable12")
    public String bigTable12(Model model, HttpSession session) {
        double[] vals = new double[36];
        //构建表头
        List<String> th2List = new ArrayList<String>();
        for (int i = 1; i <= 12; i++) {
            for (int j = 1; j <= 3; j++) {
                th2List.add(i + "." + j);
            }
        }

        //构建表数据
        List<Datainfo> datainfoList = datainfoMapper.selectByMap(null);

        //计算课程达成度
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
        for (Datainfo data : datainfoList) {
            List<String> KK = new ArrayList<String>();
            for (int i = 1; i <= 12; i++) {
                int index = (i - 1) * 3;  //下标
                Map<String, Object> var = new HashMap<String, Object>();
                var.put("mname", data.getName());
                var.put("mcontent", "毕业要求" + i);
                if (byyqinfoMapper.selectByMap(var).size() > 0) {
                    Byyqinfo byyqinfo = byyqinfoMapper.selectByMap(var).get(0);
                    vals[index] += Double.parseDouble(byyqinfo.getM1()) * Double.parseDouble(data.get课程达成度());
                    vals[index + 1] += Double.parseDouble(byyqinfo.getM2()) * Double.parseDouble(data.get课程达成度());
                    vals[index + 2] += Double.parseDouble(byyqinfo.getM3()) * Double.parseDouble(data.get课程达成度());

                }
            }
        }
        //保留三位小数
        for (int i = 0; i < vals.length; i++) {
            vals[i] = toFix4(vals[i]);
        }
        List<Map> mapList = new ArrayList<Map>();
        //计算 毕业要求1-12 的最小值
        for (int i = 0; i < 12; i++) {
            int index = i * 3;
            Map resultMap = new HashMap();
            String td = "毕业要求" + (i + 1);
            resultMap.put("name", td);
            double val = min(vals[index], vals[index + 1], vals[index + 2]);
            resultMap.put("val", toFix4(val));
            mapList.add(resultMap);
        }
        double minEnd = getMin(vals);
        model.addAttribute("mapList", mapList);
        model.addAttribute("minEnd", minEnd);
        return "bigTable12";
    }


    //计算数组中最小值
    public static double getMin(double[] arr) {
        // 假设第一位是最小值
        double min = arr[0];
        for (int index = 0; index < arr.length; index++) {
            // 判断数组元素的最小值
            if (arr[index] < min) {
                // 把最小值存储Min变量
                min = arr[index];
            }
        }
        System.out.println(min); //-900
        return min;
    }

    //计算三个数的最小值
    public static double min(double a, double b, double c) {
        double min = a;//计算过程
        if (min > b)
            min = b;
        if (min > c)
            min = c;
        return min;
    }

    //保留四位小数
    public double toFix4(double val) {
        DecimalFormat decimalFormat = new DecimalFormat(".0000");
        String pri = decimalFormat.format(val);
        return Double.parseDouble(pri);
    }

    /**
     * 转换符号
     *
     * @param s
     * @return
     */
    public static String changeStr(String s) {
        String rs = "";
        float v = Float.parseFloat(s);
        if (v > 0 && v <= 0.11) {
            rs = "<span class='L'>" + v + "</span>";
        } else if (v <= 0.31) {
            rs = "<span class='M'>" + v + "</span>";
        } else {
            rs = "<span class='H'>" + v + "</span>";
        }
        if (v == 0) {
            rs = "";
        }
        return rs;
    }

}
