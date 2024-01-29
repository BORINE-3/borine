<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%--获取当前时间--%>
<jsp:useBean id="now" class="java.util.Date" scope="page"/>
<fmt:formatDate var="nowTime" value="${now}" pattern="yyyy-MM-dd HH:mm:ss"/>
<html>
<head>
    <title>成绩分级统计图</title>
</head>
<body>
<div class="layui-container">
    <!-- 引入 echarts.js -->
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- 引入 echarts.js -->
    <script src="https://cdn.staticfile.org/echarts/4.7.0/echarts.min.js"></script>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 80%;height:600px;margin: 20px auto;"></div>
</div>


<script type="text/javascript">

    //请求路径
    var url = "${ctx}/selectAction";
    //执行的sql语句
    var sql = "select sum(case when score between 90 and 100 then 1 else 0 end) as A,sum(case when score between 80 and 89 then 1 else 0 end) as B,sum(case when score between 70 and 79 then 1 else 0 end) as C,sum(case when score between 60 and 69 then 1 else 0 end) as D,sum(case when score<60 then 1 else 0 end) as E from Scoreinfo ";
    //初始化echarts实例
    //柱状图
    function getpieChart() {
        var pieData = [];
        var legendData = [];
        $.ajax({
            url: url,
            type: 'POST',
            dataType: 'json',
            data: {"sql": sql},
            cache: false,
            success: function (data) {
                var data = data.data[0];
                var names = [];
                var values = [];

                names.push("60分以下");
                values.push(data.E);

                names.push("60-70分之间");
                values.push(data.D);

                names.push("70-80分之间");
                values.push(data.C);

                names.push("80-90分之间");
                values.push(data.B);

                names.push("90分以上");
                values.push(data.A);


                // 基于准备好的dom，初始化echarts实例
                var myChart = echarts.init(document.getElementById('main'));

                // 指定图表的配置项和数据
                var option = {
                    title: {
                        text: '成绩分布柱状统计图',
                        x: 'center',
                        y: '7px',
                        textStyle: {
                            color: '#3A7BD5',
                            fontSize: 20
                        },
                        textAlign: 'left'
                    },
                    //工具箱，每个图表最多仅有一个工具箱
                    toolbox: {
                        //显示策略，可选为：true（显示） | false（隐藏），默认值为false
                        show: true,
                        //启用功能，目前支持feature，工具箱自定义功能回调处理
                        feature: {
                            //辅助线标志
                            mark: {show: true},
                            //dataZoom，框选区域缩放，自动与存在的dataZoom控件同步，分别是启用，缩放后退
                            dataZoom: {
                                show: true,
                                title: {
                                    dataZoom: '区域缩放',
                                    dataZoomReset: '区域缩放后退'
                                }
                            },
                            //数据视图，打开数据视图，可设置更多属性,readOnly 默认数据视图为只读(即值为true)，可指定readOnly为false打开编辑功能
                            dataView: {show: true, readOnly: true},
                            //magicType，动态类型切换，支持直角系下的折线图、柱状图、堆积、平铺转换
                            magicType: {show: true, type: ['line', 'bar']},
                            //restore，还原，复位原始图表
                            restore: {show: true},
                            //saveAsImage，保存图片（IE8-不支持）,图片类型默认为'png'
                            saveAsImage: {show: true}
                        }
                    },
                    /*鼠标移入显示文字*/
                    tooltip: {
                        trigger: 'item',
                        show: true,
                        formatter: "{a} {b}: {c}"
                    },
                    legend: {
                        data: ['成绩']
                    },
                    xAxis: {
                        name: "成绩等级",
                        data: names
                    },
                    yAxis: {
                        name: "数量",
                    },
                    series: [{
                        name: '数量',
                        type: 'bar',
                        data: values
                    }]
                };

                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);
            }
        });


    }

    getpieChart();
</script>
</body>
</html>