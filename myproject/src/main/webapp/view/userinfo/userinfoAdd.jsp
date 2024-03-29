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
    <title>用户信息添加页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
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


    <form class="layui-form  layui-form-pane" action="${ctx}/userinfo/insert" method="post" style="margin: 50px auto;">
        <div class="layui-form-item">
            <label class="layui-form-label">学号</label>
            <div class="layui-input-block">
                <input type="text" name="intro" id="intro" value="" lay-verify autocomplete="off"
                       placeholder="请输入学号"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">姓名</label>
            <div class="layui-input-block">
                <input type="text" name="name" id="name" value="" lay-verify autocomplete="off"
                       placeholder="请输入姓名"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">电话</label>
            <div class="layui-input-block">
                <input type="text" name="phone" id="phone" value="" lay-verify autocomplete="off"
                       placeholder="请输入电话"
                       class="layui-input">
            </div>
        </div>


        <div class="layui-form-item ">
            <label class="layui-form-label">头像</label>
            <div class="layui-input-block">
                <input id="myfile" type="file" name="myfile" style="display: none;"
                       onchange="uploadFileUtil('myfile','picurl')">
                <input type="text" id="picurl" name="picurl" value="" lay-verify="required"
                       placeholder="网路路径或者上传  如果是要上传，请点击后面的上传文件按钮"
                       value="" class="layui-input" style="width: 80%;display: inline-block;"/>
                <span onclick="uploadFileUtilClick('myfile')" class="layui-btn"><i
                        class="layui-icon layui-icon-upload"></i>上传文件</span>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">邮箱</label>
            <div class="layui-input-block">
                <input type="text" name="email" id="email" value="" lay-verify autocomplete="off"
                       placeholder="请输入邮箱"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">个人评价</label>
            <div class="layui-input-block">
                         <textarea rows="5" name="content" id="role" value="" placeholder="请输入个人评价"
                                   class="layui-textarea"> </textarea>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">性别</label>
            <div class="layui-input-block">
                <select name="sex" id="sex" class="layui-select">
                    <option value="男"  ${userinfo.sex=='男'?'selected':''}>男</option>
                    <option value="女"  ${userinfo.sex=='女'?'selected':''}>女</option>
                </select>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-block">
                <input type="password" name="password" id="password" value="" lay-verify autocomplete="off"
                       placeholder="请输入密码"
                       class="layui-input">
            </div>
        </div>


        <div class="layui-form-item">
            <div class="layui-input-block">
                <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
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

    });
</script>

</body>
</html>
