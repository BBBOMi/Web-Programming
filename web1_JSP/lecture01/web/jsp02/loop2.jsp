<%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-14
  Time: 오후 12:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
        table {
            border-collapse: collapse;
        }
        td {
            padding: 5px; border: solid 1px gray;
        }
    </style>
    <title>Title</title>
</head>
<body>

<table>
    <tr>
        <% for (int i=0; i<=10; i++) { %>
            <td>i</td>
        <% } %>
    </tr>
</table>
</body>
</html>
