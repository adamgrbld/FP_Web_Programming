<%@page import="com.javatpoint.dao.SubjectDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Subject"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=SubjectDao.save(u);
if(i>0){
response.sendRedirect("addsubject-success.jsp");
}else{
response.sendRedirect("addsubject-error.jsp");
}
%>
