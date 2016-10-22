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
    param01's value is ${param01}.
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
          <li>1 String getCharacterEncoding() 返回响应用的是何种字符编码 </li>
          <li>2 ServletOutputStream getOutputStream() 返回响应的一个二进制输出流</li>
          <li>3 PrintWriter getWriter() 返回可以向客户端输出字符的一个对象</li>
          <li>4 void setContentLength(int len) 设置响应头长度</li>
          <li>5 void setContentType(String type) 设置响应的MIME类型</li>
          <li>6 sendRedirect(java.lang.String location) 重新定向客户端的请求</li>
        </ol>
    </div>
    response character encoding is <%out.println(response.getCharacterEncoding());%> 
</body>
</html>