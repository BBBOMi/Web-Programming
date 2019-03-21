<%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-21
  Time: 오후 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        input.form-control { width: 200px; }
    </style>
    <title>Title</title>
</head>
<body>
<div class="container">
    <form action="text2action.jsp" method="get">
        <!-- GET 방식에서는 데이터를 query string으로 URL에 붙여서 보낸다 -->
        <!-- http://localhost:8080/form01/text2action.jsp?number1=34&number2=8&cmd=%2B -->
        <h1>텍스트 입력폼 02</h1>

        <div class="form-group">
            <label>number1:</label>
            <input type="text" name="number1" class="form-control" value="34" />
        </div>
        <div class="form-group">
            <label>number2:</label>
            <input type="text" name="number2" class="form-control" value="8" />
        </div>
        <div class="form-group">
            <label>number1:</label>
            <input type="submit" name="cmd" class="btn btn-default" value="+" />
            <input type="submit" name="cmd" class="btn btn-default" value="-" />
            <input type="submit" name="cmd" class="btn btn-default" value="*" />
            <input type="submit" name="cmd" class="btn btn-default" value="/" />
            <!-- 클릭시 text2action.jsp의 실행 요청이 웹 서버에 전달 -->
            <!-- number1, number2, cmd의 값이 요청에 담겨 같이 전송-->
        </div>
    </form>
</div>
</body>
</html>
