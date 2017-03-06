<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
<title>springTest</title>
<style>
    div.canvas {  position:relative; border: 1px solid gray; }
    div.line { background-color: black; opacity: 0.1; }
    div.lecture { text-align: center; padding-top:5px; border: 1px solid #ddd; }
    table.top_title td { text-align: center; background-color: #eee; border: 1px solid #ddd; }
</style>
</head>
<c:set var="CANVAS_WIDTH" value="${ 800 }" />
<c:set var="CANVAS_HEIGHT" value="${ 1000 }" />
<c:set var="CELL_WIDTH" value="${ CANVAS_WIDTH / 5 }" />
<c:set var="MINUTE_HEIGHT" value="${ CANVAS_HEIGHT / 540 }" />
<c:set var="LEFT_TITLE_WIDTH" value="${ 40 }" />

<div class="container">
    <h1>시간표</h1>

    <div id="timetable" style="padding-left: ${ LEFT_TITLE_WIDTH }px;">
        <table class="top_title" style="width: ${CANVAS_WIDTH}px; height: 30px;">
            <tr>
                <td>월</td>
                <td>화</td>
                <td>수</td>
                <td>목</td>
                <td>금</td>
            </tr>
        </table>
        <div class="canvas" style="height: ${ CANVAS_HEIGHT }px; width: ${CANVAS_WIDTH}px;">

            <c:forEach var="lecture" items="${ list }">
                <div style="position:absolute;
                            left: ${ lecture.week * CELL_WIDTH }px;
                            top: ${ lecture.start * MINUTE_HEIGHT }px;
                            width: ${ CELL_WIDTH }px;
                            height: ${ lecture.total * MINUTE_HEIGHT }px;
                            background-color: ${ lecture.color };" class="lecture">
                     <div>${ lecture.title }</div>
                     <div>${ lecture.timeLabel }</div>
                     <div>${ lecture.location }</div>
                </div>
            </c:forEach>

            <c:forEach begin="0" end="4" varStatus="i">
                <div style="position:absolute;
                            left: ${ i.index * CELL_WIDTH }px;
                            top: 0px;
                            width: 1px;
                            height: ${ CANVAS_HEIGHT }px;" class="line">
                </div>
            </c:forEach>

            <c:forEach begin="0" end="8" varStatus="i">
                <div style="position:absolute;
                            left: 0px;
                            top: ${ i.index * 60 * MINUTE_HEIGHT }px;
                            width: ${ CANVAS_WIDTH }px;
                            height: 1px;" class="line">
                </div>
            </c:forEach>

            <c:forEach begin="0" end="8" varStatus="i">
                <span style="position:absolute;
                            left: ${ -1 * LEFT_TITLE_WIDTH }px;
                            top: ${ i.index * 60 * MINUTE_HEIGHT - 5 }px;">
                     ${ i.index < 4 ? i.index + 9 : i.index - 3 } 시
                </span>
            </c:forEach>

        </div>
    </div>
</div>

</body>
</html>
