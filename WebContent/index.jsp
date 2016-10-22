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

    <br/>
    WEB-INF directory is a private area of the web application, any files under WEB-INF directory cannot be accessed directly
    <br/>
    by specifying the URL like http://somesite/WEB-INF/someresource.html. Web container will not serve the content of this 
    <br/>
    directory. However the content of the WEB-INF directory is accessible by the classes within the application.
    <br/>
         当request.jsp位于项目目录下面，href可以href="request.jsp?param01=param01Value，但是如果放在WEB-INF下面已经其子目录下面，需要通过servlet的
    <br/>request.getRequestDispatcher("/WEB-INF/jsps/builtin9/request.jsp").forward(request, response);     
    <div>
        <a href="request.jsp?param01=param01Value">JSP request demo</a>
    </div>
    <br/>

    <br/>
    <div>
        <a href="${pageContext.request.contextPath}/jspdemo/ServletForRequest?param01=param01Value&param02=张三">JSP request demo</a>
    </div>
    <br/>

    <form action="${pageContext.request.contextPath}//jspdemo/ServletForRequest" method="post">
        param01: <input type="text" name="param01" id="param01" value="param01Value"><br>
        param02: <input type="text" name="param02" id="param02" value="李四"><br>
        <input type="submit" value="jsp built-in request and response demo">
    </form>
    
</body>
</html>