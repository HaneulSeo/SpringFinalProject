<%--
  Created by IntelliJ IDEA.
  User: 서하늘
  Date: 2022-11-25
  Time: 오후 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
    <script>
        function delete_ok(id) {
            var a = confirm("Are you sure? ");
            if(a) location.href='deleteok/' + id;
        }
        function logout_ok() {
            var b = confirm("Are you sure? ");
            if(b) location.href='../login/logout/';
        }
    </script>
    <style>
        table {
            border: 1px solid; border-collapse: collapse; text-align: center;
        }
        td, th { border: 1px solid; padding: 10px 5px;}

        th {background-color: bisque;}
    </style>
</head>
<body>
<h1>PRS BOARD</h1> <a href = "javascript:logout_ok()">logout</a>
<br>
<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>Identity</th>
        <th>Group</th>
        <th>User Name</th>
        <th>Regdate</th>
        <th>Content detail</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.identity}</td>
            <td>${u.groupin}</td>
            <td>${u.name}</td>
            <td>${u.regdate}</td>
            <td><a href = "content/${u.seq}">Content</a></td>
            <td><a href="editform/${u.seq}">Edit</a></td>
            <td><a href="javascript:delete_ok(${u.seq})">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><a href="add">Add New Page</a>
</body>
</html>
