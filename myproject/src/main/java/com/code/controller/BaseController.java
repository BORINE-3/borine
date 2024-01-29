package com.code.controller;

import com.code.entity.Userinfo;
import com.code.mapper.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpSession;

/**
 * 公共控制层 方便多次调用
 */
@Controller
public class BaseController {
    @Autowired   //注入对象
    public CommonMapper commonMapper;
    @Autowired   //注入对象
    public NoticeinfoMapper noticeinfoMapper;
    @Autowired   //注入对象
    public UserinfoMapper userinfoMapper;
    @Autowired   //注入对象
    public DatainfoMapper datainfoMapper;
    @Autowired   //注入对象
    public CommentinfoMapper commentinfoMapper;
    @Autowired   //注入对象
    public SorttypeMapper sorttypeMapper;

    @Autowired   //注入对象
    public CarouselMapper carouselMapper;
    @Autowired   //注入对象
    public ByyqinfoMapper byyqinfoMapper;


    //获取用户登陆信息
    public static Userinfo getLoginUserinfo(HttpSession session) {
        return (Userinfo) session.getAttribute("loginUserinfo");
    }

    //设置用户登陆信息
    public static void setLoginUserinfo(HttpSession session, Userinfo userinfo) {
        session.setAttribute("loginUserinfo", userinfo);
    }
}
