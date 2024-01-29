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
    <title>课程信息添加页面</title>
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

    <form class="layui-form  layui-form-pane" action="${ctx}/datainfo/insert" method="post" style="margin: 50px auto;">

        <div class="layui-form-item">
            <label class="layui-form-label">名称</label>
            <div class="layui-input-block">
                <input type="text" name="name" id="name" value="" lay-verify autocomplete="off"
                       placeholder="请输入名称"
                       class="layui-input">
            </div>
        </div>



        <div class="layui-form-item ">
            <label class="layui-form-label">图片地址</label>
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
            <label class="layui-form-label">课程学分</label>
            <div class="layui-input-block">
                <input type="text" name="nums" id="nums" value="" lay-verify autocomplete="off"
                       placeholder="请输入课程学分 整数"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">所属分类</label>
            <div class="layui-input-block">
                <select name="sorttype" id="sorttype" class="layui-select">
                    <option value="">请选择分类</option>
                    <c:forEach items="${sorttypeList}" var="item">
                        <option value="${item.sortname}">${item.sortname}</option>
                    </c:forEach>
                </select>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">授课教师</label>
            <div class="layui-input-block">
                <input type="text" name="adduser" id="adduser" value="" lay-verify autocomplete="off"
                       placeholder="请输入授课教师"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">课程学时</label>
            <div class="layui-input-block">
                <input type="text" name="intro" id="intro" value="" lay-verify autocomplete="off"
                       placeholder="请输入课程学时"
                       class="layui-input">
            </div>
        </div>



        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">课程内容</label>
            <div class="layui-input-block">
                <textarea rows="10" name="kcnr" id="kcnr" value="" placeholder="请输入课程内容"
                          class="layui-textarea"> </textarea>
            </div>
        </div>




        <div class="layui-form-item">
            <label class="layui-form-label">课程要求</label>
            <div class="layui-input-block">
                <input type="text" name="kcyq" id="kcyq" value="" lay-verify autocomplete="off"
                       placeholder="请输入课程要求"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">课程目标1</label>
            <div class="layui-input-block">
                <input type="text" name="mb1" id="mb1" value="" lay-verify autocomplete="off"
                       placeholder="请输入课程目标1"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">课程目标2</label>
            <div class="layui-input-block">
                <input type="text" name="mb2" id="mb2" value="" lay-verify autocomplete="off"
                       placeholder="请输入课程目标2"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">课程目标3</label>
            <div class="layui-input-block">
                <input type="text" name="mb3" id="mb3" value="" lay-verify autocomplete="off"
                       placeholder="请输入课程目标3"
                       class="layui-input">
            </div>
        </div>


        <div class="layui-form-item">
            <label class="layui-form-label">添加时间</label>
            <div class="layui-input-block">
                <input type="text" name="addtime" id="addtime" value="${nowTime}" lay-verify autocomplete="off"
                       placeholder="请输入添加时间"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button type="submit" class="layui-btn" lay-submit="demo1" lay-filter="demo1">立即提交</button>
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

        //监听提交
        form.on('submit(demo1)', function (data) {
            console.log(JSON.stringify(data.field));
            return true;
        });

    });
</script>

</body>
</html>
