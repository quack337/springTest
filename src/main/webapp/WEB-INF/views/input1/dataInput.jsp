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
        id: <input type="text" name="id" value="${ data.id }" /> <br />
        score: <input type="text" name="score" value="${ data.score }" /> <br />
        enabled: <input type="checkbox" name="enabled" ${ data.enabled ? "checked" : "" } /> <br />
            
        <br />
        <input type="submit" class="btn" value="Save" />
    </form>
    
    <div>${ data.id }</div>
    <div>${ data.score }</div>
    <div>${ data.enabled }</div>
    
</div>

</body>
</html>
