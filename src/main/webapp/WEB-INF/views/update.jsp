<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <form action="${APP_PATH}/employee/updateEmployee" method="post">

        <input type="hidden" name="empId" value="${employee.empId}">

        <div class="form-group">
            <label for="exampleInputName">姓名</label>
            <input type="text" name="empName" value="${employee.empName}" class="form-control" id="exampleInputName" placeholder="请输入员工姓名">
        </div>

        <div class="form-group">
            <label for="exampleInputEmail">邮箱</label>
            <input type="email" name="email" value="${employee.email}" class="form-control" id="exampleInputEmail">
        </div>

        <div class="form-group">
            <c:choose>
               <c:when test='${employee.gender == "1"}'>
                   <label class="radio-inline">
                       <input type="radio" name="gender" value="1" checked> 男
                   </label>
                   <label class="radio-inline">
                       <input type="radio" name="gender" value="0"> 女
                   </label>
               </c:when>

               <c:otherwise>
                   <label class="radio-inline">
                       <input type="radio" name="gender" value="1"> 男
                   </label>
                   <label class="radio-inline">
                       <input type="radio" name="gender" value="0" checked> 女
                   </label>
               </c:otherwise>
            </c:choose>
        </div>

        <div class="form-group">
            <select class="form-control" name="dId">
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

        <button type="submit" class="btn btn-default">修改</button>

    </form>

</body>
<script src="${APP_PATH}/static/js/jquery-1.12.4.min.js"></script>
<script src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>

</html>
