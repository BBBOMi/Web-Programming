<%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-21
  Time: 오후 2:34
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
        select.form-control { width: 70px; }
    </style>
    <title>Title</title>
</head>
<body>
<div class="container">
    <form action="text2action.jsp" method="GET">
        <h1>select 01</h1>

        <div class="form-group">
            <label>number1:</label>
            <input type="text" name="number1" class="form-control" value="34" />
        </div>
        <div class="form-group">
            <label>operator:</label>
            <select name="cmd" class="form-control">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="*">*</option>
                <option value="/">/</option>
            </select>
        </div>
        <div class="form-group">
            <label>number2:</label>
            <input type="text" name="number2" class="form-control" value="8" />
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary">확인</button>
        </div>
    </form>
</div>

</body>
</html>
