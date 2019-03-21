<%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-11
  Time: 오전 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        table { border-collapse: collapse; }
        td { padding: 5px; border: 1px solid gray; -webkit-text-decoration-style: solid; }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
</head>
<body>
    <table>
        <%
            for(int i=1; i<=9; i++)  {
                out.print("<tr>");
                for(int j=2; j<=9; j++) {
                    out.print("<td>");
                    out.print(j + " X " + i + " = " + (j*i));
                    out.print("</td>");
                }
                out.print("</tr>");
            }
        %>
    </table>
</body>
</html>