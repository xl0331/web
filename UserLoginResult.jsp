<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<jsp:useBean id="myUserCheckBean" scope="page" class="org.etspace.abc.bean.UserCheckBean"></jsp:useBean>
<jsp:setProperty name="myUserCheckBean" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UserCheckBean</title>
<style>
body{
   background-image:url("1.png");
}
.circle{
   background-color:orange;
   color:white;
   text-align:center;
   border-style:solid;
   border-radius:5px;
}
</style>
</head>
<body>
<%
if(myUserCheckBean.check()){
%>
<h1 class="circle"><%=myUserCheckBean.getUsername()%>欢迎光临本系统!当前用户有:</h1>
<hr size="5px" width="50%" color="white"/>
<div align="center">
<table style="text-align:center;width:50%;height:50%;color:white;border: 5px solid red;border-radius: 5px;">
<tr>
<th>账号</th>
<th>密码</th>
</tr>
<%
int cnt=0;
ResultSet rs=myUserCheckBean.query();
while(rs.next()){
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
</tr>
<%
cnt++;
}
%>
</table>
<hr size="5px" width="50%" color="white"/>
<h1 class="circle">当前用户有:<%=cnt%>人</h1>
</div>
<%}else{ %>
登录失败!请单击<a href="javascript:history.back(-1)">此处</a>重新登录
<%
}
%>
</body>
</html>