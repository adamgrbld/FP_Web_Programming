<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
</head>
<body>

<%@page import="com.javatpoint.dao.SubjectDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<a href="index.jsp">Home</a><br/>

<h1>Subject Course List</h1>

<%
List<Subject> list=SubjectDao.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" width="90%">
<tr><th>Id</th><th>Name</th><th>Lecturer</th><th>Semester</th><th>Description</th><th>Edit</th><th>Delete</th></tr>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getLecturer()}</td><td>${u.getSemester()}</td><td>${u.getDescription()}</td><td><a href="editformsubject.jsp?id=${u.getId()}">Edit</a></td><td><a href="deletesubject.jsp?id=${u.getId()}">Delete</a></td></tr>
</c:forEach>
</table>
<br/><a href="addsubjectform.jsp">Add New Subject Course</a>

</body>
</html>