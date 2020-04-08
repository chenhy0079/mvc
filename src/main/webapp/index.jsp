<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SpringMVC 测试页</title>


    <script type="text/javascript" src="/js/jquery.min.js"></script>

    <script>
        $(function () {

            $("#ajaxBtn").bind("click",function () {
                // 发送ajax请求
                $.ajax({
                    url: '/demo/query',
                    type: 'POST',
                    data: '{"id":"1","name":"李四"}',
                    contentType: 'application/json;charset=utf-8',
                    dataType: 'json',
                    success: function (data) {
                        alert(data.name);
                    }
                })

            })


        })
    </script>


    <style>
        div{
            padding:10px 10px 0 10px;
        }
    </style>
</head>
<body>
    <div>
        <h2>请求测试</h2>
        <fieldset>
            <p>用户：zhangsan(query方法有类访问权限)</p>
            <a href="/demo/query?username=zhangsan">点击测试</a>
        </fieldset>
        <fieldset>
            <p>用户：zhangsan(get方法有类访问权限)</p>
            <a href="/demo/get?username=zhangsan">点击测试</a>
        </fieldset>
        <fieldset>
            <p>用户：lisi(有query方法访问权限)</p>
            <a href="/demo/query?username=lisi">点击测试</a>
        </fieldset>
        <fieldset>
            <p>用户：lisi(无get方法访问权限)</p>
            <a href="/demo/get?username=lisi">点击测试</a>
        </fieldset>
        <fieldset>
            <p>用户：wangwu(无query访问权限)</p>
            <a href="/demo/query?username=wangwu">点击测试</a>
        </fieldset>
        <fieldset>
            <p>用户：wangwu(有get访问权限)</p>
            <a href="/demo/get?username=wangwu">点击测试</a>
        </fieldset>


    </div>

</body>
</html>
