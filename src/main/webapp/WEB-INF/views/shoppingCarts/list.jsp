<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!--==================== CART ====================-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--=============== FAVICON ===============-->
    <link rel="shortcut icon" href="/assets/frontend/img/favicon01.png" type="image/x-icon">

    <!--=============== BOXICONS ===============-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

    <!--=============== SWIPER CSS ===============-->
    <link rel="stylesheet" href="/assets/frontend/css/swiper-bundle.min.css">

    <!--=============== CSS ===============-->
    <link rel="stylesheet" href="/assets/frontend/css/styles.css">

    <title>Nike website</title>
</head>

    <i class='bx bx-x cart__close' id="cart-close"></i>

    <h2 class="cart__title-center">My Cart</h2>

    <div class="cart__container scrollspy-example">

        <c:forEach var="item" items="${CartItem}">

            <form action="/shoppingCart/update" method="post">
                <input type="hidden" value="${item.magiay}" name="magiay"/>
                <article class="cart__card">
                    <div class="cart__box">
                        <img src="/assets/frontend/img/${hinhanh}" alt="" class="cart__img">
                    </div>

                    <div class="cart__details">
                        <h3 class="cart__title">${item.tengiay}</h3>
                        <span class="cart__price">$${item.gia}</span>

                        <div class="cart__amount">
                            <div class="cart__amount-content ">
                                <div class="custom-quantity-input">
                                    <a href="#" class="quantity-btn quantity-input-down"><i class='bx bx-minus'></i></a>
                                    <input type="text"  onblur="this.form.submit()"  class="" name="soluong" value="${item.soluong}">
                                    <a href="#" class="quantity-btn quantity-input-up"><i class='bx bx-plus'></i></a>
                                </div>
                            </div>
                            <a href="/shoppingCart/remove/${item.magiay}"><i
                                    class='bx bx-trash-alt cart__amount-trash'></i></a>

                        </div>
                    </div>
                </article>
            </form>
        </c:forEach>

    </div>

    <div class="cart__prices">
        <span class="cart__prices-item">${Soluong} items</span>
        <span class="cart__prices-total">$${Gia}</span>
    </div>
    <sec:authorize access="isAuthenticated()">
        <c:set var="userid">
            <sec:authentication property="principal.id"></sec:authentication>
        </c:set>
        <form action="/checkOut" method="post">
            <input type="hidden" value="${userid}" name="userid">
            <input type="submit" value="checkOut">
        </form>
    </sec:authorize>

<a href="/#products">home</a>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
    jQuery(function ($) {

        $(".quantity-btn").on("click", function (e) {
            e.preventDefault();                               // Don't scroll top.
            var $inp = $(this).closest("div").find("input"),  // Get input
                isUp = $(this).is(".quantity-input-up"),      // Is up clicked? (Boolean)
                currVal = parseInt($inp.val(), 10);           // Get curr val
            $inp.val(Math.max(0, currVal += isUp ? 1 : -1));  // Assign new val
        });

        // Other DOM ready code here

    });
</script>
<footer class="footer section">
    <div class="footer__container container grid">
        <div class="footer__content">
            <h3 class="footer__title">Our information</h3>

            <ul class="footer__list">
                <li>Mai dich- Cau Giay -Ha Noi </li>
                <li>La Huong-Le Dang Binh   </li>
                <li>123-456-789</li>
            </ul>
        </div>
        <div class="footer__content">
            <h3 class="footer__title">About Us</h3>

            <ul class="footer__links">
                <li>
                    <a href="#" class="footer__link">Support Center</a>
                </li>
                <li>
                    <a href="#" class="footer__link">Customer Support</a>
                </li>
                <li>
                    <a href="#" class="footer__link">About Us</a>
                </li>
                <li>
                    <a href="#" class="footer__link">Copy Right</a>
                </li>
            </ul>
        </div>

        <div class="footer__content">
            <h3 class="footer__title">Product</h3>

            <ul class="footer__links">
                <li>
                    <a href="#" class="footer__link">Road bikes</a>
                </li>
                <li>
                    <a href="#" class="footer__link">Mountain bikes</a>
                </li>
                <li>
                    <a href="#" class="footer__link">Electric</a>
                </li>
                <li>
                    <a href="#" class="footer__link">Accesories</a>
                </li>
            </ul>
        </div>

        <div class="footer__content">
            <h3 class="footer__title">Social</h3>

            <ul class="footer__social">
                <a href="https://www.facebook.com/" target="_blank" class="footer__social-link">
                    <i class='bx bxl-facebook'></i>
                </a>

                <a href="https://twitter.com/" target="_blank" class="footer__social-link">
                    <i class='bx bxl-twitter' ></i>
                </a>

                <a href="https://www.instagram.com/" target="_blank" class="footer__social-link">
                    <i class='bx bxl-instagram' ></i>
                </a>
            </ul>
        </div>
    </div>

    <span class="footer__copy">&#169;  All rigths reserved</span>
</footer>

<!--=============== SCROLL UP ===============-->
<a href="#" class="scrollup" id="scroll-up">
    <i class='bx bx-up-arrow-alt scrollup__icon' ></i>
</a>

<!--=============== SWIPER JS ===============-->
<script src="/assets/frontend/js/swiper-bundle.min.js"></script>

<!--=============== MAIN JS ===============-->
<script src="/assets/frontend/js/main.js"></script>
</body>
</html>