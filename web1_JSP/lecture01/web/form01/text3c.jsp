<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-21
  Time: 오후 2:13
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
        table.table { width: 500px; }
        thead tr { background-color: #eee; }
    </style>
    <title>Title</title>
</head>
<body>
<%
    String text1 = request.getParameter("text1");
    String text2 = request.getParameter("text2");
    String time = request.getParameter("time");
    if(text1 == null) text1 = "";
    if(text2 == null) text2 = "";
    if(time == null) time = "";
    String currentTime = new SimpleDateFormat("HH:mm:ss").format(new Date());
%>
<div class="container">
    <form>
        <h3>텍스트 입력폼 03</h3>
        <div class="form-group">
            <label>text1:</label>
            <input type="text" class="form-control" name="text1" value="<%= text1 %>" />
        </div>
        <div class="form-group">
            <label>text2:</label>
            <input type="text" class="form-control" name="text2" value="<%= text2 %>" />
        </div>
        <div class="form-group">
            <label>time:</label>
            <input type="text" class="form-control" name="time" value="<%= currentTime %>" />
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-primary" name="cmd" value="확인" />
        </div>
    </form>

    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Parameter Name</th>
            <th>Parameter Value</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>text1</td>
            <td><%= text1 %></td>
        </tr>
        <tr>
            <td>text2</td>
            <td><%= text2 %></td>
        </tr>
        <tr>
            <td>time</td>
            <td><%= time %></td>
        </tr>
        </tbody>
    </table>
</div>

</body>
</html>
