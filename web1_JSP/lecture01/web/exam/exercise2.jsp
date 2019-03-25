<%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-25
  Time: 오후 10:41
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
        .form-control { width: 200px; }
    </style>
    <title>exercise2</title>
</head>
<body>
<%
    String select = request.getParameter("select");
    String text = (select == null) ? "" : select;
%>
<div class="container">
    <form method="GET">
        <div class="form-group">
            <label>select1:</label>
            <select name="select" class="form-control">
                <option value="one" <%= "one".equals(select) ? "selected" : "" %> >one</option>
                <option value="two" <%= "two".equals(select) ? "selected" : "" %> >two</option>
                <option value="three" <%= "three".equals(select) ? "selected" : "" %>>three</option>
            </select>
        </div>
        <div class="form-group">
            <label><input type="radio" name="radio" value="one" <%= "one".equals(select) ? "checked" : "" %>>one</label>
            <label><input type="radio" name="radio" value="two" <%= "two".equals(select) ? "checked" : "" %>>two</label>
            <label><input type="radio" name="radio" value="three" <%= "three".equals(select) ? "checked" : "" %>>three</label>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="text" value="<%= text %>" />
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary">확인</button>
        </div>
    </form>

</div>
</body>
</html>
