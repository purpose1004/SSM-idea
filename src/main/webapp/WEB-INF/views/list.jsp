<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 设置绝对路径
    String contextPath = request.getContextPath();
    request.setAttribute("APP_PATH",contextPath);
%>
<html>
<head>
    <title>首页展示页面</title>
    <link rel="stylesheet" href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.css">
</head>
<body>
    <table class="table table-bordered">
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>邮箱</th>
            <th>部门</th>
            <th>操作</th>
        </tr>

        <c:forEach items="${employees}" var="employee">
            <tr>
                <td>${employee.empId}</td>
                <td>${employee.empName}</td>
                <td>${employee.gender}</td>
                <td>${employee.email}</td>
                <td>${employee.deptName}</td>
                <td>
                    <a href="${APP_PATH}/employee/getEmpById?id=${employee.empId}">修改</a>|
                    <a href="${APP_PATH}/employee/delete?id=${employee.empId}">删除</a>
                </td>

            </tr>
        </c:forEach>


    </table>

</body>

<script src="${APP_PATH}/static/js/jquery-1.12.4.min.js"></script>
<script src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>

</html>
