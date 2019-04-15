<%@ page import="lecture02.jdbc1.DepartmentDAO" %>
<%@ page import="lecture02.jdbc1.Department" %>
<%@ page import="lecture02.exam.User" %>
<%@ page import="java.util.List" %>
<%@ page import="lecture02.exam.UserDAO2" %>
<%@ page import="lecture02.exam.UserDAO" %><%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-04-15
  Time: 오후 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String name = request.getParameter("name");
    if(name == null) name = "";

    String d = request.getParameter("departmentId");
    int departmentId = (d == null) ? 0 : Integer.parseInt(d);

    List<User> list;
    if(!name.equals("")) list = UserDAO2.findByName(name);
    else if(departmentId != 0) list = UserDAO2.findByDepartmentId(departmentId);
    else list = UserDAO.findAll();
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        thead th { background-color: #eee; }
        table.table { width: 700px; margin-top: 10px; }
    </style>
    <title>Title</title>
</head>
<body>
<div class="container">
    <h1>사용자목록</h1>
    <form class="form-inline">
        <div class="form-group">
            <label>이름</label>
            <input type="text" name="name" class="form-control" value="<%=name%>" placeholder="검색조건" />

            <label>학과</label>
            <select name="departmentId" class="form-control">
                <option value="0" <%=departmentId == 0 ? "selected" : "" %>>전체</option>
                    <% for(Department department : DepartmentDAO.findAll()) { %>
                <option value="<%=department.getId() %>" <%= departmentId == department.getId() ? "selected " : "" %>>
                    <%=department.getDepartmentName()%>
                </option>
                    <% } %>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">조회</button>
    </form>
</div>

<table class="table table-bordered table-condensed">
    <thead>
    <tr>
        <th>아이디</th>
        <th>이름</th>
        <th>이메일</th>
        <th>학과</th>
        <th>사용자유형</th>
    </tr>
    </thead>
    <tbody>
    <% for(User u : list) { %>
    <tr>
        <th><%=u.getUserid()%></th>
        <th><%=u.getName()%></th>
        <th><%=u.getEmail()%></th>
        <th><%=u.getDepartmentName()%></th>
        <th><%=u.getUserType()%></th>
    </tr>
    <% } %>
    </tbody>
</table>
</body>
</html>
