<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<ul class="layui-nav layui-bg-blue" lay-filter="" style="margin-bottom: 0px;text-align: center;">
    <li class="layui-nav-item"><a href="${ctx}/index">工程教育认证达成度分析系统</a></li>
    <li class="layui-nav-item"><a href="${ctx}/index">首页</a></li>
    <li class="layui-nav-item"><a href="${ctx}/infoList">毕业要求</a></li>
    <li class="layui-nav-item"><a href="${ctx}/indexpointList">毕业指标</a></li>
    <c:if test="${sessionScope.loginUserinfo==null}">
        <li class="layui-nav-item"><a href="${ctx}/admininfo/tologin" target="_blank">后台管理</a></li>
        <li class="layui-nav-item"><a href="${ctx}/view/login.jsp">马上登陆</a></li>
        <li class="layui-nav-item"><a href="${ctx}/view/register.jsp">点我注册</a></li>
    </c:if>
    <c:if test="${sessionScope.loginUserinfo!=null}">

        <li class="layui-nav-item"><a href="${ctx}/myDataList">我的成绩</a></li>
        <li class="layui-nav-item">
            <a href=""><img src="${sessionScope.loginUserinfo.picurl}"
                            class="layui-nav-img">${sessionScope.loginUserinfo.name}
            </a>
            <dl class="layui-nav-child">
                <dd><a href="${ctx}/userinfoCenter">个人中心</a></dd>
                <dd><a href="${ctx}/loginOut">退出登录</a></dd>
            </dl>
        </li>
    </c:if>
</ul>
<script>
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
        $(".showScore").click(function () {
            var path = $(this).attr("path");
            layer.open({
                offset: '100px', //设置弹出窗口的位置 上边距100px
                type: 2,  //弹出类型
                skin: 'layui-layer-demo', //样式类名
                title: '学生信息详情查看',
                anim: 2,    //弹出窗口使用的动画
                area: ['800px', '620px'],  //设置弹出窗口的大小 宽度,高度
                shadeClose: true, //开启遮罩关闭
                content: path  //加载内容路径
            });
        })
    });
</script>
