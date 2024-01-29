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
    <title>指标点信息列表</title>
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


<div class="layui-container" style="min-height: 500px;background-color: rgba(255,255,255,0.7);margin-top: 0px;">
    <div style="margin:10px auto; ">
        <form class="layui-form" action="${ctx}/indexpointList" method="post">
            <div class="layui-form-item" style="text-align: center;">
                <div class="layui-inline">
                    <div class="layui-input-inline" style="">
                        <input type="text" class="layui-input dateIcon" name="keyword" id="keyword"
                               value="${keyword}"
                               placeholder="请输入课程名称搜索"
                               style="width: 240px;">
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
    <br>
    <table class="layui-table">
        <tbody>
        <tr class="layui-bg-blue">
            <th>要求编号</th>
            <th>课程名称</th>
            <th>目标1</th>
            <th>目标2</th>
            <th>目标3</th>
            <th>要求名称</th>
            <th>要求备注</th>
            <th>操作</th>
        </tr>


        <c:forEach items="${byyqinfoList}" var="v">
            <tr>
                <td>${v.yqid}</td>
                <td>${v.mname}</td>
                <td>${v.m1}</td>
                <td>${v.m2}</td>
                <td>${v.m3}</td>
                <td>${v.mcontent}</td>
                <td>${v.mintro}</td>
                <td style="width: 180px;">
                    <button path="${ctx}/byyqinfo/detail?id=${v.yqid}"
                            class="layui-btn layui-btn-normal layui-btn-sm showDetail">详情
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>


</div>

<!--底部区域 start-->
<jsp:include page="foot.jsp"/>
<!--底部区域 end-->
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
