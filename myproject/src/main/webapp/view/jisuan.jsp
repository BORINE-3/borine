<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>毕业要求信息列表页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <base href="${ctx}/"/>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css"/>
    <script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
</head>
<body>
<div class="layui-container">


    <table class="layui-table">
        <thead>
        <tr class="layui-bg-green">
            <th colspan="3">成绩结算结果</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>课程名</td>
            <td>课程成绩</td>
            <td>计算结果</td>
        </tr>

        <c:forEach items="${scoreinfos}" var="v">
            <tr>
                <td>${v.tname}</td>
                <td>${v.score}</td>
                <td>${v.uname}</td>
            </tr>
        </c:forEach>
        <tr>
            <td style="width:150px;">总评得分</td>
            <td style="color: green;font-weight: bold" colspan="2">${result} </td>
        </tr>
        </tbody>
    </table>
</div>


</body>
</html>
