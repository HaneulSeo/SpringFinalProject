<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<h1>Add New Page</h1>
<form action="addok" method="post" id="form1">
<table id = "edit">
    <tr><th>Identity:</th><td>
        <input type="radio" name="identity" value="Student" checked><label>Student</label>
        <input type="radio" name="identity" value="Professor"><label>Professor</label>
        <input type="radio" name="identity" value="Employee"><label>Employee</label>
    </td></tr>
    <tr>
        <th>Group:</th><td>
        <select name="groupin">
            <option name="groupin" value="">--Choose your group--</option>
            <option name="groupin" value="Open PRS">Open PRS</option>
            <option name="groupin" value="Professor PRS">Professor PRS</option>
            <option name="groupin" value="Small Group PRS">Small Group PRS</option>
            <option name="groupin" value="Team PRS">Team PRS</option>
            <option name="groupin" value="Dawn Worship PRS">Dawn Worship PRS</option>
            <option name="groupin" value="Class PRS">Class PRS</option>
        </select>
    </td>
    </tr>
<tr><th>User Name:</th><td><input type="text" name="name"/></td></tr>
    <tr><th>Bible:</th><td><input type="text" name="bible"/></td></tr>
<tr><th>Content:</th><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    <tr><th>Prayer:</th><td><textarea cols="30" rows="5" name="prayer"></textarea></td></tr>
</table>
    <button type ="button" onclick="location.href='list'">Back to List</button>
    <input type = "submit" value="Submit">
</form>

</body>
</html>