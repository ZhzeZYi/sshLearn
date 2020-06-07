<%--
  Created by IntelliJ IDEA.
  User: shens
  Date: 20/5/2020
  Time: 下午 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="./layui/css/layui.css"  media="all">
    <style type="text/css">
        .layui-collapse{
            width:20%;
            float:left;
        }

    </style>
</head>
<body>
<div style="margin:30px;font-size:14px;color: #4E5465;">
    <div class="layui-collapse">
        <div class="layui-colla-item">
            <h2 class="layui-colla-title">选择数据源</h2>
            <div class="layui-colla-content layui-show">
                <div style="margin:15px;font-size:14px;color: #4E5465;line-height:30px;">
                    表名称：pathman_config</br>
                    表来源：--</br>
                    存储层：专题层</br>
                    业务主键：--</br>
                    表数据量：0</br>
                    最近更新数据量：0</br>
                    标签：--</br>
                    表备注信息：--</br>
                </div>
            </div>
        </div>
        <div class="layui-colla-item">
            <h2 class="layui-colla-title">管理信息</h2>
            <div class="layui-colla-content layui-show">
                <div style="margin:15px;font-size:14px;color: #4E5465;line-height:30px;">
                    表类型：--</br>
                    分区个数：0</br>
                    分区保留数：0</br>
                    分区策略：--</br>
                    生命周期：无限</br>
                    创建时间：2019-12-30 11：12：12</br>
                    修改时间：2019-12-30 11：12：12</br>
                    更新策略：--</br>
                    上次更新时间：--</br>
                </div>
            </div>
        </div>
        <div class="layui-colla-item">
            <h2 class="layui-colla-title">技术信息</h2>
            <div class="layui-colla-content layui-show">
                <div style="margin:15px;font-size:14px;color: #4E5465;line-height:30px;">
                    存储引擎：stork</br>
                    存储位置：dwsdb</br>
                    占用空间：--</br>
                </div>
            </div>
        </div>
    </div>
    <div style="float:right;width:75%;display: block;">
        <div style="background-color: #E9E7E7;height:50px;">
            <table style="width:100%;line-height:20px;">
                <tr>
                    <td>partrel</td>
                    <td>expr</td>
                    <td>partype</td>
                    <td>range_interval</td>
                    <td>cooked-expr</td>
                </tr>
                <tr>
                    <td>regclass</td>
                    <td>text类型</td>
                    <td>integer类型</td>
                    <td>text类型</td>
                    <td>text类型</td>
                </tr>
            </table>
        </div>
    </div>

    <div style="height:100px;border:3px solid #e8e8e8;float:right;width:75%;margin-top:15px">
        <i class="layui-icon layui-icon-list" style="font-size:20px; color: #D9D9D9;text-align:center;">暂无数据</i>
    </div>
</div>
<script src="./layui/layui.js" charset="utf-8"></script>
<script>
    //注意：折叠面板 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function(){
        var element = layui.element();

    });
</script>

</body>
</html>