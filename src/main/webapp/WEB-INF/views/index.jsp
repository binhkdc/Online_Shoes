<%@page pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/views/layout/head.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--==================== HEADER ====================-->


<!--==================== CART ====================-->
<div class="cart" id="cart">
    <i class='bx bx-x cart__close' id="cart-close"></i>

    <h2 class="cart__title-center">My Cart</h2>

    <div class="cart__container">
        <article class="cart__card">
            <div class="cart__box">
                <img src="/assets/frontend/img/featured11.png" alt="" class="cart__img">
            </div>

            <div class="cart__details">
                <h3 class="cart__title">𝐉𝐨𝐫𝐝𝐚𝐧 𝟏 𝐑𝐞𝐭𝐫𝐨 𝐇𝐢𝐠𝐡 𝐎𝐆 𝐃𝐞𝐧𝐢𝐦</h3>
                <span class="cart__price">$1050</span>

                <div class="cart__amount">
                    <div class="cart__amount-content">
                                <span class="cart__amount-box">
                                    <i class='bx bx-minus' ></i>
                                </span>

                        <span class="cart__amount-number">1</span>

                        <span class="cart__amount-box">
                                    <i class='bx bx-plus' ></i>
                                </span>
                    </div>

                    <i class='bx bx-trash-alt cart__amount-trash' ></i>
                </div>
            </div>
        </article>

        <article class="cart__card">
            <div class="cart__box">
                <img src="/assets/frontend/img/new01.png" alt="" class="cart__img">
            </div>

            <div class="cart__details">
                <h3 class="cart__title">𝐀𝐢𝐫 𝐉𝐨𝐫𝐝𝐚𝐧 𝟏 𝐑𝐞𝐭𝐫𝐨 𝐋𝐨𝐰 𝐎𝐆 "𝐁𝐥𝐞𝐚𝐜𝐡𝐞𝐝 𝐂𝐨𝐫𝐚𝐥"</h3>
                <span class="cart__price">$980</span>

                <div class="cart__amount">
                    <div class="cart__amount-content">
                                <span class="cart__amount-box">
                                    <i class='bx bx-minus' ></i>
                                </span>

                        <span class="cart__amount-number">1</span>

                        <span class="cart__amount-box">
                                    <i class='bx bx-plus' ></i>
                                </span>
                    </div>

                    <i class='bx bx-trash-alt cart__amount-trash' ></i>
                </div>
            </div>
        </article>

        <article class="cart__card">
            <div class="cart__box">
                <img src="/assets/frontend/img/products2.png" alt="" class="cart__img">
            </div>

            <div class="cart__details">
                <h3 class="cart__title">𝐀𝐢𝐫 𝐅𝐨𝐫𝐜𝐞 𝟏 𝐏𝐞𝐚𝐫𝐥 𝐖𝐡𝐢𝐭𝐞</h3>
                <span class="cart__price">$1350</span>

                <div class="cart__amount">
                    <div class="cart__amount-content">
                                <span class="cart__amount-box">
                                    <i class='bx bx-minus' ></i>
                                </span>

                        <span class="cart__amount-number">1</span>

                        <span class="cart__amount-box">
                                    <i class='bx bx-plus' ></i>
                                </span>
                    </div>

                    <i class='bx bx-trash-alt cart__amount-trash' ></i>
                </div>
            </div>
        </article>
    </div>

    <div class="cart__prices">
        <span class="cart__prices-item">3 items</span>
        <span class="cart__prices-total">$2880</span>
    </div>
