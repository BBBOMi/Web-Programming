<%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-18
  Time: 오전 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" >
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        table.table { width: 500px; }
        thead tr { background-color: #eee; }
    </style>
    <title>Title</title>
</head>
<body>
<div class="container">
    <% request.setCharacterEncoding("UTF-8"); %>

    <h1>request parameter</h1>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Parameter Name</th>
            <th>Parameter Value</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>param1</td>
            <td><%= request.getParameter("param1") %></td>
        </tr>
        <tr>
            <td>param2</td>
            <td><%= request.getParameter("param2") %></td>
        </tr>
        <tr>
            <td>cmd</td>
            <td><%= request.getParameter("cmd") %></td>
        </tr>
        <tr>
            <td>method</td>
            <td><%= request.getMethod() %></td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
