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
    <form method="post">
    
        <c:forEach var="data" items="${ dataList }" varStatus="i">
        ${ i.index  }
            <input type="text" name="dataList[${i.index}].id" value="${ data.id }" />
            <input type="text" name="dataList[${i.index}].score" value="${ data.score }" />
            <input type="checkbox" name="dataList[${i.index}].enabled" ${ data.enabled ? "checked" : "" } />
            <br />
        </c:forEach>
        
        <input type="submit" class="btn" value="Save" />
    </form>
</div>

</body>
</html>
