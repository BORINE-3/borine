<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%--获取当前时间--%>
<jsp:useBean id="now" class="java.util.Date" scope="page"/>
<fmt:formatDate var="nowTime" value="${now}" pattern="yyyy-MM-dd HH:mm:ss"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>工程教育认证达成度分析系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/admin.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/template.css" media="all">
    <script src="${ctx}/static/layui/layui.js"></script>
    <script>
        var ctx = '${ctx}/';
    </script>
</head>
<body>
<!--导航条 start-->
<jsp:include page="head.jsp"/>

<!--导航条 end-->
<jsp:include page="banner.jsp"/>

<div class="layui-container layadmin-cmdlist-fluid">
    <div class="layui-row" style="margin: 0px auto;margin-bottom: 20px;">
        <c:forEach items="${sorttypeList}" var="item" varStatus="ss">
            <div style="border: 1px solid #ccc;margin:8px;padding: 0px;width:22%;display: inline-block;">
                <div class="layui-bg-blue " style="margin:3px;padding: 30px 0px;  text-align: center;"><a
                        style="color: white;font-size: 30px;"
                        href="${ctx}/index?sorttype=${item.sortname}">${item.sortname}</a></div>
            </div>
        </c:forEach>
    </div>


    <div class="layui-row layui-col-space30">
        <div class="mainTop layui-clear">
            <div class="fr">
                <form class="layui-form" action="${ctx}/index" method="post">
                    <div class="layui-form-item">
                        <div class="layui-inline" style="text-align: left;">
                            <div class="layui-input-inline">
                                <input type="text" class="layui-input dateIcon" name="keyword" id="keyword"
                                       value="${keyword}"
                                       placeholder="请输入标题关键词"
                                       style="width: 240px;">
                            </div>

                            <div class="layui-input-inline">
                                <select name="sorttype" id="sorttype" class="layui-select">
                                    <option value="">请选择分类</option>
                                    <c:forEach items="${sorttypeList}" var="item">
                                        <option value="${item.sortname}" ${item.sortname==sorttype?'selected':''}>${item.sortname}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="layui-input-inline">
                                <button type="submit" class="layui-btn layui-btn-blue"><i
                                        class="layui-icon layui-icon-search"></i> 搜索
                                </button>
                            </div>
                        </div>
                    </div>

                </form>
            </div>
        </div>


        <table class="layui-table">
            <tbody>
            <tr class="layui-bg-blue">
                <th>编号</th>
                <th>名称</th>
                <th>所属分类</th>
                <th>授课教师</th>
                <th>课程学时</th>
                <th>课程学分</th>
                <th>课程目标1</th>
                <th>课程目标2</th>
                <th>课程目标3</th>
                <th>课程达成度</th>
                <th>试卷达成度</th>
                <th>操作</th>
            </tr>


            <c:forEach items="${datainfoList}" var="v">
                <tr>
                    <td>${v.id}</td>
                    <td>${v.name}</td>
                    <td>${v.sorttype}</td>
                    <td>${v.adduser}</td>
                    <td>${v.intro}</td>
                    <td>${v.nums}</td>
                    <td>${v.k1}</td>
                    <td>${v.k2}</td>
                    <td>${v.k3}</td>
                    <td>${v.课程达成度}</td>
                    <td>${v.试卷达成度}</td>
                    <td>
                        <a href="${ctx}/detail?id=${v.id}" class="layui-btn layui-btn layui-btn-sm">
                            <i class="layui-icon layui-icon-voice"></i>
                            查看详情</a>
                    </td>
                </tr>
            </c:forEach>


            </tbody>
        </table>


    </div>

    <br>
    <br>
    <%--引入分页代码--%>
    <jsp:include page="sortPage.jsp"/>
</div>


<!--底部区域 start-->
<jsp:include page="foot.jsp"/>

<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    //定义layui的变量
    var $;
    var layer;
    var element;
    var form;
    layui.use(['element', 'layer', 'jquery', 'form'], function () {
        element = layui.element;
        layer = layui.layer;
        $ = layui.jquery;
        form = layui.form;
        //绑定详情点击事件
        $(".showDetail").click(function () {
            var path = $(this).attr("path");
            layer.open({
                offset: '100px', //设置弹出窗口的位置 上边距100px
                type: 2,  //弹出类型
                skin: 'layui-layer-molv', //样式类名
                title: '课程信息详情查看',
                anim: 2,    //弹出窗口使用的动画
                area: ['800px', '620px'],  //设置弹出窗口的大小 宽度,高度
                shadeClose: true, //开启遮罩关闭
                content: path  //加载内容路径
            });
        })
    });
</script>
</body>
</html>
