<%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-13
  Time: 오전 11:15
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
    String s1 = "hello";
    String s2 = "world";

    out.println(s1);
    out.println(s2);
    out.println(s1 + s2);
    out.println("s1");
    out.println("s2");
    out.println("s1" + "s2");
    out.println("s1 + s2");
%>
<%= s1 %>
<%= s2 %>
<%= s1 + s2 %>
<%= "s1" %>
<%= "s2" %>
<%= "s1" + "s2" %>
<%= "s1 + s2" %>


</body>
</html>
