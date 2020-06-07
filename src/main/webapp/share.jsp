<%--
  Created by IntelliJ IDEA.
  User: shens
  Date: 21/5/2020
  Time: 上午 11:36
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
    <link rel="stylesheet" href="./layui/css/layui.css" media="all">
    <style type="text/css">
        .layui-form-item {
            width: 1400px;
        }

        .layui-form-label {
            width: 100px;
        }

        .layui-input-inline select {
            width: 500px;
        }
    </style>
</head>
<body>
<form class="layui-form">
    <div style="margin-top:50px ">
        <div class="layui-form-item">
            <div class="layui-inline" style="float:left;">
                <label class="layui-form-label"><span style="color:red;">* </span>数据名称</label>
                <div class="layui-input-inline">
                    <input type="text" name="name" class="layui-input" required="required" style="width:500px;">
                </div>
            </div>
            <div class="layui-inline" style="float:right;  position: relative;right:310px ">
                <label class="layui-form-label"><span style="color:red;">* </span>数据所属目录</label>
                <div class="layui-input-inline">
                    <input type="text" name="catalog" class="layui-input" required="required" style="width:500px;">
                </div>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-inline" style="float:left;">
                <label class="layui-form-label"><span style="color:red;">* </span>数据公开类型</label>
                <div class="layui-input-inline" style="width:500px;">
                    <select name="develeopType" lay-verify="required" lay-search="">
                        <option value="">直接选择或搜索选择</option>
                        <option value="1">layer</option>
                        <option value="2">form</option>
                        <option value="3">layim</option>
                        <option value="4">element</option>
                        <option value="5">laytpl</option>
                        <option value="6">upload</option>
                        <option value="7">laydate</option>
                        <option value="8">laypage</option>
                        <option value="9">flow</option>
                        <option value="10">util</option>
                        <option value="11">code</option>
                        <option value="12">tree</option>
                        <option value="13">layedit</option>
                        <option value="14">nav</option>
                        <option value="15">tab</option>
                        <option value="16">table</option>
                        <option value="17">select</option>
                        <option value="18">checkbox</option>
                        <option value="19">switch</option>
                        <option value="20">radio</option>
                    </select>
                </div>
            </div>

            <div class="layui-inline" style="float:right;">
                <label class="layui-form-label"><span style="color:red;">* </span>数据主题</label>
                <div class="layui-input-inline" style="width:500px;">
                    <select name="theme" lay-verify="required" lay-search="">
                        <option value="">直接选择或搜索选择</option>
                        <option value="1">layer</option>
                        <option value="2">form</option>
                        <option value="3">layim</option>
                        <option value="4">element</option>
                        <option value="5">laytpl</option>
                        <option value="6">upload</option>
                        <option value="7">laydate</option>
                        <option value="8">laypage</option>
                        <option value="9">flow</option>
                        <option value="10">util</option>
                        <option value="11">code</option>
                        <option value="12">tree</option>
                        <option value="13">layedit</option>
                        <option value="14">nav</option>
                        <option value="15">tab</option>
                        <option value="16">table</option>
                        <option value="17">select</option>
                        <option value="18">checkbox</option>
                        <option value="19">switch</option>
                        <option value="20">radio</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="layui-form-item" style="margin-top:15px;margin-bottom: 15px;width: 1400px;height: 100px">
            <div class="layui-form-item layui-form-text" style="float:left;width: 640px">
                <label class="layui-form-label">数据描述</label>
                <div class="layui-input-block">
                    <textarea name="describe" placeholder="请填写描述" class="layui-textarea" style="width:500px;"></textarea>
                </div>
            </div>

            <div class="layui-form-item" style="float:right;width: 500px;position: relative;right:150px;bottom: 100px">
                <label class="layui-form-label">数据标签</label>
                <div class="layui-input-block">
                    <input type="checkbox" name="label" title="+ New Tag">
                </div>
            </div>
        </div>

        <div class="layui-form-item" style="float:left;width:100%">
            <label class="layui-form-label"><span style="color:red;">* </span>文件共享类型</label>
            <div class="layui-input-block">
                <input type="radio" name="sharingType" value="file" title="文件">
                <input type="radio" name="sharingType" value="dataServer" title="数据服务" checked>
            </div>
        </div>

        <label class="layui-form-label"><span style="color:red;">* </span>文件上传</label>
        <div class="layui-upload-drag" id="test10" style="width: 1200px;height: 200px" required="required">
            <i class="layui-icon"></i>
            <p>点击上传，或将文件拖拽到此处</p>
            <div class="layui-hide" id="uploadDemoView">
                <hr>
                <img src="" alt="上传成功后渲染" style="max-width: 196px">
            </div>
        </div>

        <div class="layui-form-item" style="margin-top:50px">
            <div class="layui-input-block">
                <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </div>
</form>

<script src="./layui/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form', 'layedit', 'laydate'], function () {
        var form = layui.form
            , layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });

        laydate.render({
            elem: '#date1'
        });

        //监听提交
        form.on('submit(demo1)', function (data) {
            // layer.alert(JSON.stringify(data.field), {
            //     title: '最终的提交信息'
            // })
            //return false;
            $.ajax({
                url: 'saveDataServer',
                // data: {
                //     name:data.name,
                //     catalog:data.catalog,
                //     develeopType:data.develeopType,
                //     theme:data.theme,
                //     describe:data.describe,
                //     label:data.label,
                //     sharingType:data.sharingType,
                //     filePath:data.filePath,
                // },
                success: function (data) {
                    layer.msg("提交成功")
                }

            });
        });
    });
</script>
</body>
</html>