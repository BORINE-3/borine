<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>课程信息详情页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <base href="${ctx}/"/>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css"/>
    <script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
</head>
<body>
<div class="layui-container">


    <table class="layui-table">
        <tbody>
        <tr>
            <td style="width:150px;">编号</td>
            <td>${datainfo.id}</td>
        </tr>
        <tr>
            <td style="width:150px;">名称</td>
            <td>${datainfo.name}</td>
        </tr>

        <tr>
            <td style="width:150px;">图片地址</td>
            <td><img src="${datainfo.picurl}" style="max-width: 300px;"></td>
        </tr>
        <tr>
            <td style="width:150px;">课程学分</td>
            <td>${datainfo.nums}</td>
        </tr>
        <tr>
            <td style="width:150px;">所属分类</td>
            <td>${datainfo.sorttype}</td>
        </tr>
        <tr>
            <td style="width:150px;">授课教师</td>
            <td>${datainfo.adduser}</td>
        </tr>
        <tr>
            <td style="width:150px;">课程学时</td>
            <td>${datainfo.intro}</td>
        </tr>
        <tr>
            <td style="width:150px;">课程目标1</td>
            <td>${datainfo.k1}</td>
        </tr>
        <tr>
            <td style="width:150px;">课程目标2</td>
            <td>${datainfo.k2}</td>
        </tr>
        <tr>
            <td style="width:150px;">课程目标3</td>
            <td>${datainfo.k3}</td>
        </tr>

        <tr>
            <td style="width:150px;">课程内容</td>
            <td>${datainfo.kcnr}</td>
        </tr>
        <tr>
            <td style="width:150px;">课程要求</td>
            <td>${datainfo.kcyq}</td>
        </tr>
        <tr>
            <td style="width:150px;">课程目标1</td>
            <td>${datainfo.mb1}</td>
        </tr>
        <tr>
            <td style="width:150px;">课程目标2</td>
            <td>${datainfo.mb2}</td>
        </tr>
        <tr>
            <td style="width:150px;">课程目标3</td>
            <td>${datainfo.mb3}</td>
        </tr>
        <tr>
            <td style="width:150px;">添加时间</td>
            <td>${datainfo.addtime}</td>
        </tr>
        </tbody>
    </table>
</div>


</body>
</html>
