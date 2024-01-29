<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>课程目标列表页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <base href="${ctx}/" />
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css"/>
    <script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
</head>
<body>
<div class="layui-fluid">


    <table class="layui-table">
        <tbody>
        <tr class="layui-bg-blue">
             <th>信息编号</th>
             <th>课程名称</th>
             <th>目标名称</th>
             <th>出勤</th>
             <th>作业</th>
             <th>上机</th>
             <th>报告</th>
             <th>知识1</th>
             <th>知识2</th>
             <th>知识3</th>
             <th>知识4</th>
             <th>知识5</th>
             <th>知识6</th>
            <th>操作</th>
        </tr>


    <c:forEach items="${kcmbinfoList}" var="v">
        <tr>
            <td>${v.wwid}</td>
            <td>${v.wkname}</td>
            <td>${v.mbname}</td>
            <td>${v.cq}</td>
            <td>${v.zy}</td>
            <td>${v.sj}</td>
            <td>${v.bg}</td>
            <td>${v.ks1}</td>
            <td>${v.ks2}</td>
            <td>${v.ks3}</td>
            <td>${v.ks4}</td>
            <td>${v.ks5}</td>
            <td>${v.ks6}</td>
			  <td style="width: 180px;">
                <a href="${ctx}/kcmbinfo/edit?id=${v.wwid}" class="layui-btn layui-btn layui-btn-sm">修改</a>
                <a href="${ctx}/kcmbinfo/delete?id=${v.wwid}" class="layui-btn layui-btn-danger layui-btn-sm">删除</a>
                <button path="${ctx}/kcmbinfo/detail?id=${v.wwid}"
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
    layui.use(['element', 'layer', 'jquery','form'], function () {
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
                title: '课程目标详情查看',
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
