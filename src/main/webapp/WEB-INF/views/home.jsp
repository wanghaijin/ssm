<%--
  Created by IntelliJ IDEA.
  User: King
  Date: 2017/6/11
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>主界面</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/iframe.css">
</head>
<body>

<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a href="" class="navbar-brand">人员管理</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul id="mytab" class="nav  navbar-nav">
                <li><a href="javascript:void(0);" onclick="tab(this);" id="find">人员查看</a></li>
                <li class="active"><a  onclick="tab(this);"  id="add">人员添加</a></li>
            </ul>
            <form class="navbar-form navbar-right"  onsubmit="login123()" id="user">
                <div class="form-group">
                    <input type="text" name="account" class="form-control" placeholder="用户名或学号" required>
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" placeholder="密码" required>
                </div>
                <button type="submit" class="btn btn-default">登录</button>
                <button type="button" class="btn btn-default">注册</button>
            </form>
        </div>
    </div>
</nav>
<iframe src="" id="showTab" ></iframe>

<script  src="/resources/js/jquery.min.js"></script>
<script  src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/jquery-validate.js"></script>
<script src="/resources/js/jquery-form.js"></script>
<script>

    $("#mytab  li").click(function (e) {
        e.preventDefault();
        $(this).tab("show");
    });

    function login123() {
        $.ajax({
            data:$('#user').serialize(),
            type:"POST",
            url:"login",
            dataType:'json',
            async:false,
            error:function (data) {
                alert("登录失败");
            },
            success:function (data) {
                if(data.code==200){
                    alert("登录成功");
                }else {
                    alert("登录失败");
                }
            }
        });
    };


    function tab(obj) {
        var tab=document.getElementById("showTab");
//            设置a标签onclick元素失效
//            document.getElementById("reader").setAttribute("disabled",true);
//            移除href元素，即让其元素失效
//            document.getElementById("reader").removeAttribute("href");
        tab.src=obj.id;
    };
</script>

</body>
</html>