<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Employee List</title>
<meta charset="UTF-8">

<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<style>
body {
    background: #f3f4f6;
    font-family: 'Segoe UI', sans-serif;
}
.card {
    margin-top: 50px;
    border-radius: 16px;
    border: none;
    box-shadow: 0 10px 25px rgba(0,0,0,0.1);
}
.card-header {
    background: #232f3e;
    color: white;
    font-size: 22px;
    font-weight: 600;
}
.table th {
    background: #37475a;
    color: white;
    text-align: center;
}
.table td {
    text-align: center;
    vertical-align: middle;
}
.btn-add {
    background: #febd69;
    font-weight: 600;
}
</style>
</head>

<body>

<div class="container">
    <div class="card">

        <div class="card-header d-flex justify-content-between align-items-center">
            <span>Employee Management</span>
            <a href="${pageContext.request.contextPath}/register"
               class="btn btn-add">
               + Add Employee
            </a>
        </div>

        <div class="card-body">

            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Age</th>
                        <th>Salary</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach items="${employee}" var="emp">
                        <tr>
                            <td>${emp.empId}</td>
                            <td>${emp.empName}</td>
                            <td>${emp.pno}</td>
                            <td>${emp.empAge}</td>
                            <td>₹ ${emp.empSalary}</td>

                            <td>
                                <a href="${pageContext.request.contextPath}/edit/${emp.empId}"
                                   class="btn btn-warning btn-sm">
                                   Edit
                                </a>
                            </td>

                            <td>
                                <a href="${pageContext.request.contextPath}/delete/${emp.empId}"
                                   class="btn btn-danger btn-sm"
                                   onclick="return confirm('Delete this employee?');">
                                   Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

        </div>
    </div>
</div>

</body>
</html>
