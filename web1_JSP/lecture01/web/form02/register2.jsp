<%--
  Created by IntelliJ IDEA.
  User: BOMI
  Date: 2019-03-26
  Time: 오후 5:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="User" %>
<%
    String userId = "";
    String name = "";
    String password1;
    String password2;
    String email = "";
    int department = 0;
    String errorMessage = null;

    request.setCharacterEncoding("UTF-8");

    if(request.getMethod().equals("POST")) {
        userId = request.getParameter("userId");
        name = request.getParameter("name");
        password1 = request.getParameter("password1");
        password2 = request.getParameter("password2");
        email = request.getParameter("email");
        department = request.getParameter("department") != null ? Integer.parseInt(request.getParameter("department")) : 0;

        if(userId == null || userId.length() == 0) {
            errorMessage = "사용자 아이디를 입력하세요";
        } else if(name == null || name.length() == 0) {
            errorMessage = "이름을 입력하세요";
        } else if(password1 == null || password1.length() == 0) {
            errorMessage = "비밀번호1를 입력하세요";
        } else if(password2 == null || password2.length() == 0) {
            errorMessage = "비밀번호2를 입력하세요";
        } else if(!password2.equals(password1)) {
            errorMessage = "비밀번호 불일치";
        } else if(email == null || email.length() == 0) {
            errorMessage = "이메일 주소를 입력하세요";
        } else {
            User user = new User(userId, password1, name, email, department);
            session.setAttribute("user", user);
            response.sendRedirect("register2_success.jsp");
            return;
        }
    }
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
        body { font-family: 굴림체; }
        input.form-control, select.form-control { width: 200px; }
    </style>
    <title>Title</title>
</head>
<body>
<div class="container">
    <form method="POST">
        <div class="form-group">
            <label>사용자 아이디</label>
            <input type="text" class="form-control" name="userId" value="<%= userId %>" />
        </div>
        <div class="form-group">
            <label>이름</label>
            <input type="text" class="form-control" name="name" value="<%= name %>" />
        </div>
        <div class="form-group">
            <label>비밀번호1</label>
            <input type="password" class="form-control" name="password1" />
        </div>
        <div class="form-group">
            <label>비밀번호2</label>
            <input type="password" class="form-control" name="password2" />
        </div>
        <div class="form-group">
            <label>이메일</label>
            <input type="text" class="form-control" name="email" value="<%= email %>" />
        </div>
        <div class="form-group">
            <label>학과</label>
            <select class="form-control" name="department" >
                <option value="1" <%= department == 1 ? "selected" : "" %>>소프트웨어공학과</option>
                <option value="2" <%= department == 2 ? "selected" : "" %>>컴퓨터공학과</option>
                <option value="3" <%= department == 3 ? "selected" : "" %>>정보통신학과</option>
                <option value="4" <%= department == 4 ? "selected" : "" %>>글로컬IT공학과</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">
            <i class="glyphicon glyphicon-ok"></i> 회원가입
        </button>

    </form>
    <hr />

    <% if(errorMessage != null) {%>
        <div class="alert alert-danger">
            로그인 실패 : <%= errorMessage %>
        </div>
    <% } %>
</div>

</body>
</html>
