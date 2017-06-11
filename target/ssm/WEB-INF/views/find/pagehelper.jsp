<%--
  Created by IntelliJ IDEA.
  User: King
  Date: 2017/6/11
  Time: 23:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>Title</title>
    <link type="text/css" href="/resources/css/bootstrap.min.css">
</head>
<body>
    <div class="message">
        共<i class="blue">${pagehelper.total}</i>条记录,
        当前显示第&nbsp;<i class="blue">${pagehelper.pageNum}/${pagehelper.pages}</i>&nbsp;页
    </div>
    <div style="text-align: center">
        <ul class="pagination">
            <c:if test="${!pagehelper.isFirstPage}">
                <li><a href="find?pageNum=${pagehelper.firstPage}">首页</a></li>
                <li><a href="find?pageNum=${pagehelper.prePage}">上一页</a></li>
            </c:if>
            <c:forEach items="${pagehelper.navigatepageNums}" var="navigatepageNum">

                <c:if test="${navigatepageNum==pagehelper.pageNum}">
                    <li class="active"><a href="find?pageNum=${navigatepageNum}">${navigatepageNum}</a></li>
                </c:if>
                <c:if test="${navigatepageNum!=pagehelper.pageNum}">
                    <li><a href="find?pageNum=${navigatepageNum}">${navigatepageNum}</a></li>
                </c:if>
            </c:forEach>
            <c:if test="${!pagehelper.isLastPage}">
                <li><a href="find?pageNum=${pagehelper.nextPage}">下一页</a></li>
                <li><a href="find?pageNum=${pagehelper.lastPage}">最后一页</a></li>
            </c:if>
        </ul>
    </div>
</body>
</html>
