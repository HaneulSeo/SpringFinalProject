<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Page</title>
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
<h1>Edit Form</h1>

<form:form modelAttribute="u" method="POST" action="../editok">
<form:hidden path="seq"/>
<table id="edit">
	<tr><th>Bible:</th><td><form:input path="bible" /></td></tr>
<tr><th>Content:</th><td><form:textarea cols="50" rows="5" path="content" /></td></tr>
	<tr><th>Prayer:</th><td><form:textarea cols="30" rows="5" path="prayer" /></td></tr>
</table>
	<input type="submit" value="Edit"/>
	<input type="button" value="cancel" onclick="history.back()">
</form:form>

</body>
</html>