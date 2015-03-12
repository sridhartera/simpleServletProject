<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>testing jsp</h3>
<%!
public int add(int a, int b){
	return a+b;
}
%>

<%
int i=1;
int j=2;
int k;
k=i+j;
//out.println("value of k: " + k);
%>
The value of k: <%= k %>!!

<%
k = add(1234, 2344);
%>
<br />
New values of k from add: <%= k %>


<%
 for (i=0; i<5; i++){
%>
<br> value of i : <%= i %>
<% } %>
</body>
</html>