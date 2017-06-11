<%--
  Created by IntelliJ IDEA.
  User: King
  Date: 2017/6/11
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>查看人员</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div id="edit_area_div">
                <table class="table" id="personList_table">
                    <thead>
                        <tr>
                            <td>id</td>
                            <td>UserName</td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${pagehelper.list}" var="people" varStatus="i">
                            <tr>
                                <td>${people.id}</td>
                                <td>${people.userName}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div id="page_div">
                    <%@include file="pagehelper.jsp"%>
                </div>
                
            </div>
        </div>
    </div>
</div>


<script src="/resources/js/jquery.min.js"></script>
<script  src="/resources/js/bootstrap.min.js"></script>
</body>
</html>
