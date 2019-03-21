<%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-14
  Time: 오후 1:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
        table { border-collapse: collapse; border: 1px solid;}
        td { padding: 5px; border-left: 1px solid; }
    </style>
    <title>Title</title>
</head>
<body>
<table>
    <% for(int i=1; i<=9; i++) { %>
    <tr>
        <% for(int j=2; j<=9; j++) { %>
        <td><%= j %> x <%= i %> = <%= i*j %></td>
        <% } %>
    </tr>
    <% } %>
</table>
</body>
</html>