</div>

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
                <span class="home__price">$1245</span>

                <div class="home__btns">
                    <a href="#" class="button button--gray button--small">
                        Discover
                    </a>

                    <button class="button home__button">ADD TO CART</button>
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
                    <img src="/assets/frontend/img/products1.png" alt="" class="products__img">

                    <h3 class="products__title">${product.tengiay} </h3>
                    <span class="products__price">$${product.gia}</span>

                    <button class="products__button">
                        <i class='bx bx-shopping-bag'></i>
                    </button>
                </article>
            </c:forEach>


            <h3 class="products__title">Duchen</h3>
            <span class="products__price">$950</span>

            <button class="products__button">
                <i class='bx bx-shopping-bag'></i>
            </button>
        </div>
    </section>

    <!--==================== TESTIMONIAL ====================-->
    <section class="testimonial section container">
        <div class="testimonial__container grid">
            <div class="swiper testimonial-swiper">
                <div class="swiper-wrapper">
                    <div class="testimonial__card swiper-slide">
                        <div class="testimonial__quote">
                            <i class='bx bxs-quote-alt-left' ></i>
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
                            <i class='bx bxs-quote-alt-left' ></i>
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
                            <i class='bx bxs-quote-alt-left' ></i>
                        </div>
                        <p class="testimonial__description">
                            They are the best watches that one acquires, also they are always with the latest
                            news and trends, with a very comfortable price and especially with the attention
                            you receive, they are always attentive to your questions.
                        </p>
                        <h3 class="testimonial__date">March 27. 2021</h3>

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
                    <i class='bx bx-right-arrow-alt' ></i>
                </div>
                <div class="swiper-button-prev">
                    <i class='bx bx-left-arrow-alt' ></i>
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
                    <article class="new__card swiper-slide">
                        <span class="new__tag">New</span>

                        <img src="/assets/frontend/img/new01.png" alt="" class="new__img">

                        <div class="new__data">
                            <h3 class="new__title">𝐀𝐢𝐫 𝐉𝐨𝐫𝐝𝐚𝐧 𝟏 𝐑𝐞𝐭𝐫𝐨 𝐋𝐨𝐰 𝐎𝐆 "𝐁𝐥𝐞𝐚𝐜𝐡𝐞𝐝 𝐂𝐨𝐫𝐚𝐥"</h3>
                            <span class="new__price">$980</span>
                        </div>

                        <button class="button new__button">ADD TO CART</button>
                    </article>

                    <article class="new__card swiper-slide">
                        <span class="new__tag">New</span>

                        <img src="/assets/frontend/img/new02.png" alt="" class="new__img">

                        <div class="new__data">
                            <h3 class="new__title">𝐁𝐥𝐚𝐳𝐞𝐫 𝐌𝐢𝐝 ‘𝟕𝟕 𝐉𝐮𝐦𝐛𝐨</h3>
                            <span class="new__price">$1150</span>
                        </div>

                        <button class="button new__button">ADD TO CART</button>
                    </article>

                    <article class="new__card swiper-slide">
                        <span class="new__tag">New</span>

                        <img src="/assets/frontend/img/neww03.png" alt="" class="new__img">

                        <div class="new__data">
                            <h3 class="new__title">𝗔𝗶𝗿 𝗝𝗼𝗿𝗱𝗮𝗻 𝟭 𝗟𝗼𝘄 𝗥𝗼𝘀𝗲 𝗚𝗼𝗹𝗱</h3>
                            <span class="new__price">$750</span>
                        </div>

                        <button class="button new__button">ADD TO CART</button>
                    </article>

                    <article class="new__card swiper-slide">
                        <span class="new__tag">New</span>

                        <img src="/assets/frontend/img/new04.png" alt="" class="new__img">

                        <div class="new__data">
                            <h3 class="new__title">𝐀𝐢𝐫 𝐉𝐨𝐫𝐝𝐚𝐧 𝟑 𝐑𝐞𝐭𝐫𝐨 "𝐃𝐚𝐫𝐤 𝐌𝐨𝐜𝐡𝐚"</h3>
                            <span class="new__price">$1590</span>
                        </div>

                        <button class="button new__button">ADD TO CART</button>
                    </article>
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
<%@include file="/WEB-INF/views/layout/foot.jsp"%>