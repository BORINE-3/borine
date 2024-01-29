<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%--获取当前时间--%>
<jsp:useBean id="now" class="java.util.Date" scope="page"/>
<fmt:formatDate var="nowTime" value="${now}" pattern="yyyy-MM-dd HH:mm:ss"/>
<html>
<head>
    <title>毕业要求修改页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <base href="${ctx}/"/>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css"/>
    <script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/common.js"></script>
    <script>
        var ctx = '${ctx}/';
    </script>
</head>
<body>
<div class="layui-container">


    <form class="layui-form  layui-form-pane" action="${ctx}/byyqinfo/update" method="post" style="margin: 50px auto;">

        <div class="layui-form-item">
            <label class="layui-form-label">要求编号</label>
            <div class="layui-input-block">
                <input type="text" name="yqid" readonly id="yqid" value="${byyqinfo.yqid}" lay-verify autocomplete="off"
                       placeholder="请输入要求编号"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">课程名称</label>
            <div class="layui-input-block">
                <%--<input type="text" name="mname"   id="mname" value="${byyqinfo.mname}" lay-verify autocomplete="off"
                       placeholder="请输入课程名称"
                       class="layui-input">--%>
                <select name="mname" id="mname" class="layui-select">
                    <option value="">请选择课程</option>
                    <c:forEach items="${datainfoList}" var="item">
                        <option value="${item.name}" ${item.name==byyqinfo.mname?'selected':''}>${item.name}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">要求名称</label>
            <div class="layui-input-block">
                <input type="text" name="mcontent" id="mcontent" value="${byyqinfo.mcontent}" lay-verify
                       autocomplete="off"
                       placeholder="请输入指标点"
                       class="layui-input">
            </div>
        </div>


        <div class="layui-form-item">
            <label class="layui-form-label">目标1</label>
            <div class="layui-input-block">
                <input type="text" name="m1" id="m1" value="${byyqinfo.m1}" lay-verify autocomplete="off"
                       placeholder="请输入目标1"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">目标2</label>
            <div class="layui-input-block">
                <input type="text" name="m2" id="m2" value="${byyqinfo.m2}" lay-verify autocomplete="off"
                       placeholder="请输入目标2"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">目标3</label>
            <div class="layui-input-block">
                <input type="text" name="m3" id="m3" value="${byyqinfo.m3}" lay-verify autocomplete="off"
                       placeholder="请输入目标3"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">要求备注</label>
            <div class="layui-input-block">
                <input type="text" name="mintro" id="mintro" value="${byyqinfo.mintro}" lay-verify autocomplete="off"
                       placeholder="请输入要求备注"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button type="submit" class="layui-btn" lay-submit="demo1" lay-filter="demo1">立即提交</button>
                <span class="layui-btn layui-btn-primary" onclick="backPage()">返回列表</span>
            </div>
        </div>
    </form>

</div>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    //定义layui的变量
    var $;
    var layer;
    var element;
    var form;
    layui.use(['element', 'layer', 'jquery', 'form', 'laydate', 'layedit'], function () {
        element = layui.element;
        layer = layui.layer;
        $ = layui.jquery;
        form = layui.form;
        var laydate = layui.laydate;
        var layedit = layui.layedit;

        //监听提交
        form.on('submit(demo1)', function (data) {
            console.log(JSON.stringify(data.field));
            return true;
        });

    });
</script>

</body>
</html>
