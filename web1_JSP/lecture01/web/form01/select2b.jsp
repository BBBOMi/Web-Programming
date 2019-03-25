<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-25
  Time: 오후 5:44
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
        table.table { width: 500px; }
        thead tr { background-color: #eee; }
    </style>
    <title>Title</title>
</head>
<body>
<%
    String s1 = request.getParameter("number1");
    int number1 = (s1 == null) ? 0 : Integer.parseInt(s1);
    String s2 = request.getParameter("number2");
    int number2 = (s2 == null) ? 0 : Integer.parseInt(s2);

    String cmd = request.getParameter("cmd");
    int result = 0;
    if("+".equals(cmd)) result = number1 + number2;
    else if("-".equals(cmd)) result = number1 - number2;
    else if("*".equals(cmd)) result = number1 * number2;
    else if("/".equals(cmd)) result = number1 / number2;
%>

<div class="container">
    <form method="GET">
        <h1>select 01</h1>

        <div class="form-group">
            <label>number 1:</label>
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
            <label>number 2:</label>
            <input type="text" name="number2" class="form-control" value="8" />
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary">확인</button>
        </div>
    </form>

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
            <td>number1</td>
            <td><%= number1 %></td>
        </tr>
        <tr>
            <td>number2</td>
            <td><%= number2 %></td>
        </tr>
        <tr>
            <td>cmd</td>
            <td><%= cmd %></td>
        </tr>
        <tr>
            <td>method</td>
            <td><%= request.getMethod() %></td>
        </tr>
        <tr>
            <td>계산결과</td>
            <td><%= result %></td>
        </tr>
        <tr>
            <td>시각</td>
            <td><%= new SimpleDateFormat("HH:mm:ss").format(new Date()) %></td>
        </tr>
        </tbody>
    </table>

</div>

</body>
</html>
