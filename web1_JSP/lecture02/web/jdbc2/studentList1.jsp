<%@ page import="lecture02.jdbc2.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="lecture02.jdbc2.StudentDAO" %><%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-04-15
  Time: 오후 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    int currentPage = 1;
    int pageSize = 10;
    List<Student> list = StudentDAO.findAll(currentPage, pageSize);
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
        body { font-family: 굴림체; }
        thead th { background-color: #eee; }
        table.table { width: 700px; }
    </style>
    <title>Title</title>
</head>
<body>
<div class="container">
    <h1>학생목록</h1>
    <table class="table table-bordered table-condensed">
        <thead>
        <tr>
            <td>id</td>
            <td>학번</td>
            <td>이름</td>
            <td>학과</td>
            <td>학년</td>
        </tr>
        </thead>
        <tbody>
        <% for(Student s : list) { %>
        <tr>
            <td><%=s.getId()%></td>
            <td><%=s.getStudentNumber()%></td>
            <td><%=s.getName()%></td>
            <td><%=s.getDepartmentName()%></td>
            <td><%=s.getYear()%></td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>

</body>
</html>
