<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>A</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="./layui/css/layui.css"  media="all">
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>

<table class="layui-hide" id="test" lay-filter="test"></table>

<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData">批量重新运行</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">批量停止任务</button>
        <button class="layui-btn layui-btn-sm" lay-event="isAll">批量删除</button>
    </div>
</script>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="run">重新运行</a>
    <a class="layui-btn layui-btn-xs" lay-event="ending">停止任务</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>


<script src="./layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#test'
            ,url:'getMonitoring'
            ,parseData:function(res){//res 即为原始返回的数据
                console.log(res);
                return {
                    "code":0
                    ,"msg":""
                    ,"count":1000
                    ,"data":res
                };

            }
            ,toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
            ,defaultToolbar: ['filter', 'exports', 'print', { //自定义头部工具栏右侧图标。如无需自定义，去除该参数即可
                title: '提示'
                ,layEvent: 'LAYTABLE_TIPS'
                ,icon: 'layui-icon-tips'
            }]
            ,title: '用户数据表'
            ,cols: [[
                {type: 'checkbox', fixed: 'left'}
                ,{field:'taskTime', title:'任务时间', fixed: 'left', unresize: true, sort: true}
                ,{field:'name', title:'名称', fixed: 'left', unresize: true, sort: true}
                ,{field:'dispatchID', title:'调度ID', edit: 'text', sort: true}
                ,{field:'jobID', title:'JobID', edit: 'text', sort: true}
                ,{field:'taskTypes', title:'任务类型', edit: 'text'}
                ,{field:'executionCycle', title:'执行周期'}
                ,{field:'state', title:'状态'}
                ,{field:'maxNumberRetries', title:'最大重试次数'}
                ,{field:'currentNumberRetries', title:'当前重试次数'}
                ,{field:'startExecutionTime', title:'开始执行时间',sort: true}
                ,{field:'endExecutionTime', title:'结束执行时间', sort: true}
                ,{fixed: 'right', title:'操作', toolbar: '#barDemo'}
            ]]
        });

        //头工具栏事件
        table.on('toolbar(test)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id);
            switch(obj.event){
                case 'getCheckData':
                    var data = checkStatus.data;
                    layer.alert(JSON.stringify(data));
                    break;
                case 'getCheckLength':
                    var data = checkStatus.data;
                    layer.msg('选中了：'+ data.length + ' 个');
                    break;
                case 'isAll':
                    layer.msg(checkStatus.isAll ? '全选': '未全选');
                    break;

                //自定义头工具栏右侧图标 - 提示
                case 'LAYTABLE_TIPS':
                    layer.alert('这是工具栏右侧自定义的一个图标按钮');
                    break;
            };
        });

        //监听行工具事件
        table.on('tool(test)', function(obj){
            var data = obj.data;
            //console.log(obj)
            if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    obj.del();
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                layer.prompt({
                    formType: 2
                    ,value: data.email
                }, function(value, index){
                    obj.update({
                        email: value
                    });
                    layer.close(index);
                });
            }
        });
    });
</script>

</body>
</html>