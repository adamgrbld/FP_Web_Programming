<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
<%@page import="com.javatpoint.dao.SubjectDao,com.javatpoint.bean.Subject"%>

<%
String id=request.getParameter("id");
Subject u=SubjectDao.getRecordById(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="editsubject.jsp" method="post">
<input type="hidden" name="id" value="<%=u.getId() %>"/>
<table>
<tr><td>Name:</td><td><input type="text" name="name" value="<%= u.getName()%>"/></td></tr>
<tr><td>Lecturer:</td><td><input type="text" name="lecturer" value="<%= u.getLecturer()%>"/></td></tr>
<tr><td>Semester:</td><td><input type="number" name="semester" value="<%= u.getSemester()%>"/></td></tr>
<tr><td>Description:</td><td><input type="text" name="description" value="<%= u.getDescription()%>"/></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Subject"/></td></tr>
</table>
</form>

</body>
</html>