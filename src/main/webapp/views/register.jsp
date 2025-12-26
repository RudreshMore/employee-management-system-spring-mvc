<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Employee Registration</title>
<meta charset="UTF-8">

<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<style>
body {
    background: #f3f4f6;
    font-family: 'Segoe UI', sans-serif;
}
.card {
    margin-top: 60px;
    border-radius: 16px;
    border: none;
    box-shadow: 0 10px 25px rgba(0,0,0,0.1);
}
.card-header {
    background: #232f3e;
    color: white;
    font-size: 20px;
    font-weight: 600;
}
.form-control {
    height: 45px;
    border-radius: 8px;
}
.btn-save {
    background: #febd69;
    font-weight: 600;
}
</style>
</head>

<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card">
                <div class="card-header text-center">
                    Employee Registration
                </div>

                <div class="card-body">

                    <form action="${pageContext.request.contextPath}/save"
                          method="post">

                        <!-- ID for Edit -->
                        <input type="hidden" name="empId"
                               value="${employee.empId}" />

                        <div class="form-group">
                            <label>Employee Name</label>
                            <input type="text"
                                   name="empName"
                                   class="form-control"
                                   value="${employee.empName}">
                            <small class="text-danger">${errors.empName}</small>
                        </div>

                        <div class="form-group">
                            <label>Phone Number</label>
                            <input type="text"
                                   name="pno"
                                   class="form-control"
                                   value="${employee.pno}">
                            <small class="text-danger">${errors.pno}</small>
                        </div>

                        <div class="form-group">
                            <label>Age</label>
                            <input type="number"
                                   name="empAge"
                                   class="form-control"
                                   value="${employee.empAge}">
                            <small class="text-danger">${errors.empAge}</small>
                        </div>

                        <div class="form-group">
                            <label>Salary</label>
                            <input type="number"
                                   step="0.01"
                                   name="empSalary"
                                   class="form-control"
                                   value="${employee.empSalary}">
                            <small class="text-danger">${errors.empSalary}</small>
                        </div>

                        <button class="btn btn-save btn-block mt-4">
                            Save Employee
                        </button>

                        <a href="${pageContext.request.contextPath}/employees"
                           class="btn btn-link btn-block">
                           Back to List
                        </a>

                    </form>

                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>
