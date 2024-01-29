<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>课程成绩列表页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <base href="${ctx}/"/>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css"/>
    <script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
</head>
<body>
<div class="layui-fluid">
    <div style="margin:10px auto; ">
        <form class="layui-form" action="${ctx}/scoreinfo/list" method="post">
            <div class="layui-form-item" style="text-align: center;">
                <div class="layui-inline">
                    <div class="layui-input-inline" style="">
                        <input type="text" class="layui-input dateIcon" name="keyword" id="keyword"
                               value="${keyword}"
                               placeholder="请输入姓名搜索"
                               style="width: 240px;">
                    </div>

                    <div class="layui-input-inline">
                        <button type="submit" class="layui-btn layui-btn-blue"><i
                                class="layui-icon layui-icon-search"></i> 搜索
                        </button>
                    </div>
                    <div class="layui-input-inline">
                        <a id="dd" href="#" type="submit" class="layui-btn layui-btn-blue"><i
                                class="layui-icon layui-icon-export"></i> 导出
                        </a>
                    </div>
                </div>
            </div>

        </form>
    </div>

    <table class="layui-table" border="1" style="display: none;">
        <tbody>
        <tr class="layui-bg-blue">
            <th>编号</th>
            <th>姓名</th>
            <th>课程编号</th>
            <th>课程名称</th>
            <th>总成绩</th>
            <th>平时成绩</th>
            <th>实验成绩</th>
            <th>考试成绩</th>
            <th>出勤成绩</th>
            <th>作业成绩</th>
            <th>上机成绩</th>
            <th>报告成绩</th>
            <th>知识1</th>
            <th>知识2</th>
            <th>知识3</th>
            <th>知识4</th>
            <th>知识5</th>
            <th>知识6</th>
            <th>学生课程达成度</th>
        </tr>


        <c:forEach items="${scoreinfoList}" var="v">
            <tr>
                <td>${v.id}</td>
                <td>${v.uname}</td>
                <td>${v.tid}</td>
                <td>${v.tname}</td>
                <td>${v.score}</td>
                <td>${v.pscore}</td>
                <td>${v.yscore}</td>
                <td>${v.qscore}</td>
                <td>${v.cq}</td>
                <td>${v.zy}</td>
                <td>${v.sj}</td>
                <td>${v.bg}</td>
                <td>${v.ks1}</td>
                <td>${v.ks2}</td>
                <td>${v.ks3}</td>
                <td>${v.ks4}</td>
                <td>${v.ks5}</td>
                <td>${v.ks6}</td>
                <td>${v.学生课程达成度}</td>
            </tr>
        </c:forEach>


        </tbody>
    </table>


    <table class="layui-table">
        <tbody>
        <tr class="layui-bg-blue" >
            <th>编号</th>
            <th>姓名</th>
            <th>课程编号</th>
            <th>课程名称</th>
            <th>总成绩</th>
            <th>平时成绩</th>
            <th>实验成绩</th>
            <th>考试成绩</th>
            <th>出勤成绩</th>
            <th>作业成绩</th>
            <th>上机成绩</th>
            <th>报告成绩</th>
            <th>知识1</th>
            <th>知识2</th>
            <th>知识3</th>
            <th>知识4</th>
            <th>知识5</th>
            <th>知识6</th>
            <th style="text-align: center;">学生课程达成度</th>
            <th>操作</th>
        </tr>


        <c:forEach items="${scoreinfoList}" var="v">
            <tr>
                <td>${v.id}</td>
                <td>${v.uname}</td>
                <td>${v.tid}</td>
                <td>${v.tname}</td>
                <td>${v.score}</td>
                <td>${v.pscore}</td>
                <td>${v.yscore}</td>
                <td>${v.qscore}</td>
                <td>${v.cq}</td>
                <td>${v.zy}</td>
                <td>${v.sj}</td>
                <td>${v.bg}</td>
                <td>${v.ks1}</td>
                <td>${v.ks2}</td>
                <td>${v.ks3}</td>
                <td>${v.ks4}</td>
                <td>${v.ks5}</td>
                <td>${v.ks6}</td>
                <td style="text-align: center;color: green">${v.学生课程达成度}</td>
                <td style="width: 180px;">
                    <a href="${ctx}/scoreinfo/edit?id=${v.id}" class="layui-btn layui-btn layui-btn-sm">修改</a>
                    <a href="${ctx}/scoreinfo/delete?id=${v.id}" class="layui-btn layui-btn-danger layui-btn-sm">删除</a>
                    <button path="${ctx}/scoreinfo/detail?id=${v.id}"
                            class="layui-btn layui-btn-normal layui-btn-sm showDetail">详情
                    </button>
                </td>
            </tr>
        </c:forEach>


        </tbody>
    </table>

    <%--引入分页代码--%>
    <jsp:include page="../sortPage.jsp"></jsp:include>
</div>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    //定义layui的变量
    var $;
    var layer;
    var element;
    var form;
    layui.use(['element', 'layer', 'jquery', 'form'], function () {
        element = layui.element;
        layer = layui.layer;
        $ = layui.jquery;
        form = layui.form;
        //绑定详情点击事件
        $(".showDetail").click(function () {
            var path = $(this).attr("path");
            layer.open({
                offset: '100px', //设置弹出窗口的位置 上边距100px
                type: 2,  //弹出类型
                skin: 'layui-layer-molv', //样式类名
                title: '课程成绩详情查看',
                anim: 2,    //弹出窗口使用的动画
                area: ['800px', '620px'],  //设置弹出窗口的大小 宽度,高度
                shadeClose: true, //开启遮罩关闭
                content: path  //加载内容路径
            });
        })
    });
</script>
<script>
    //如果使用ajax加载数据  请把这个代码写在 ajax执行完之后
    // 使用outerHTML属性获取整个table元素的HTML代码（包括<table>标签），然后包装成一个完整的HTML文档，设置charset为urf-8以防止中文乱码
    var html = "<html><head><meta charset='utf-8' /></head><body>" + document.getElementsByTagName("table")[0].outerHTML + "</body></html>";
    // 实例化一个Blob对象，其构造函数的第一个参数是包含文件内容的数组，第二个参数是包含文件类型属性的对象
    var blob = new Blob([html], {type: "image/vnd.ms-excel"});
    var a = document.getElementById("dd");
    // 利用URL.createObjectURL()方法为a元素生成blob URL
    a.href = URL.createObjectURL(blob);
    // 设置文件名
    a.download = "学生成绩表.xls";
</script>

<style>
    .layui-bg-blue th{
        font-size: 12px;
    }
</style>
</body>
</html>
