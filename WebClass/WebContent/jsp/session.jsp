
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>session</title>
</head>
<body>
<%
    Integer cnt = (Integer) session.getAttribute("cnt");
    if(cnt == null)
    {
        out.println("최초 호출");
        cnt = 0;
    }

    session.setAttribute("cnt", ++cnt);
%>
<h1><%= cnt%></h1>
<br>
<h1><%= request.getHeader("Cookie") %></h1>
</body>
</html>