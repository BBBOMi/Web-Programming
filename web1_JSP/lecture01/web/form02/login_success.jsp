<%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-26
  Time: 오후 4:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String userId = (String)session.getAttribute("userId");
    boolean autologin = (boolean)session.getAttribute("autologin");
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
        table.table { width: 400px; }
        td:nth-child(1) { background-color: #eee; width: 40%; }
    </style>
    <title>Title</title>
</head>
<body>
<div class="container">
    <h1>로그인 성공</h1>
    <hr />

    <table class="table table-bordered">
        <tr>
            <td>사용자 아이디</td>
            <td><%= userId %></td>
        </tr>
        <tr>
            <td>자동 로그인</td>
            <td><%= autologin %></td>
        </tr>
    </table>
</div>

</body>
</html>
