<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //设置开句对路径
    String contextPath = request.getContextPath();
    request.setAttribute("APP_PATH", contextPath);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>success</h1>
<a href="${APP_PATH}/employee/list">All Employees</a>
</body>
</html>
