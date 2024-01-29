<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!--轮播图 start-->
<%--banner图--%>
<div class="layui-carousel" id="test1" style="margin-bottom: 0px;">
    <div carousel-item>
        <c:forEach items="${sessionScope.carouselListIndex}" var="item">
            <div style="background-image: url('${item.picurl}');background-size:100% 100%; "></div>
        </c:forEach>
        <%--
        <div style="background-image: url('${ctx}/uploads/b-1.jpeg');background-size:100% 100%; "></div>
         <div style="background-image: url('${ctx}/uploads/b-2.jpeg');background-size:100% 100%; "></div>
         <div style="background-image: url('${ctx}/uploads/b-3.jpeg');background-size:100% 100%; "></div>
         --%>
    </div>
</div>
<!-- 条目内容<img src=""> -->
<script>
    layui.use('carousel', function () {
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            , width: '100%' //设置容器宽度
            , arrow: 'always' //始终显示箭头
            //, height:'400px' //设置轮播图高度
            //,anim: 'updown' //切换动画方式
        });
    });
</script>
<!--轮播图 end-->
