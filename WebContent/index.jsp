<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tomcat ClassLoader demo welcome page</title>
</head>
<body>
    Hello World!
    <br/>
    This is a welcome page
    
    <br/>
    <div>
        <a href="${pageContext.request.contextPath}/servlet/ClassLoaderServletDemo">&nbsp;ClassLoader information &nbsp;</a>
    </div>
    <br/>
    <form action="${pageContext.request.contextPath}/servlet/ClassLoaderServletDemo" method="get">
        <input type="submit" value="ClassLoader information">
    </form>
</body>
</html>