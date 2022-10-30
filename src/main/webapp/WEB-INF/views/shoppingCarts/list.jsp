<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<!--==================== CART ====================-->
<div class="cart" id="cart">
    <i class='bx bx-x cart__close' id="cart-close"></i>

    <h2 class="cart__title-center">My Cart</h2>

    <div class="cart__container">
        <c:set var="no" value="1"></c:set>
        <c:forEach var="item" items="${CartItem}">

            <article class="cart__card">
                <div class="cart__box">
                    <img src="/assets/frontend/img/featured11.png" alt="" class="cart__img">
                </div>

                <div class="cart__details">${no}
                    <h3 class="cart__title">${item.tengiay}</h3>
                    <span class="cart__price">$${item.gia}</span>

                    <div class="cart__amount">
                        <div class="cart__amount-content">
                                <span class="cart__amount-box">
                                    <i class='bx bx-minus'></i>
                                </span>

                            <span class="cart__amount-number"></span>

                            <span class="cart__amount-box">
                                    <i class='bx bx-plus'></i>
                                </span>
                        </div>

                        <i class='bx bx-trash-alt cart__amount-trash'></i>
                    </div>
                </div>
            </article>
            <c:set var="no" value="${no +1}"></c:set>
        </c:forEach>

    </div>

    <div class="cart__prices">
        <span class="cart__prices-item">${Soluong} items</span>
        <span class="cart__prices-total">$${Gia}</span>
    </div>
</div>
<c:set var="no" value="1"></c:set>
<c:forEach var="item" items="${CartItem}">


        <tr>
            <td>${no}</td>
            <td>${item.tengiay}</td>
            <td>    <input type="hidden" value="${item.magiay}" name="magiay"/>
                <input type="number" value="${item.soluong}" name="soluong" onblur="this.form.submit()"/>
            </td>
            <td>${item.gia}</td>
            <td><a href="/shoppingCart/remove/${item.magiay}">xoas</a></td>
        </tr>


    <c:set var="no" value="${no +1}"></c:set>
</c:forEach>

