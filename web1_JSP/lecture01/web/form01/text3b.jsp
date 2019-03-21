<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-21
  Time: 오후 1:54
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
<% request.setCharacterEncoding("UTF-8"); %>
<div class="container">
    <form>
        <!-- form 태그의 action값이 현재 페이지의 URL과 같은 경우, action 애트리뷰트 생략 가능 -->
        <!-- form 태그의 method 애트리뷰트의 default값이 "GET"임 -->
        <!-- 즉, <form action="text3b.jsp" method="get"> -->
        <h3>텍스트 입력폼 03</h3>
        <div class="form-group">
            <label>text1:</label>
            <input type="text" class="form-control" name="text1" value='<%=request.getParameter("text1")%>' />
        </div>
        <div class="form-group">
            <label>text2:</label>
            <input type="text" class="form-control" name="text2" value='<%=request.getParameter("text2")%>' />
        </div>
        <div class="form-group">
            <label>time:</label>
            <input type="text" class="form-control" name="time"
                   value='<%=new SimpleDateFormat("HH:mm:ss").format(new Date())%>' />
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
            <td><%= request.getParameter("text1") %></td>
        </tr>
        <tr>
            <td>text2</td>
            <td><%= request.getParameter("text2") %></td>
        </tr>
        <tr>
            <td>time</td>
            <td><%= request.getParameter("time") %></td>
        </tr>
        </tbody>

    </table>
</div>

</body>
</html>
