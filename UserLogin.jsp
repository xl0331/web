<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户登录</title>
<style>
  div {
    border: 5px solid orange;
    border-radius:5px;
    margin-top:250px;
    text-align:center;
   }
   h1{
    border:5px solid red;
    border-radius:5px;
   }
</style>
</head>
<body>
<h1 align="center">后台管理系统</h1>
<div>
<form action="UserLoginResult.jsp" method="post">
<span>用户登录</span><br>
账号:<input type="text" name="username"/><br>
密码:<input type="password" name="password"/><br>
<input type="submit" value="登录" onclick="a()"/>
</form>
</div>
</body>
<script>
function a(){
	alert("登录请求已提交");
}
</script>
</html>