<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<div class="layui-footer footer footer-index"
     style="text-align: center;background-color: rgba(0,0,0,0.8);padding: 10px;font-size: 15px;color: #eee;">
  <div class="layui-main">
    <h4>©  工程教育认证达成度分析系统 版权所有</h4>
    <p>
      工程教育认证达成度分析系统 前端页面
    </p>
  </div>
</div>

<script>
  //注意：导航 依赖 element 模块，否则无法进行功能性操作
  layui.use('element', function(){
    var element = layui.element;

    //…
  });
</script>

<style>
  body {
    background: url('${ctx}/uploads/bg_demo.jpg');
    background-repeat: no-repeat;
    background-size: 100% 100%;
    background-attachment: fixed;
  }

  .layadmin-cmdlist-fluid {
    background: rgba(255,255,255,0.80);
    margin-top: 0px;
    padding-top: 30px;
  }
</style>

