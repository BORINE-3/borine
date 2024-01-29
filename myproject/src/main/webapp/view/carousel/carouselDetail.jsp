<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>轮播图详情页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
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
            <td>${carousel.id}</td>
        </tr>
        <tr>
            <td style="width:150px;">名称</td>
            <td>${carousel.name}</td>
        </tr>
        <tr>
            <td style="width:150px;">图片</td>
            <td><img src="${carousel.picurl}" style="max-width: 500px;"></td>
        </tr>
        </tbody>
    </table>
</div>


</body>
</html>
