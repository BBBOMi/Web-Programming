<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-14
  Time: 오후 12:51
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
    Date now = new Date();
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(now);
    int second = calendar.get(Calendar.SECOND);
%>

지금은  <%= second %> 초 입니다.

<% if(second%2 == 0) return; %>
<%= second %>는 홀수 입니다.
</body>
</html>
