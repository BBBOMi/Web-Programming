<%@ page import="lecture02.jdbc1.Department" %>
<%@ page import="lecture02.jdbc1.DepartmentDAO" %>
<%@ page import="lecture02.jdbc1.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="lecture02.jdbc1.StudentDAO3" %><%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-04-15
  Time: 오후 8:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String str = request.getParameter("departmentId");
    int departmentId = (str == null) ? 0 : Integer.parseInt(str);

    List<Student> list;
    if(departmentId == 0) list = StudentDAO3.findAll();
    else list = StudentDAO3.findByDepartmentId(departmentId);
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        thead th { background-color: #eee; }
        table.table { width: 700px; margin-top: 10px; }
    </style>
    <title>Title</title>
</head>
<body>
<div class="container">
    <h1>학생목록</h1>
    <form class="form-inline">
        <div class="form-group">
            <label>학과</label>
            <select name="departmentId" class="form-control">
                <option value="0" <%=departmentId == 0 ? "selected" : "" %>>전체</option>
                <% for(Department d : DepartmentDAO.findAll()) { %>
                <option value="<%=d.getId() %>" <%= departmentId == d.getId() ? "selected " : "" %>>
                    <%=d.getDepartmentName()%>
                </option>
                <% } %>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">조회</button>
    </form>

    <table class="table table-bordered table-condensed">
        <thead>
        <tr>
            <th>학번</th>
            <th>이름</th>
            <th>학과</th>
            <th>학년</th>
        </tr>
        </thead>
        <tbody>
        <% for(Student s : list) { %>
        <tr>
            <td><%= s.getStudentNumber()%></td>
            <td><%= s.getName()%></td>
            <td><%= s.getDepartmentName()%></td>
            <td><%= s.getYear()%></td>
        </tr
            <% } %>
        </tbody>
    </table>
</div>
</body>
</html>
