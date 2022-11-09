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
    <link rel="stylesheet" href="/assets/frontend/css/styleCart.css">


    <title>Nike website</title>
</head>
<body>
<sec:authorize access="!isAuthenticated()">
    <h1> bạn phải đăng nhập</h1>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
<h1>Giỏ hàng của tôi</h1>

<div class="shopping-cart">

    <div class="column-labels">
        <label class="product-image">Hình ảnh</label>
        <label class="product-details">Sản Phẩm</label>
        <label class="product-price">Giá</label>
        <label class="product-quantity">Số Lượng</label>
        <label class="product-removal">Xóa</label>
    </div>
    <c:forEach var="item" items="${CartItem}">
    <form action="/shoppingCart/update" method="post">
        <input type="hidden" value="${item.magiay}" name="magiay"/>
        <article class="cart__card">
        <div class="product">
            <div class="product-image">
                <img src="/assets/frontend/img/${item.hinhanh}" alt="" class="cart__img">
            </div>
            <div class="product-details">
                <div class="product-title">
                    <h3 class="cart__title">${item.tengiay}</h3>
                </div>
                <p class="product-description">${item.mota}</p>
            </div>
            <div class="product-price"><span class="cart__price">${item.gia}</span></div>
            <div class="product-quantity">
                <a href="#" class="quantity-btn quantity-input-down"><i class='bx bx-minus'></i></a>
                <input type="text"  onblur="this.form.submit()"  class="" name="soluong" value="${item.soluong}">
                <a href="#" class="quantity-btn quantity-input-up"><i class='bx bx-plus'></i></a>
            </div>
            <div class="product-removal">
                <a href="/shoppingCart/remove/${item.magiay}" class="remove-product">
                    Remove
                </a>
            </div>
        </div>
        </article>

    </form>

    </c:forEach>


        <c:set var="userid">
            <sec:authentication property="principal.id"></sec:authentication>
        </c:set>
        <div class="totals">
            <div class="totals-item">
                <label>Tổng Tiền</label>
                <div class="totals-value" id="cart-subtotal">
                    <span class="cart__prices-total">${Gia}</span>
                </div>
            </div>

<%--            <div class="totals-item">--%>
<%--                <label>Shipping</label>--%>
<%--                <div class="totals-value" id="cart-shipping">15.00</div>--%>
<%--            </div>--%>
<%--            <div class="totals-item totals-item-total">--%>
<%--                <label>Grand Total</label>--%>
<%--                <div class="totals-value" id="cart-total">--%>

<%--                    <span class="cart__prices-total">${Gia}</span>--%>
<%--                </div>--%>
<%--            </div>--%>
        </div>
        <form action="/checkOut" method="post">
            <input type="hidden" value="${userid}" name="userid">
            <button class="checkout">Checkout</button>
            <a href="/home#products" style="background-color: #6b6;color: white;border-radius: 3px;border: 0;margin-top: 20px;
    padding: 6px 25px;" class="btn">Back</a>
        </form>



</div>
</sec:authorize>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
    /* Set rates + misc */
    var taxRate = 0.05;
    var shippingRate = 15.00;
    var fadeTime = 300;


    /* Assign actions */
    $('.product-quantity input').change( function() {
        updateQuantity(this);
    });

    $('.product-removal button').click( function() {
        removeItem(this);
    });


    /* Recalculate cart */
    function recalculateCart()
    {
        var subtotal = 0;

        /* Sum up row totals */
        $('.product').each(function () {
            subtotal += parseFloat($(this).children('.product-line-price').text());
        });

        /* Calculate totals */
        var tax = subtotal * taxRate;
        var shipping = (subtotal > 0 ? shippingRate : 0);
        var total = subtotal + tax + shipping;

        /* Update totals display */
        $('.totals-value').fadeOut(fadeTime, function() {
            $('#cart-subtotal').html(subtotal.toFixed(2));
            $('#cart-tax').html(tax.toFixed(2));
            $('#cart-shipping').html(shipping.toFixed(2));
            $('#cart-total').html(total.toFixed(2));
            if(total == 0){
                $('.checkout').fadeOut(fadeTime);
            }else{
                $('.checkout').fadeIn(fadeTime);
            }
            $('.totals-value').fadeIn(fadeTime);
        });
    }


    /* Update quantity */
    function updateQuantity(quantityInput)
    {
        /* Calculate line price */
        var productRow = $(quantityInput).parent().parent();
        var price = parseFloat(productRow.children('.product-price').text());
        var quantity = $(quantityInput).val();
        var linePrice = price * quantity;

        /* Update line price display and recalc cart totals */
        productRow.children('.product-line-price').each(function () {
            $(this).fadeOut(fadeTime, function() {
                $(this).text(linePrice.toFixed(2));
                recalculateCart();
                $(this).fadeIn(fadeTime);
            });
        });
    }


    /* Remove item from cart */
    function removeItem(removeButton)
    {
        /* Remove row from DOM and recalc cart total */
        var productRow = $(removeButton).parent().parent();
        productRow.slideUp(fadeTime, function() {
            productRow.remove();
            recalculateCart();
        });
    }
    // Tang giam
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

</body>

</html>
