<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-26
  Time: 오후 3:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss");
    String nowTime = format.format(new Date());
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
        input.form-control { width: 200px; }
    </style>
    <title>Title</title>
</head>
<body>
<div class="container">
    <h1>로그인</h1>
    <hr />

    <form method="POST">
        <div class="form-group">
            <label>사용자 아이디</label>
            <input type="text" class="form-control" name="userId" />
        </div>
        <div class="form-group">
            <label>비밀번호</label>
            <input type="password" class="form-control" name="password" />
        </div>
        <div class="checkbox">
            <label>
                <input type="checkbox" name="autologin" /> 자동 로그인
            </label>
        </div>
        <button type="submit" class="btn btn-primary">
            <i class="glyphicon glyphicon-ok"></i> 로그인
        </button>
        <a href="register1.jsp" class="btn btn-default">
            <i class="glyphicon glyphicon-user"></i> 회원가입
        </a>
    </form>

    <hr />
    <div class="alert alert-info">
        현재시각: <%= nowTime %>
    </div>
</div>

</body>
</html>
