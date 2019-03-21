<%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-13
  Time: 오전 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
      table { border-collapse: collapse; }
      td { padding: 5px; border: 1px solid gray;}
    </style>
    <title>Title</title>
</head>
<body>
    <%
        String s1 = "hello world";
        String s2 = " JSP!";
    %>

<table>
    <tr>
        <td><% out.print(s1); %></td>
        <td><%= s1%></td>
    </tr>
    <tr>
        <td><% out.print(s1.toUpperCase()); %></td>
        <td><%= s1.toUpperCase() %></td>
    </tr>
    <tr>
        <td><% out.print(Math.PI); %></td>
        <td><%= Math.PI %></td>
    </tr>
    <tr>
        <td><% out.print(s1 + s2); %></td>
        <td><%= s1 + s2 %></td>
    </tr>
</table>
</body>
</html>
