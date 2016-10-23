<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% 
    Map<String, Integer> itemMap = (Map<String, Integer>) session.getAttribute("itemMap");
    if (itemMap == null) {
        itemMap = new HashMap<String, Integer>();
        itemMap.put("book", 0);
        itemMap.put("hamburger", 0);
    }
    session.setAttribute("itemMap", itemMap);
    long creationDate = session.getCreationTime();
    SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd HH:mm:SS");
    Date date= new Date(creationDate);
    Date currentDate = new Date();
    String creationDateStr = sdf.format(date);
    String currentDateStr = sdf.format(currentDate);
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>session demo</title>
</head>
<body>
    book :<%=itemMap.get("book") %> </br>
    hamburger :<%=itemMap.get("hamburger") %> </br>
    session 创建时间 :<%=creationDateStr %> </br>
         当前时间 :<%=currentDateStr %> </br>
    <p>
        <a href="../index.jsp"> index page </a>
    </p>
</body>
</html>