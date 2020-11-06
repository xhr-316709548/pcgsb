<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ECharts 关系图</title>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/echarts.js"></script>
</head>

<body>
<div id="main" style="width:1000px;height:1000px"class="title-hd-sm"></div>
<script type="text/javascript">
    var myChart = echarts.init(document.getElementById('main'));
    var categories = [
        {name: '电影',color: '#999'},
        {name: '演员'},
        {name: '编剧'},
        {name: '导演、编剧、演员'}
    ]
    option = {
        // 图的标题
        title: {
            text: '《功夫》 关系图'
        },
        // 提示框的配置
        tooltip: {
            formatter: function (x) {
                return x.data.des;
            }
        },
        // 工具箱
        toolbox: {
            // 显示工具箱
            show: true,
            feature: {
                mark: {
                    show: true
                },
                // 还原
                restore: {
                    show: true
                },
                // 保存为图片
                saveAsImage: {
                    show: true
                }
            }
        },
        legend: [{
            // selectedMode: 'single',
            data: categories.map(function (a) {
                return a.name;
            })
        }],
        series: [{
            type: 'graph', // 类型:关系图
            layout: 'force', //图的布局，类型为力导图
            symbolSize: 40, // 调整节点的大小
            roam: true, // 是否开启鼠标缩放和平移漫游。默认不开启。如果只想要开启缩放或者平移,可以设置成 'scale' 或者 'move'。设置成 true 为都开启
            edgeSymbol: ['circle', 'arrow'],
            edgeSymbolSize: [2, 10],
            edgeLabel: {
                normal: {
                    textStyle: {
                        fontSize: 20
                    }
                }
            },
            force: {
                edgeLength: 50,
                repulsion: 800,
                gravity: 0.2
            },
            draggable: true,
            lineStyle: {
                normal: {
                    width: 2,
                    color: '#050204',
                }
            },
            edgeLabel: {
                normal: {
                    show: true,
                    formatter: function (x) {
                        return x.data.name;
                    }
                }
            },
            label: {
                normal: {
                    show: true,
                    textStyle: {}
                }
            },

            // 数据
            data: ${pointlist},
            links: ${linklist},
            categories: categories,
        }]
    };
    myChart.setOption(option);

</script>
</body>
</html>
