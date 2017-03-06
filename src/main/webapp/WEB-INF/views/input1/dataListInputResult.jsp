<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
<title>springTest</title>
</head>
<div class="container">
    <table class="table table-bordered">
        <tr>            
            <c:forEach var="id" items="${ dataList.id }">
                <td>${ id }</td>
            </c:forEach>                
        </tr>
        <tr>            
            <c:forEach var="score" items="${ dataList.score }">
                <td>${ score }</td>
            </c:forEach>
        </tr>            
        <tr>            
            <c:forEach var="enabled" items="${ dataList.enabled }">
                <td>${ enabled }</td>
            </c:forEach>
        </tr>            
    </table>
</div>

</body>
</html>
