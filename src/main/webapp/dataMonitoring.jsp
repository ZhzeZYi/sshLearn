<%--
  Created by IntelliJ IDEA.
  User: shens
  Date: 20/5/2020
  Time: 上午 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Data</title>
    <link rel="stylesheet" href="./layui/css/layui.css" type="text/css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">元数据概况</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">离线</a></li>
            <li class="layui-nav-item"><a href="">实时</a></li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <%--<a href="http://www.layui.com" class="layui-btn">一个可跳转的按钮</a>--%>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed"><a class="" href="javascript:;">血缘关系</a></li>
                <li class="layui-nav-item"> <a href="javascript:;">数据标识</a> </li>
                <li class="layui-nav-item"><a href="">命名规范</a></li>
                <li class="layui-nav-item"><a href="monitoring.jsp">数据监控</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">内容主体区域</div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
    </div>
</div>
<script type="application/javascript" src="./layui/jquery-3.3.1.min.js"></script>
<script type="application/javascript" src="./layui/layui.js"></script>

<script type="text/javascript">
    layui.use(['element'], function(){
        var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
    });
</script>
</body>
</html>
