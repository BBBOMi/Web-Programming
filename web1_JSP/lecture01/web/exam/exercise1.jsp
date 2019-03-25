<%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-25
  Time: 오후 10:12
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
    <title>exercise1</title>
</head>
<body>
<%
    String num = request.getParameter("number");
    int number = (num == null) ? 0 : Integer.parseInt(num);

    String operator = request.getParameter("operator");
    if("++".equals(operator)) number++;
    else if("--".equals(operator)) number--;
%>
<div class="container">
    <form method="GET">
        <div class="form-group">
            <label>number:</label>
            <input type="text" name="number" class="form-control" value="<%= number %>" />
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-default" name="operator" value="++" />
            <input type="submit" class="btn btn-default" name="operator" value="--" />
        </div>
    </form>
</div>
</body>
</html>
