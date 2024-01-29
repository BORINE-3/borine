<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<%
    //获取项目路径
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    Date date = new Date();
    String strDateFormat = "yyyy-MM-dd HH:mm:ss";
    SimpleDateFormat sdf = new SimpleDateFormat(strDateFormat);
    String nowDate = sdf.format(date);
%>
<c:if test="${sessionScope.loginAdmin==null}">
    <script>
        alert("登录以后才可以访问");
        location.href = "${ctx}/view/admin/login.jsp";
    </script>
</c:if>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>管理系统后台</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <script src="${ctx}/static/layui/layui.js"></script>
    <script src="${ctx}/static/js/jquery-1.9.1.min.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">管理系统后台</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item">
                <h3 style="text-align: center;text-align: center">工程教育认证达成度分析系统</h3>
            </li>
            <li class="layui-nav-item">
                <a href="${ctx}/index" target="_blank"><i class="layui-icon layui-icon-home"></i>系统首页</a>
            </li>
            <li class="layui-nav-item">
                <a href="${ctx}/echarts_score" target="tqmContent"><i class="layui-icon layui-icon-chart"></i>成绩等级统计</a>
            </li>
            <li class="layui-nav-item">
                <a href="${ctx}/bigTable" target="tqmContent"><i class="layui-icon layui-icon-voice"></i>毕业要求指标矩阵图</a>
            </li>
            <li class="layui-nav-item">
                <a href="${ctx}/bigTable36" target="tqmContent"><i class="layui-icon layui-icon-voice"></i>毕业要求指标点达成度</a>
            </li>
            <li class="layui-nav-item">
                <a href="${ctx}/bigTable12" target="tqmContent"><i class="layui-icon layui-icon-voice"></i>毕业要求达成度</a>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="${ctx}/static/aa.jpg" class="layui-nav-img">
                    ${sessionScope.loginAdmin.adminname}-${sessionScope.loginAdmin.role}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/admininfo/edit?id=${sessionScope.loginAdmin.adminid}"
                           target="tqmContent">修改密码</a></dd>
                    <dd><a href="${ctx}/admininfo/detail?id=${sessionScope.loginAdmin.adminid}"
                           target="tqmContent">个人中心</a>
                    </dd>
                    <dd><a href="${ctx}/admininfo/loginOut">退出登录</a>
                    </dd>
                </dl>

            </li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">

            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <c:if test="${sessionScope.loginAdmin.role=='系统管理员'}">
                    <li class="layui-nav-item">
                        <a href="javascript:;">教师管理</a>
                        <dl class="layui-nav-child">
                            <dd><a href="${ctx}/admininfo/add" target="tqmContent">添加教师</a></dd>
                            <dd><a href="${ctx}/admininfo/list" target="tqmContent">教师列表</a></dd>
                        </dl>
                    </li>
                </c:if>
                <li class="layui-nav-item">
                    <a href="javascript:;">学生管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${ctx}/userinfo/add" target="tqmContent">学生添加</a></dd>
                        <dd><a href="${ctx}/userinfo/list" target="tqmContent">学生列表</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">课程目标管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${ctx}/kcmbinfo/add" target="tqmContent">添加课程目标</a></dd>
                        <dd><a href="${ctx}/kcmbinfo/list" target="tqmContent">课程目标列表</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">毕业要求指标管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${ctx}/byyqinfo/add" target="tqmContent">添加毕业要求指标</a></dd>
                        <dd><a href="${ctx}/byyqinfo/list" target="tqmContent">毕业要求指标列表</a></dd>
                    </dl>
                </li>


                <li class="layui-nav-item">
                    <a href="javascript:;">轮播图管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${ctx}/carousel/add" target="tqmContent">添加轮播图</a></dd>
                        <dd><a href="${ctx}/carousel/list" target="tqmContent">轮播图列表</a></dd>
                    </dl>
                </li>

                <li class="layui-nav-item">
                    <a href="javascript:;">毕业要求管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${ctx}/noticeinfo/add" target="tqmContent">添加毕业要求</a></dd>
                        <dd><a href="${ctx}/noticeinfo/list" target="tqmContent">毕业要求列表</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">课程成绩管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${ctx}/scoreinfo/add" target="tqmContent">添加课程成绩</a></dd>
                        <dd><a href="${ctx}/scoreinfo/list" target="tqmContent">课程成绩列表</a></dd>
                        <dd><a href="${ctx}/echarts_score" target="tqmContent">成绩等级统计</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">课程信息管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${ctx}/sorttype/add" target="tqmContent">添加课程分类</a></dd>
                        <dd><a href="${ctx}/sorttype/list" target="tqmContent">课程分类列表</a></dd>
                        <dd><a href="${ctx}/datainfo/add" target="tqmContent">添加课程信息</a></dd>
                        <dd><a href="${ctx}/datainfo/list" target="tqmContent">课程达成度列表</a></dd>
                        <dd><a href="${ctx}/datainfo/list2" target="tqmContent">课程信息列表</a></dd>
                        <dd><a href="${ctx}/datainfo/datainfoCount" target="tqmContent">课程分类统计</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">课程评价管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${ctx}/commentinfo/add" target="tqmContent">添加课程评价</a></dd>
                        <dd><a href="${ctx}/commentinfo/list" target="tqmContent">教师课程列表</a></dd>
                    </dl>
                </li>


            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <!-- 内容主体区域 -->
        <div style="padding: 0px;height: 100%;width: 100%;">
            <iframe src="${ctx}/userinfo/list" name="tqmContent"
                    style="border: 0px solid blue;height: 100%;width: 100%;scrolling:auto;">

            </iframe>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        工程教育认证达成度分析系统 - 底部版权区域
    </div>
</div>

<script>
    //JavaScript代码区域
    layui.use('element', function () {
        var element = layui.element;

    });
</script>
</body>
</html>
