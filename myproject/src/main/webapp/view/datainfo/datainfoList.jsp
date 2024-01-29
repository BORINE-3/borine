<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>课程信息列表页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <base href="${ctx}/"/>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css"/>
    <script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
</head>
<body>
<div class="layui-fluid">
    <div style="margin:10px auto; ">
        <form class="layui-form" action="${ctx}/datainfo/list" method="post">
            <div class="layui-form-item" style="text-align: center;">
                <div class="layui-inline">
                    <div class="layui-input-inline" style="">
                        <input type="text" class="layui-input dateIcon" name="keyword" id="keyword"
                               value="${keyword}"
                               placeholder="请输入搜索关键词"
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
                <td style="width: 180px;">
                    <a href="${ctx}/datainfo/edit?id=${v.id}" class="layui-btn layui-btn layui-btn-sm">修改</a>
                    <a href="${ctx}/datainfo/delete?id=${v.id}" class="layui-btn layui-btn-danger layui-btn-sm">删除</a>
                    <button path="${ctx}/datainfo/detail?id=${v.id}"
                            class="layui-btn layui-btn-normal layui-btn-sm showDetail">详情
                    </button>
                </td>
            </tr>
        </c:forEach>


        </tbody>
    </table>

    <%--引入分页代码--%>
    <jsp:include page="../sortPage.jsp"></jsp:include>
</div>
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
