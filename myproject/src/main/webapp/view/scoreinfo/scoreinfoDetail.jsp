<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>课程成绩详情页面</title>
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
            <td>${scoreinfo.id}</td>
        </tr>
        <tr>
            <td style="width:150px;">姓名</td>
            <td>${scoreinfo.uname}</td>
        </tr>
        <tr>
            <td style="width:150px;">课程编号</td>
            <td>${scoreinfo.tid}</td>
        </tr>
        <tr>
            <td style="width:150px;">课程名称</td>
            <td>${scoreinfo.tname}</td>
        </tr>
        <tr>
            <td style="width:150px;">总成绩</td>
            <td>${scoreinfo.score}</td>
        </tr>
        <tr>
            <td style="width:150px;">平时成绩</td>
            <td>${scoreinfo.pscore}</td>
        </tr>
        <tr>
            <td style="width:150px;">实验成绩</td>
            <td>${scoreinfo.yscore}</td>
        </tr>
        <tr>
            <td style="width:150px;">考试成绩</td>
            <td>${scoreinfo.qscore}</td>
        </tr>
        <tr>
            <td style="width:150px;">出勤成绩</td>
            <td>${scoreinfo.cq}</td>
        </tr>
        <tr>
            <td style="width:150px;">作业成绩</td>
            <td>${scoreinfo.zy}</td>
        </tr>
        <tr>
            <td style="width:150px;">上机成绩</td>
            <td>${scoreinfo.sj}</td>
        </tr>
        <tr>
            <td style="width:150px;">报告成绩</td>
            <td>${scoreinfo.bg}</td>
        </tr>
        <tr>
            <td style="width:150px;">知识1</td>
            <td>${scoreinfo.ks1}</td>
        </tr>
        <tr>
            <td style="width:150px;">知识2</td>
            <td>${scoreinfo.ks2}</td>
        </tr>
        <tr>
            <td style="width:150px;">知识3</td>
            <td>${scoreinfo.ks3}</td>
        </tr>
        <tr>
            <td style="width:150px;">知识4</td>
            <td>${scoreinfo.ks4}</td>
        </tr>
        <tr>
            <td style="width:150px;">知识5</td>
            <td>${scoreinfo.ks5}</td>
        </tr>
        <tr>
            <td style="width:150px;">知识6</td>
            <td>${scoreinfo.ks6}</td>
        </tr>
        <tr>
            <td style="width:150px;">创建时间</td>
            <td>${scoreinfo.createtime}</td>
        </tr>
        </tbody>
    </table>
</div>


</body>
</html>
