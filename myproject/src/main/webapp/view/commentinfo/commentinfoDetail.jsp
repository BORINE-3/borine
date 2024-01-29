<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>评论信息详情页面</title>
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
            <td style="width:150px;">评论编号</td>
            <td>${commentinfo.id}</td>
        </tr>
        <tr>
            <td style="width:150px;">评论数据</td>
            <td>${commentinfo.tid}</td>
        </tr>
        <tr>
            <td style="width:150px;">评论用户</td>
            <td>${commentinfo.username}</td>
        </tr>
        <tr>
            <td style="width:150px;">评论内容</td>
            <td>${commentinfo.content}</td>
        </tr>
        <tr>
            <td style="width:150px;">用户头像</td>
            <td><img src="${commentinfo.picurl}" style="max-width: 300px;"></td>
        </tr>
        <tr>
            <td style="width:150px;">点赞数</td>
            <td>${commentinfo.likenum}</td>
        </tr>
        <tr>
            <td style="width:150px;">评论时间</td>
            <td>${commentinfo.addtime}</td>
        </tr>
        </tbody>
    </table>
</div>


</body>
</html>
