<%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-14
  Time: 오후 1:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
        table { border-collapse: collapse; }
        td { padding: 5px; border: 1px solid; -webkit-text-decoration-style: solid; }
    </style>
    <title>Title</title>
</head>
<body>
<table>
    <% for(int i=1; i<4; i+=2) { %>
    <tr>
        <% for(int k=2*i; k<10; k++) { %>
        <td>
        <% for(int j=1; j<10; j++) { %>
            <div><%=k%> x <%=j%> = <%=k*j%></div>
        <% } %>
        </td>
        <% } %>
    </tr>
    <% } %>







    <%--&lt;%&ndash; <% for(int k=1; k<3; k++) { %>
     <tr>
             <% for(int i=2; i<=9; i++) { %>
                 <td>
                     <% for(int j=1; j<=9; j++) { %>
                     <div><%=i%> x <%=j%> = <%=i*j%></div>
                     <% } %>
                 </td>
             <% } %>
     </tr>&ndash;%&gt;
     <% } %>--%>
</table>
</body>
</html>
