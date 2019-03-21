<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-14
  Time: 오전 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
</head>
<body>
<%
    Date today = new Date();

    SimpleDateFormat f1 = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss");
    String s1 = f1.format(today);

    SimpleDateFormat f2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String s2 = f2.format(today);

    SimpleDateFormat f3 = new SimpleDateFormat("yy-MM-dd HH:mm:ss");
    String s3 = f3.format(today);
%>
<h1>날짜 출력</h1>
<div>
    <%= s1%>
</div>
<div>
    <%= s2 %>
</div>
<div>
    <%= s3 %>
</div>
</body>
</html>
