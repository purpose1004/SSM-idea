<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--引入bootstrap.css--%>
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">
</head>
<body>

    <a href="${APP_PATH}/employee/list" class="btn btn-info btn-lg">查询所有</a>
    <br/>

   <%--active:激活--%>
    <button class="btn btn-danger btn-lg active">测试按钮</button><br>

    <a href="${APP_PATH}/WEB-INF/views/add.jsp" class="btn btn-info btn-lg">添加</a>
    <br/>



</body>
<%--导入jQuery--%>
<script src="static/js/jquery-1.12.4.min.js"></script>
<%--导入js--%>
<script src="static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
</html>
