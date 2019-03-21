<%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-14
  Time: 오후 12:04
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
    <tr>
        <%
            for (int i=1; i <= 10; ++i) {
                out.print("    ");
                out.print("<td>");
                out.print(i);
                out.println("</td>");
            }
        %>
    </tr>
</table>
</body>
</html>
