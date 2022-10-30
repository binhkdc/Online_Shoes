<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/layout/head.jsp"%>
<%@page pageEncoding="UTF-8" %>

<table>
    </tr>
    <td>no</td>
    <td>tengiay</td>
    <td>gia</td>
    <td></td>
    </tr>
</table>

<c:set var="no" value="1"></c:set>
<c:forEach var="CartItem" items="${cartItem}">
        <form action="/update">
            <tr>
                <td>${no}</td>
                <td>${CartItem.tengiay}</td>
                <td>${CartItem.soluong}</td>
                <td>${CartItem.gia}</td>
            </tr>
        </form>

    <c:set var="no" value="${no +1}"></c:set>
</c:forEach>
<%@include file="/WEB-INF/views/layout/foot.jsp"%>
