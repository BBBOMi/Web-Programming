<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-04-15
  Time: 오후 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body>
<div class="container">
    <h1>JSP 태그 파일 테스트</h1>
    <hr />

    <p>
        <my:dateTime format="yyyy-MM-dd" />
    </p>

    <p>
        <my:dateTime format="yyyy-MM-dd HH:mm" />
    </p>

    <p>
        <my:dateTime format="yyyy-MM-dd HH:mm:ss" date="<%= new Date()%>" />
    </p>
</div>

</body>
</html>
