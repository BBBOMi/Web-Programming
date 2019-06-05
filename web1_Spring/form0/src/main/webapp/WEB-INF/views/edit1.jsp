<%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-06-05
  Time: 오전 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body>
<div class="container">
    <h1>edit1</h1>
    <hr />
    <form method="post">
        <div class="form-group">
            <label>제목: </label>
            <input type="text" name="title" value="${title}" class="form-control" />
        </div>
        <div class="form-group">
            <label>색: </label>
            <select name="color" class="form-control">
                <option value="1" ${color == 1 ? "selected" : ""}>빨강</option>
                <option value="2" ${color == 2 ? "selected" : ""}>노랑</option>
                <option value="3" ${color == 3  ? "selected" : ""}>파랑</option>
            </select>
        </div>
        <ht />
        <button type="submit" class="btn btn-primary">submit</button>
    </form>

</div>

</body>
</html>
