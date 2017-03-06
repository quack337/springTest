<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
<h2>Hello World!</h2>

<a href="/springTest/timeTable.do">timeTable.do</a> <br />
<a href="/springTest/input1/dataInput.do">dataInput.do</a> <br />
<a href="/springTest/input1/dataListInput.do">dataListInput.do</a> <br />
<a href="/springTest/err/index.do">err/index.do</a> <br />

[${ data.id }] <br />
[${ msg }] <br />
<c:set var="data2" value="${ data }" />
[${ data2 }] <br />
[${ data2.id2 }] <br />
</body>

  
</html>
