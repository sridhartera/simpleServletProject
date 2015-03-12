<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String userName=request.getParameter("name");
if(userName != null){
	session.setAttribute("sessionUserName", userName);
	//application.setAttribute("applicationUserName", userName);
	pageContext.setAttribute("pageContextUserName", userName);
	pageContext.setAttribute("applicationUserName", userName, PageContext.APPLICATION_SCOPE);
}
%>
username in the request object: <%= userName %>
<br>
username in session object: <%=session.getAttribute("sessionUserName") %>
<br>
username in application context object: <%=application.getAttribute("applicationUserName") %>
<br>
username in PageContext object: <%=pageContext.getAttribute("pageContextUserName") %>
</body>
</html>