<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>分类信息列表页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <base href="${ctx}/"/>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css"/>
    <script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
</head>
<body>
<div class="layui-fluid">
    <div style="margin:10px auto; ">

        <div class="layui-input-inline">
            <a id="dd" href="#" type="submit" class="layui-btn layui-btn-blue"><i
                    class="layui-icon layui-icon-export"></i> 导出
            </a>
        </div>
    </div>

    <table border="1" class="layui-table" style="width: 100%;">
        <tbody>
        <tr class="layui-bg-blue">
            <th style="" rowspan="2"><span style="visibility: hidden">课程名称</span></th>
            <c:forEach items="${thList}" var="vv">
                <th style="text-align: center;" colspan="3">${vv}</th>
            </c:forEach>
        </tr>
        <tr class="layui-bg-green">
            <c:forEach items="${th2List}" var="vv">
                <th style="text-align: center;padding: 6px 2px;">${vv}</th>
            </c:forEach>
        </tr>


        <c:forEach items="${mapList}" var="v">
            <tr class="mytable">
                <td>${v.name}</td>
                <c:forEach items="${v.vlist}" var="vv">
                    <td>${vv}</td>
                </c:forEach>
            </tr>
        </c:forEach>


        </tbody>
    </table>


</div>

<style>
    .layui-table td {
        text-align: center;
        padding: 8px 2px;
        margin: 0px;
    }

    .mytable td span {
        display: inline-block;
        width: 20px;
        color: white;
        padding: 0px;
        text-align: center;
        margin: 0px;
        font-size: 10px;
    }

    span.L {
        background-color: rgba(0, 255, 0, 0.4);
    }

    span.M {
        background-color: rgba(0, 0, 255, 0.4);
    }

    span.H {

        background-color: rgba(255, 0, 0, 0.4);
    }
</style>
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
                title: '分类信息详情查看',
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
    a.download = "统计图.xls";
</script>
</body>
</body>
</html>
