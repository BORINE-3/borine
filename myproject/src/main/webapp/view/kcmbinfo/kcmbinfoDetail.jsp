<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>课程目标详情页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <base href="${ctx}/" />
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css"/>
    <script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
</head>
<body>
<div class="layui-container">


    <table class="layui-table">
        <tbody>
            <tr>
                <td style="width:150px;">信息编号</td>
                <td>${kcmbinfo.wwid}</td>
            </tr>
            <tr>
                <td style="width:150px;">课程名称</td>
                <td>${kcmbinfo.wkname}</td>
            </tr>
            <tr>
                <td style="width:150px;">目标名称</td>
                <td>${kcmbinfo.mbname}</td>
            </tr>
            <tr>
                <td style="width:150px;">出勤</td>
                <td>${kcmbinfo.cq}</td>
            </tr>
            <tr>
                <td style="width:150px;">作业</td>
                <td>${kcmbinfo.zy}</td>
            </tr>
            <tr>
                <td style="width:150px;">上机</td>
                <td>${kcmbinfo.sj}</td>
            </tr>
            <tr>
                <td style="width:150px;">报告</td>
                <td>${kcmbinfo.bg}</td>
            </tr>
            <tr>
                <td style="width:150px;">知识1</td>
                <td>${kcmbinfo.ks1}</td>
            </tr>
            <tr>
                <td style="width:150px;">知识2</td>
                <td>${kcmbinfo.ks2}</td>
            </tr>
            <tr>
                <td style="width:150px;">知识3</td>
                <td>${kcmbinfo.ks3}</td>
            </tr>
            <tr>
                <td style="width:150px;">知识4</td>
                <td>${kcmbinfo.ks4}</td>
            </tr>
            <tr>
                <td style="width:150px;">知识5</td>
                <td>${kcmbinfo.ks5}</td>
            </tr>
            <tr>
                <td style="width:150px;">知识6</td>
                <td>${kcmbinfo.ks6}</td>
            </tr>
        </tbody>
    </table>
</div>


</body>
</html>
