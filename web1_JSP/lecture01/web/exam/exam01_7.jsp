<%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-14
  Time: 오후 12:06
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
<table border=1>
    <% for (int i=0; i <= 3; ++i) {
        out.println(" <tr>");
        for (int j=1; j <= 4; ++j) {
            out.println(" <td>" + (i * 4 + j) + "</td>");
        }
        out.println(" </tr>");
    }
    %>
</table>
</body>
</html>
