<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%--获取当前时间--%>
<jsp:useBean id="now" class="java.util.Date" scope="page"/>
<fmt:formatDate var="nowTime" value="${now}" pattern="yyyy-MM-dd HH:mm:ss"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>工程教育认证达成度分析系统-详情显示</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/admin.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/template.css" media="all">
    <script src="${ctx}/static/layui/layui.js"></script>
    <link rel="shortcut icon" href="${ctx}/static/favicon.png" type="image/x-icon"/>
    <link rel="icon" href="${ctx}/static/favicon.png" type="image/gif">
</head>
<body>
<!--导航条 start-->
<jsp:include page="head.jsp"/>
<jsp:include page="banner.jsp"/>

<!--导航条 end-->

<div class="layui-container" style="background: #fff;margin-top: 0px;padding-top: 20px;">
    <fieldset class="layui-elem-field layui-field-title site-title" style="text-align: center;margin: 30px">
        <legend><a name="compatibility">${datainfo.name} 《${datainfo.adduser}》</a></legend>
    </fieldset>

    <div class="layui-row" style="background: #fff;">
        <div style="height: 10px;"></div>
        <div class="layui-elem-quote" style="margin: 20px;">
            <p style="font-size: 18px; margin-bottom: 0px;text-align: center;">课程课时：${datainfo.intro}
                课程学分：${datainfo.nums} </p>
        </div>

        <div class="layui-col-md12" style="text-align: center">
            <form class="layui-form  layui-form-pane" action="#" method="post"
                  style="margin: 50px auto;">

                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label" style="text-align: center">内容显示</label>
                    <div class="layui-input-block">
                <textarea rows="10" name="content" id="content" value="" placeholder="这里显示内容" readonly="readonly"
                          class="layui-textarea contentshow">${datainfo.content}</textarea>
                    </div>
                </div>
            </form>
            <style>
                .contentshow {
                    font-size: 18px;
                    line-height: 2em;
                    text-indent: 2em;
                    text-align: left;
                }
            </style>
        </div>
      <%--  <c:if test="${datainfo.picurl!=''}">
            <div class="layui-col-md12" style="text-align: center;margin-top: 50px;">
                <img src="${datainfo.picurl}" style="width: 60%;border: 1px solid #cecece;padding: 20px;">
            </div>
        </c:if>--%>
        <div class="layui-col-md12">

            <div class="layui-row" style="padding: 20px;">
                <div class="layui-col-md12" style="background: #eee;border-radius:20px; ">
                    <form class="layui-form layui-form-pane" action="${ctx}/commentinfoSubmit" method="post">
                        <input type="hidden" name="tid" value="${datainfo.id}">
                        <input type="hidden" name="username" value="${sessionScope.loginUserinfo.name}">
                        <input type="hidden" name="addtime" value="${nowTime}">
                        <input type="hidden" name="picurl" value="${sessionScope.loginUserinfo.picurl}">
                        <input type="hidden" name="likenum" value="0">
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label" id="commentShow">评论信息显示</label>
                            <div class="layui-input-block">
                                <textarea name="content" placeholder="请输入评论内容" class="layui-textarea"></textarea>
                            </div>
                        </div>
                        <c:if test="${sessionScope.loginUserinfo==null}">
                            <span class="layui-btn layui-btn-fluid layui-btn-primary">登录以后才可以发布评论</span>
                        </c:if>
                        <c:if test="${sessionScope.loginUserinfo!=null}">
                            <button class="layui-btn layui-btn-fluid layui-btn-danger">点我发布评论内容</button>
                        </c:if>
                    </form>
                </div>


                <div style="margin-top: 30px;">
                    <div class="site-title"
                         style="text-align: center;font-size: 20px;border-left:0px;border-right:0px;border-bottom:0px;   ">
                        <fieldset>
                            <legend>评论内容显示区域</legend>

                            <c:forEach items="${commentinfoList}" var="v">
                                <div class='comment'>
                                    <img src='${v.picurl}' alt='head pic'/>
                                    <a class="name" href="">${v.username}</a>
                                    <p>${v.content}</p>
                                    <span>${v.addtime}</span>
                                    <a class='up dianzan' href="javascript:void(0);" dataid="${v.id}"><i
                                            class="layui-icon layui-icon-praise"></i> <b
                                            style="font-size: 18px;color: green;">${v.likenum}</b></a>
                                </div>
                            </c:forEach>

                        </fieldset>
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>
<div style="height: 50px;"></div>
<jsp:include page="foot.jsp"/>

<script>
    var userid = "${sessionScope.loginUserinfo.id}"; //用户编号
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    var $;
    var layer;
    var element;
    var form;
    layui.use(['element', 'layer', 'jquery', 'form', 'laydate', 'layedit'], function () {
        element = layui.element;
        layer = layui.layer;
        $ = layui.jquery;
        form = layui.form;
        var laydate = layui.laydate;

        //绑定详情点击事件
        $(".dianzan").click(function () {
            if (userid == "") {
                layer.alert("用户登陆以后才可以点赞");
                return false;
            }
            var dataid = $(this).attr("dataid");
            var likenum = $(this).find("b").text();
            $(this).find("b").text(parseInt(likenum) + 1);
            $.post("${ctx}/commentinfoDianzan", {"id": dataid}, function (result) {
                layer.msg("评论点赞成功");
            });
        })
        //…
    });
</script>

<style>
    .comment {
        margin-top: 4%;
        margin-left: 14%;
        padding: 2%;
        width: 68%;
        background-color: #ececec;
        border: 1px dashed #888;
        border-radius: 1em;
        position: relative;
        display: block;
        text-align: left;
    }

    .comment:hover img {
        border-radius: 1em;
        border: 2px solid #888;
    }

    .comment:hover {
        background-color: #eee;
    }

    .comment img {
        position: absolute;
        top: -1%;
        left: -10%;
        border-radius: 2em;
        border: 2px solid #888;
        width: 60px;
        height: 60px;
    }

    .comment p {
        text-indent: 2em;
        margin-top: 0.4%;
    }

    .comment span {
        position: absolute;
        top: 10%;
        right: 4%;
        font-size: 0.9em;
        font-weight: bold;
        color: #444
    }

    .comment .name {
        color: black;
        font-weight: bold;
        text-decoration: none;
    }

    .comment .name:hover {
        text-decoration: underline;
    }

    .comment .up {
        color: #555;
        text-decoration: none;
        position: absolute;
        bottom: 1%;
        right: 8%;
    }

    .comment .up:hover {
        color: #000;
    }
</style>
</body>
</html>
