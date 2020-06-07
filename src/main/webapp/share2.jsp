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
    <link rel="stylesheet" href="./layui/css/layui.css"  media="all">
    <style type="text/css">
        .mytable{
            wdith:40%;
        }
        .layui-form-item{
            wdith:100%;
        }
        .mylabel{
            wdith:150px;
        }
        .layui-input-inline{
            wdith:50%;
        }
    </style>
</head>
<body>
<form class="layui-form" action="">
    <div>
        <div class="mytable">
            <label class="mylabel">数据名称</label>
                <input type="tel" name="dataName" style="wdith:500px;">
        </div>
        <div class="mytable">
            <label class="mylabel">数据所属目录</label>
                <input type="text" name="directory" style="wdith:500px;">
        </div>
    </div>

    <div >
        <div>
            <label class="mylabel">数据公开类型</label>
            <div >
                <select name="modules" lay-verify="required" lay-search="" style="wdith:500px;">
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

        <div>
            <label class="mylabel">数据主题</label>
            <div>
                <select name="modules" lay-verify="required" lay-search="" style="wdith:500px;">
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

    <div style="wdith:500px;">
        <label class="mylabel">数据描述</label>
        <div>
            <textarea placeholder="请填写描述" class="layui-textarea"></textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <div class="layui-btn-group demoTest" style="margin-top: 5px;">
                <button class="layui-btn layui-btn-sm" style="background-color: #5FB878;" data-type="set" data-key="anim" data-value="default">左右切换</button>
                <button class="layui-btn layui-btn-sm" data-type="set" data-key="anim" data-value="updown">上下切换</button>
            </div>
        </div>
    </div>

    <div class="layui-upload-drag" id="test10">
        <i class="layui-icon"></i>
        <p>点击上传，或将文件拖拽到此处</p>
        <div class="layui-hide" id="uploadDemoView">
            <hr>
            <img src="" alt="上传成功后渲染" style="max-width: 196px">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>

<script src="./layui/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });

        laydate.render({
            elem: '#date1'
        });

        //监听提交
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });
    });
</script>
</body>
</html>