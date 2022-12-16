<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Content</title>
    <style>
        th, td {
            padding: 15px;
            text-align: left;
            border: 1px solid;
            border-collapse: collapse;
        }
        th {
            background-color: bisque;
            font-weight: bold;
        }
        table {
            border-collapse: collapse;
        }
    </style>
</head>
<body>
<h1>Content</h1>
    <table id="content">
        <tr><th>Identity:</th><td>${u.identity}</td></tr>
        <tr><th>Group:</th><td>${u.groupin}</td></tr>
        <tr><th>User Name:</th><td>${u.name}</td></tr>
        <tr><th>Bible:</th><td>${u.bible}</td></tr>
        <tr><th>Content:</th><td>${u.content}</td></tr>
        <tr><th>Prayer:</th><td>${u.prayer}</td></tr>
    </table>
<Button type="button" onclick="history.back()">Back to list</Button>
</body>
</html>