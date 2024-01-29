<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%--获取当前时间--%>
<jsp:useBean id="now" class="java.util.Date" scope="page"/>
<fmt:formatDate var="nowTime" value="${now}" pattern="yyyy-MM-dd HH:mm:ss" />
<html>
<head>
    <title>课程目标修改页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <base href="${ctx}/" />
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css"/>
    <script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
	<script type="text/javascript" src="${ctx}/static/js/common.js"></script>
    <script>
        var ctx='${ctx}/';
    </script>
</head>
<body>
<div class="layui-container">


    <form class="layui-form  layui-form-pane" action="${ctx}/kcmbinfo/update" method="post" style="margin: 50px auto;">

			<div class="layui-form-item">
				<label class="layui-form-label">信息编号</label>
				<div class="layui-input-block">
					<input type="text" name="wwid" readonly  id="wwid" value="${kcmbinfo.wwid}" lay-verify autocomplete="off"
						   placeholder="请输入信息编号"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">课程名称</label>
				<div class="layui-input-block">
					<input type="text" name="wkname"   id="wkname" value="${kcmbinfo.wkname}" lay-verify autocomplete="off"
						   placeholder="请输入课程名称"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">目标名称</label>
				<div class="layui-input-block">
					<input type="text" name="mbname"   id="mbname" value="${kcmbinfo.mbname}" lay-verify autocomplete="off"
						   placeholder="请输入目标名称"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">出勤</label>
				<div class="layui-input-block">
					<input type="text" name="cq"   id="cq" value="${kcmbinfo.cq}" lay-verify autocomplete="off"
						   placeholder="请输入出勤"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">作业</label>
				<div class="layui-input-block">
					<input type="text" name="zy"   id="zy" value="${kcmbinfo.zy}" lay-verify autocomplete="off"
						   placeholder="请输入作业"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">上机</label>
				<div class="layui-input-block">
					<input type="text" name="sj"   id="sj" value="${kcmbinfo.sj}" lay-verify autocomplete="off"
						   placeholder="请输入上机"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">报告</label>
				<div class="layui-input-block">
					<input type="text" name="bg"   id="bg" value="${kcmbinfo.bg}" lay-verify autocomplete="off"
						   placeholder="请输入报告"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">知识1</label>
				<div class="layui-input-block">
					<input type="text" name="ks1"   id="ks1" value="${kcmbinfo.ks1}" lay-verify autocomplete="off"
						   placeholder="请输入知识1"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">知识2</label>
				<div class="layui-input-block">
					<input type="text" name="ks2"   id="ks2" value="${kcmbinfo.ks2}" lay-verify autocomplete="off"
						   placeholder="请输入知识2"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">知识3</label>
				<div class="layui-input-block">
					<input type="text" name="ks3"   id="ks3" value="${kcmbinfo.ks3}" lay-verify autocomplete="off"
						   placeholder="请输入知识3"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">知识4</label>
				<div class="layui-input-block">
					<input type="text" name="ks4"   id="ks4" value="${kcmbinfo.ks4}" lay-verify autocomplete="off"
						   placeholder="请输入知识4"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">知识5</label>
				<div class="layui-input-block">
					<input type="text" name="ks5"   id="ks5" value="${kcmbinfo.ks5}" lay-verify autocomplete="off"
						   placeholder="请输入知识5"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">知识6</label>
				<div class="layui-input-block">
					<input type="text" name="ks6"   id="ks6" value="${kcmbinfo.ks6}" lay-verify autocomplete="off"
						   placeholder="请输入知识6"
						   class="layui-input">
				</div>
			</div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button type="submit" class="layui-btn" lay-submit="demo1" lay-filter="demo1">立即提交</button>
                <span class="layui-btn layui-btn-primary" onclick="backPage()">返回列表</span>
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
    layui.use(['element', 'layer', 'jquery', 'form','laydate','layedit'], function () {
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
