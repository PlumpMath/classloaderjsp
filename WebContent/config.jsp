<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>built-in config object demo</title>
   <%
        String name = request.getParameter("name");
        String localAddr = request.getLocalAddr();
        pageContext.setAttribute("name", name);
        //out.println 可以直接将内容输出到页面
        //out.println("param01 value is " + param01 + ",localAddr:" + localAddr);
   %>
</head>
<body>
    <br/>
    </br>
    param01's value is ${name}.  Value:<%=name%>
    <br/>
    </br>

    </br>
    </br>
    </br>config对象主要有以下功能，这里只演示一下getServletName()
    <div>
        <ul>
          <li>1 servletName is <%=config.getServletName() %> </li>
          <li>2 initial parameter value of name is <%=config.getInitParameter("name") %>.   我们可以在web.xml中配置init-param, 也可以通过import javax.servlet.annotation.WebInitParam设置</li>
        </ul>
    </div>
    
    /br>
    </br>application对象主要有以下功能，这里只演示一下getAttribute功能，如果你先去request页面，然后到这里那么app01就有值，负责就没有，因为我们在request.jsp中调用了application.setAttribute函数
    <div>
        <ul>
          <li>1 Attribute app01 in application is <%=application.getAttribute("app01") %> </li>
        </ul>
    </div>

</body>
</html>