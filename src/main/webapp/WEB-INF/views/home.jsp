<%@page pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/views/layout/head.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!--==================== HEADER ====================-->

<style>
    /*Result Skip Results Iframe*/
    /*EDIT ON*/
    .center {
        text-align: center;
    }

    .pagination {
        display: inline-block;
    }

    .pagination a {
        color: black;
        float: left;
        padding: 8px 16px;
        text-decoration: none;
        transition: background-color .3s;
        border: 1px solid #ddd;
        margin: 0 4px;
    }

    .pagination a.active {
        background-color: #4CAF50;
        color: white;
        border: 1px solid #4CAF50;
    }

    .pagination a:hover:not(.active) {background-color: #ddd;}
</style>

<!--==================== MAIN ====================-->
<main class="main">
    <!--==================== HOME ====================-->
    <section class="home" id="home">
        <div class="home__container container grid">
            <div class="home__img-bg">
                <img src="/assets/frontend/img/niki.png" alt="" class="home__img">
            </div>

            <div class="home__social">
                <a href="https://www.facebook.com/" target="_blank" class="home__social-link">
                    Facebook
                </a>
                <a href="https://twitter.com/" target="_blank" class="home__social-link">
                    Twitter
                </a>
                <a href="https://www.instagram.com/" target="_blank" class="home__social-link">
                    Instagram
                </a>
            </div>

            <div class="home__data">
                <h1 class="home__title">NEW SHOES <br> COLLECTIONS </h1>
                <p class="home__description">
                    Latest arrival of the new imported shoes of the NIKE series,
                    with a modern and resistant design.
                </p>
                <span class="home__price">$1235</span>

                <div class="home__btns">
                    <a href="#" class="button button--gray button--small">
                        Discover
                    </a>
                    <a href="/shoppingCart/add/19" class="button home__button">ADD TO CART</a>

                </div>
            </div>
        </div>
    </section>

    <!--==================== FEATURED ====================-->
    <section class="featured section container" id="featured">
        <h2 class="section__title">
            Featured
        </h2>

        <div class="featured__container grid">
            <article class="featured__card">
                <span class="featured__tag">Sale</span>

                <img src="/assets/frontend/img/featured11.png" alt="" class="featured__img">

                <div class="featured__data">
                    <h3 class="featured__title">𝐉𝐨𝐫𝐝𝐚𝐧 𝟏 𝐑𝐞𝐭𝐫𝐨 𝐇𝐢𝐠𝐡 𝐎𝐆 𝐃𝐞𝐧𝐢𝐦</h3>
                    <span class="featured__price">$1050</span>
                </div>

                <button class="button featured__button">ADD TO CART</button>
            </article>

            <article class="featured__card">
                <span class="featured__tag">Sale</span>

                <img src="/assets/frontend/img/nike.png" alt="" class="featured__img">

                <div class="featured__data">
                    <h3 class="featured__title">𝐀𝐢𝐫 𝐉𝐨𝐫𝐝𝐚𝐧 𝟏 𝐋𝐢𝐠𝐡𝐭 𝐎𝐥𝐢𝐯𝐞</h3>
                    <span class="featured__price">$250</span>
                </div>

                <button class="button featured__button">ADD TO CART</button>
            </article>

            <article class="featured__card">
                <span class="featured__tag">Sale</span>

                <img src="/assets/frontend/img/jordan.png" alt="" class="featured__img">

                <div class="featured__data">
                    <h3 class="featured__title">Jordan mid</h3>
                    <span class="featured__price">$890</span>
                </div>

                <button class="button featured__button">ADD TO CART</button>
            </article>
        </div>
    </section>

    <!--==================== STORY ====================-->
    <section class="story section container">
        <div class="story__container grid">
            <div class="story__data">
                <h2 class="section__title story__section-title">
                    Our Story
                </h2>

                <h1 class="story__title">
                    Inspirational Shoes of <br> this year
                </h1>

                <p class="story__description">
                    The latest and modern shoes of this year, is available in various
                    presentations in this store, discover them now.
                </p>

                <a href="#" class="button button--small">Discover</a>
            </div>

            <div class="story__images">
                <img src="/assets/frontend/img/story1.png" alt="" class="story__img">
                <div class="story__square"></div>
            </div>
        </div>
    </section>

    <!--==================== PRODUCTS ====================-->
    <section class="products section container" id="products">
        <h2 class="section__title">
            Products
        </h2>

        <div class="products__container grid">
            <c:forEach var="product" items="${product}">
                <article class="products__card">
                    <img src="/assets/frontend/img/${product.hinhanh}" alt="" class="products__img">

                    <h3 class="products__title">${product.tengiay} </h3>
                    <span class="products__price">$${product.gia}</span>
                    <c:set var="soluong" value="${product.soluong}"/>
                    <c:choose>
                        <c:when test="${soluong == 0 }">
                            <span class="products__button">Hết Hàng!!</span>
                        </c:when>
                        <c:otherwise>
                            <a href="/shoppingCart/add/${product.magiay}" class="products__button">
                                <i class='bx bx-shopping-bag'></i>
                            </a>
                        </c:otherwise>
                    </c:choose>

                </article>
            </c:forEach>
        </div>

        <h2 class="section__title m-3">



        </h2>
        <div class="center" style="text-align: center">
            <div class="pagination">
                <c:set var="activepage" value="${pagination.activePage}" />
                <c:choose>
                    <c:when test="${activepage == 1}">
                        <a href="#">&laquo;</a>
                    </c:when>
                    <c:otherwise>
                        <a href="/home?page=${pagination.prePage}#products">&laquo;</a>
                    </c:otherwise>
                </c:choose>
                <c:forEach var="Total" begin="1" end="${totalend+1}">
                    <c:set var="activepage" value="${activepage}" />
                    <c:set var="Page" value="${Total}" />
                    <c:choose>
                        <c:when test="${activepage == Page}">
                            <a class="active">${Total}</a>
                        </c:when>
                        <c:otherwise>
                            <a href="/home?page=${Total}#products">${Total}</a>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
                <c:set var="activepage" value="${pagination.activePage}" />
                <c:set var="Page" value="${totalend}" />
                <c:choose>
                    <c:when test="${activepage == Page+1}">
                        <a href="#">&raquo;</a>
                    </c:when>
                    <c:otherwise>
                        <a href="/home?page=${pagination.nextPage}#products">&raquo;</a>
                    </c:otherwise>
                </c:choose>
            </div>

        </div>

    </section>

    <!--==================== TESTIMONIAL ====================-->
    <section class="testimonial section container">
        <div class="testimonial__container grid">
            <div class="swiper testimonial-swiper">
                <div class="swiper-wrapper">
                    <div class="testimonial__card swiper-slide">
                        <div class="testimonial__quote">
                            <i class='bx bxs-quote-alt-left'></i>
                        </div>
                        <p class="testimonial__description">
                            They are the best shoes that one acquires, also they are always with the latest
                            news and trends, with a very comfortable price and especially with the attention
                            you receive, they are always attentive to your questions.
                        </p>
                        <h3 class="testimonial__date">March 27. 2021</h3>

                        <div class="testimonial__perfil">
                            <img src="/assets/frontend/img/testimonial1.jpg" alt="" class="testimonial__perfil-img">

                            <div class="testimonial__perfil-data">
                                <span class="testimonial__perfil-name">Lee Doe</span>
                                <span class="testimonial__perfil-detail">Director of a company</span>
                            </div>
                        </div>
                    </div>

                    <div class="testimonial__card swiper-slide">
                        <div class="testimonial__quote">
                            <i class='bx bxs-quote-alt-left'></i>
                        </div>
                        <p class="testimonial__description">
                            They are the best watches that one acquires, also they are always with the latest
                            news and trends, with a very comfortable price and especially with the attention
                            you receive, they are always attentive to your questions.
                        </p>
                        <h3 class="testimonial__date">March 27. 2021</h3>

                        <div class="testimonial__perfil">
                            <img src="/assets/frontend/img/testimonial2.jpg" alt="" class="testimonial__perfil-img">

                            <div class="testimonial__perfil-data">
                                <span class="testimonial__perfil-name">Samantha Mey</span>
                                <span class="testimonial__perfil-detail">Director of a company</span>
                            </div>
                        </div>
                    </div>

                    <div class="testimonial__card swiper-slide">
                        <div class="testimonial__quote">
                            <i class='bx bxs-quote-alt-left'></i>
                        </div>
                        <p class="testimonial__description">
                            Mọi người thường gọi tôi là chuyên gia định giá sản phẩm, và đúng như vậy. tôi chính là
                            một chuyên gia định giá sản phẩm =))

                        </p>
                        <h3 class="testimonial__date">November 4. 2022</h3>

                        <div class="testimonial__perfil">
                            <img src="/assets/frontend/img/testimonial3.jpg" alt="" class="testimonial__perfil-img">

                            <div class="testimonial__perfil-data">
                                <span class="testimonial__perfil-name">Raul Zaman</span>
                                <span class="testimonial__perfil-detail">Director of a company</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="swiper-button-next">
                    <i class='bx bx-right-arrow-alt'></i>
                </div>
                <div class="swiper-button-prev">
                    <i class='bx bx-left-arrow-alt'></i>
                </div>
            </div>

            <div class="testimonial__images">
                <div class="testimonial__square"></div>
                <img src="/assets/frontend/img/testimonial12.jpg" alt="" class="testimonial__img">
            </div>
        </div>
    </section>

    <!--==================== NEW ====================-->
    <section class="new section container" id="new">
        <h2 class="section__title">
            New Arrivals
        </h2>

        <div class="new__container">
            <div class="swiper new-swiper">
                <div class="swiper-wrapper">
                    <c:forEach var="product" items="${listNew}">
                        <article class="new__card swiper-slide">
                            <span class="new__tag">New</span>

                            <img src="/assets/frontend/img/${product.hinhanh}" alt="" class="new__img">

                            <div class="new__data">
                                <h3 class="new__title">${product.tengiay}</h3>
                                <span class="new__price">$${product.gia}</span>
                            </div>

                            <a href="/shoppingCart/add/${product.magiay}" class="button new__button">ADD TO CART</a>
                        </article>
                    </c:forEach>
                </div>
            </div>
        </div>
    </section>

    <!--==================== NEWSLETTER ====================-->
    <section class="newsletter section container">
        <div class="newsletter__bg grid">
            <div>
                <h2 class="newsletter__title">Subscribe Our <br> Newsletter</h2>
                <p class="newsletter__description">
                    Don't miss out on your discounts. Subscribe to our email
                    newsletter to get the best offers, discounts, coupons,
                    gifts and much more.
                </p>
            </div>

            <form action="" class="newsletter__subscribe">
                <input type="email" placeholder="Enter your email" class="newsletter__input">
                <button class="button button--small">
                    SUBSCRIBE
                </button>
            </form>
        </div>
    </section>
</main>
<%@include file="/WEB-INF/views/layout/foot.jsp" %>
