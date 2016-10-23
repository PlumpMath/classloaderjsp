<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>built-in request object demo</title>
   <%
        String param01 = request.getParameter("param01");
        String localAddr = request.getLocalAddr();
        pageContext.setAttribute("param01", param01);
        //out.println 可以直接将内容输出到页面
        //out.println("param01 value is " + param01 + ",localAddr:" + localAddr);
   %>
</head>
<body>
    <br/>
    </br>
    param01's value is ${param01}.  Value:<%=param01%>
    <br/>
    </br>
    PathInfo is <%=request.getPathInfo()%>
    </br>
    </br>
    SeverName is ServerName <%out.println(request.getServerName());%> 
    </br>
    </br>
    param02's value is <%out.println(request.getParameter("param02"));%> 
    </br>
    </br>
    You can get parameters value by request.getParameter("parameterName"), then show it by out.println(request.getParameter("param01"));
    </br>
    </br>
    Application Name is <%out.println(request.getContextPath());%> 
    </br>
    </br>
    Server port is <%out.println(request.getServerPort());%> 
    
    </br>
    </br>
         最常用的是函数getAttribute  and  getParameter, getContextPath();

    </br>
    </br>
    </br>response对象主要有以下功能，这里只演示一下getCharacterEncoding()
    <div>
        <ol>
          <li> String getCharacterEncoding() 返回响应用的是何种字符编码 </li>
          <li> ServletOutputStream getOutputStream() 返回响应的一个二进制输出流</li>
          <li> PrintWriter getWriter() 返回可以向客户端输出字符的一个对象</li>
          <li> void setContentLength(int len) 设置响应头长度</li>
          <li> void setContentType(String type) 设置响应的MIME类型</li>
          <li> sendRedirect(java.lang.String location) 重新定向客户端的请求</li>
        </ol>
    </div>
    response character encoding is <%out.println(response.getCharacterEncoding());%> 
    
    
    </br>
    </br>
    </br>config对象主要有以下功能，这里只演示一下getServletName()
    <div>
        <ul>
          <li>1 servletName is <%=config.getServletName() %> </li>
          <li>2 initial parameter value of param01 is <%=config.getInitParameter("param01") %>  我们可以在web.xml中配置init-param</li>
        </ul>
    </div>
    
    </br>
    </br>
    </br>application对象主要有以下功能，这里只演示一下getAttribute
    <div>
        <ul>
          <li>1 Attribute app01 in application is <%=application.getAttribute("app01") %>. 如果你是第一次到这个页面那么app01值为null，如果你刷新一下就可以了 </li>
          <li>2 ContextPath is <%=application.getContextPath() %> </li>
          <li>3 MajorVersion is <%=application.getMajorVersion() %> </li>
          <li>4 MinorVersion is <%=application.getMinorVersion() %> </li>
          <li>5 ServerInfo is <%=application.getServerInfo() %> </li>
        </ul>
    </div>
    <%application.setAttribute("app01", "app01Value"); %>
</body>
</html>