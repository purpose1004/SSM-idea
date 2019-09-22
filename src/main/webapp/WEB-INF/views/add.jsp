<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 设置绝对路径
    String contextPath = request.getContextPath();
    request.setAttribute("APP_PATH",contextPath);
%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.css">

</head>
<body>
    <form action="${APP_PATH}/employee/add" method="post">
        <div class="form-group">
            用户名：<input type="text" name="empName">
        </div>

        <div class="form-group">
            性别：<input type="radio" name="gender" value="0">女
                  <input type="radio" name="gender" value="1">男
        </div>

        <div class="form-group">
            邮箱：<input type="text" name="email">
        </div>

        <div class="form-group">
            部门：<select class="form-control" name="dId">
                    <c:forEach items="${departments}" var="dept">
                        <c:if test="${dept.deptId == employee.dId}">
                            <option selected value="${dept.deptId}">${dept.deptName}</option>
                        </c:if>

                        <c:if test="${dept.deptId != employee.dId}">
                            <option value="${dept.deptId}">${dept.deptName}</option>
                        </c:if>
                    </c:forEach>
                </select>
        </div>

        <button type="submit" class="btn btn-default">添加</button>
    </form>
</body>
</html>
