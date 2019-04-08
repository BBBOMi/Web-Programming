<%@ page import="java.util.List" %>
<%@ page import="lecture02.exam.User" %>
<%@ page import="lecture02.exam.UserDAO" %><%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-04-08
  Time: 오전 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    List<User> list = UserDAO.findAll();
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
    <h1>사용자목록</h1>
    <table class="table table-bordered table-condensed">
        <thead>
        <tr>
            <th>아이디</th>
            <th>이름</th>
            <th>이메일</th>
            <th>학과</th>
            <th>사용자유형</th>
        </tr>
        </thead>
        <tbody>
        <% for(User user : list)  { %>
        <tr>
            <td><%= user.getUserid()%></td>
            <td><%= user.getName()%></td>
            <td><%= user.getEmail()%></td>
            <td><%= user.getDepartmentName()%></td>
            <td><%= user.getUserType()%></td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>

</body>
</html>
