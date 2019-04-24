<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-04-22
  Time: 오전 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link href="common.css" rel="stylesheet">
    <script src="common.js"></script>
    <title>Title</title>
</head>
<body>
<h1>안녕하세요</h1>
<h3>${message}</h3>
<h3><fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" /></h3>
</body>
</html>
