<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>毕业要求详情页面</title>
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
                <td style="width:150px;">要求编号</td>
                <td>${byyqinfo.yqid}</td>
            </tr>
            <tr>
                <td style="width:150px;">课程名称</td>
                <td>${byyqinfo.mname}</td>
            </tr>
            <tr>
                <td style="width:150px;">目标1</td>
                <td>${byyqinfo.m1}</td>
            </tr>
            <tr>
                <td style="width:150px;">目标2</td>
                <td>${byyqinfo.m2}</td>
            </tr>
            <tr>
                <td style="width:150px;">目标3</td>
                <td>${byyqinfo.m3}</td>
            </tr>
            <tr>
                <td style="width:150px;">要求名称</td>
                <td>${byyqinfo.mcontent}</td>
            </tr>
            <tr>
                <td style="width:150px;">要求备注</td>
                <td>${byyqinfo.mintro}</td>
            </tr>
        </tbody>
    </table>
</div>


</body>
</html>
