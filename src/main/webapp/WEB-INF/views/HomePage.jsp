<%@ page import="com.example.demo.model.User" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/8.2.3/swiper-bundle.css" integrity="sha512-RDcDPFl1DiFz9e6nlScN4c+whvchUuQa920d9c00e4i48rWxOQDOcto24nztQz1By9hBfSI7TU6EpFXRv8HJcg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Document</title>
    <style>
        <%@include file="Style.css" %>
    </style>

</head>
<body>

<nav>
    <div class="navbar">
        <div class="navmenu">
            <div class="navr-right">
                <a href="HomePage.jsp" class="logo">
                    <span class="material-symbols-outlined"> local_activity</span>
                    <h1>TICKET<strong>BOX</strong></h1>
                </a>
                <div class="nav-input">
                    <input type="text">
                    <span class="material-symbols-outlined">search</span>
                </div>
            </div>
            <div class="nav-left">
                <div class="singin">
                    <button>Sing İn</button>
                </div>
            </div>

        </div>

    </div>

</nav>
<main>
    <aside>
        <div class="left-menu">
            <ul>
                <li>
                    <a href="menu.html">
                        <span class="material-symbols-outlined">movie</span>
                        <h3>CİNEMA</h3>
                    </a>

                </li>
                <li><a href="menu.html">
                    <span class="material-symbols-outlined"> celebration</span>
                    <h3>EVENTS</h3> </a>

                </li>
                <li><a href="menu.html">
                            <span class="material-symbols-outlined">
                                sports_soccer
                                </span>
                    <h3>SPORTS</h3>
                </a>

                </li>
                <li><a href="menu.html">
                            <span class="material-symbols-outlined">
                                holiday_village
                                </span>
                    <h3>CAMPS</h3>
                </a>

                </li>
            </ul>
        </div>


    </aside>
    <div class="centerSection">
        <section class="mainSection">
            <div class="swiper mySwiper">
                <div class="swiper-wrapper">

                    <div class="swiper-slide mainSlied bg" style="background-image: url(./img/3f7abf449ea8be6ca7d2eff2b7021f88.jpg); " >

                        <div class="btn-holding">
                            <a class="slide-btn" href="#">Book Now</a>
                        </div>

                    </div>

                    <div class="swiper-slide mainSlied bg" style="background-image: url(./img/media-desktop-red-bull-bc-one-world-final-2019-2019-9-6-t-20-10-12.avif);" >

                        <div class="btn-holding">
                            <a class="slide-btn" href="#">Book Now</a>
                        </div>

                    </div>
                    <div class="swiper-slide mainSlied bg" style="background-image: url(./img/BANNER_RECTANGLE_2-scaled.jpg);" >

                        <div class="btn-holding">
                            <a class="slide-btn" href="#">Book Now</a>
                        </div>

                    </div>
                    <div class="swiper-slide mainSlied bg" style="background-image: url(./img/615d60e7f3f39c44cb671605-scuderia-ferrari-turkish-gp-2021-cover-art-news-l.jpg);" >

                        <div class="btn-holding">
                            <a class="slide-btn" href="#">Book Now</a>
                        </div>

                    </div>
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </section>
        <section class="aboutMovie">
            <div class="mainTitle">
                <p>Movies</p>
                <a href="menu.html" class="viewAll">
                    <p>View All</p>
                    <span class="material-symbols-outlined">visibility</span>
                </a>
            </div>

            <div class="movie">

                <a href="./detail.jsp" class="poster">
                    <div class="poster-img" >
                        <img src="./movie/drstrange.jpg" alt="">
                    </div>
                    <div class="poster-name">Dr strange</div>
                    <div class="poster-info">
                        <div class="calender">
                            <span class="material-symbols-outlined"> calendar_month</span>
                            <p>25 AUG</p>
                        </div>
                        <div class="price">
                            <p>25$</p>
                        </div>
                    </div>
                </a>
                <a href="detail.jsp" class="poster">
                    <div class="poster-img" >
                        <img src="./movie/6underground.jpg" alt="">
                    </div>
                    <div class="poster-name">6 Underground</div>
                    <div class="poster-info">
                        <div class="calender">
                            <span class="material-symbols-outlined"> calendar_month</span>
                            <p>25 AUG</p>
                        </div>
                        <div class="price">
                            <p>25$</p>
                        </div>
                    </div>
                </a>
                <a href="detail.jsp" class="poster">
                    <div class="poster-img" >
                        <img src="" th:src ="@{/movie/batman.jpg}" alt="">
                    </div>
                    <div class="poster-name">Batman</div>
                    <div class="poster-info">
                        <div class="calender">
                            <span class="material-symbols-outlined"> calendar_month</span>
                            <p>25 AUG</p>
                        </div>
                        <div class="price">
                            <p>25$</p>
                        </div>
                    </div>
                </a>
                <a href="detail.jsp" class="poster">
                    <div class="poster-img" >
                        <img src="./movie/special.jpg" alt="">
                    </div>
                    <div class="poster-name">Special Correspondents</div>
                    <div class="poster-info">
                        <div class="calender">
                            <span class="material-symbols-outlined"> calendar_month</span>
                            <p>25 AUG</p>
                        </div>
                        <div class="price">
                            <p>25$</p>
                        </div>
                    </div>
                </a>


            </div>

        </section>
        <section class="aboutMovie">
            <div class="mainTitle">
                <p>Events</p>
                <a href="menu.html" class="viewAll">
                    <p>View All</p>
                    <span class="material-symbols-outlined">visibility</span>
                </a>
            </div>

            <div class="movie">

                <a href="detail.jsp" class="poster">
                    <div class="poster-img" >
                        <img src="./movie/drstrange.jpg" alt="">
                    </div>
                    <div class="poster-name">Dr strange</div>
                    <div class="poster-info">
                        <div class="calender">
                            <span class="material-symbols-outlined"> calendar_month</span>
                            <p>25 AUG</p>
                        </div>
                        <div class="price">
                            <p>25$</p>
                        </div>
                    </div>
                </a>
                <a href="detail.jsp" class="poster">
                    <div class="poster-img" >
                        <img src="./movie/6underground.jpg" alt="">
                    </div>
                    <div class="poster-name">6 Underground</div>
                    <div class="poster-info">
                        <div class="calender">
                            <span class="material-symbols-outlined"> calendar_month</span>
                            <p>25 AUG</p>
                        </div>
                        <div class="price">
                            <p>25$</p>
                        </div>
                    </div>
                </a>
                <a href="detail.jsp" class="poster">
                    <div class="poster-img" >
                        <img src="movie/batman.jpg" alt="">
                    </div>
                    <div class="poster-name">Batman</div>
                    <div class="poster-info">
                        <div class="calender">
                            <span class="material-symbols-outlined"> calendar_month</span>
                            <p>25 AUG</p>
                        </div>
                        <div class="price">
                            <p>25$</p>
                        </div>
                    </div>
                </a>
                <a href="detail.jsp" class="poster">
                    <div class="poster-img" >
                        <img src="./movie/special.jpg" alt="">
                    </div>
                    <div class="poster-name">Special Correspondents</div>
                    <div class="poster-info">
                        <div class="calender">
                            <span class="material-symbols-outlined"> calendar_month</span>
                            <p>25 AUG</p>
                        </div>
                        <div class="price">
                            <p>25$</p>
                        </div>
                    </div>
                </a>


            </div>

        </section>
        <section class="aboutMovie">
            <div class="mainTitle">
                <p>Sports</p>
                <a href="menu.html" class="viewAll">
                    <p>View All</p>
                    <span class="material-symbols-outlined">visibility</span>
                </a>
            </div>

            <div class="movie">

                <a href="detail.jsp" class="poster">
                    <div class="poster-img" >
                        <img src="./movie/drstrange.jpg" alt="">
                    </div>
                    <div class="poster-name">Dr strange</div>
                    <div class="poster-info">
                        <div class="calender">
                            <span class="material-symbols-outlined"> calendar_month</span>
                            <p>25 AUG</p>
                        </div>
                        <div class="price">
                            <p>25$</p>
                        </div>
                    </div>
                </a>
                <a href="detail.jsp" class="poster">
                    <div class="poster-img" >
                        <img src="./movie/6underground.jpg" alt="">
                    </div>
                    <div class="poster-name">6 Underground</div>
                    <div class="poster-info">
                        <div class="calender">
                            <span class="material-symbols-outlined"> calendar_month</span>
                            <p>25 AUG</p>
                        </div>
                        <div class="price">
                            <p>25$</p>
                        </div>
                    </div>
                </a>
                <a href="detail.jsp" class="poster">
                    <div class="poster-img" >
                        <img src="movie/batman.jpg" alt="">
                    </div>
                    <div class="poster-name">Batman</div>
                    <div class="poster-info">
                        <div class="calender">
                            <span class="material-symbols-outlined"> calendar_month</span>
                            <p>25 AUG</p>
                        </div>
                        <div class="price">
                            <p>25$</p>
                        </div>
                    </div>
                </a>
                <a href="detail.jsp" class="poster">
                    <div class="poster-img" >
                        <img src="./movie/special.jpg" alt="">
                    </div>
                    <div class="poster-name">Special Correspondents</div>
                    <div class="poster-info">
                        <div class="calender">
                            <span class="material-symbols-outlined"> calendar_month</span>
                            <p>25 AUG</p>
                        </div>
                        <div class="price">
                            <p>25$</p>
                        </div>
                    </div>
                </a>


            </div>

        </section>
        <section class="aboutMovie">
            <div class="mainTitle">
                <p>Champs</p>
                <a href="menu.html" class="viewAll">
                    <p>View All</p>
                    <span class="material-symbols-outlined">visibility</span>
                </a>
            </div>

            <div class="movie">

                <a href="detail.jsp" class="poster">
                    <div class="poster-img" >
                        <img src="./movie/drstrange.jpg" alt="">
                    </div>
                    <div class="poster-name">Dr strange</div>
                    <div class="poster-info">
                        <div class="calender">
                            <span class="material-symbols-outlined"> calendar_month</span>
                            <p>25 AUG</p>
                        </div>
                        <div class="price">
                            <p>25$</p>
                        </div>
                    </div>
                </a>
                <a href="detail.jsp" class="poster">
                    <div class="poster-img" >
                        <img src="./movie/6underground.jpg" alt="">
                    </div>
                    <div class="poster-name">6 Underground</div>
                    <div class="poster-info">
                        <div class="calender">
                            <span class="material-symbols-outlined"> calendar_month</span>
                            <p>25 AUG</p>
                        </div>
                        <div class="price">
                            <p>25$</p>
                        </div>
                    </div>
                </a>
                <a href="detail.jsp" class="poster">
                    <div class="poster-img" >
                        <img src="movie/batman.jpg" alt="">
                    </div>
                    <div class="poster-name">Batman</div>
                    <div class="poster-info">
                        <div class="calender">
                            <span class="material-symbols-outlined"> calendar_month</span>
                            <p>25 AUG</p>
                        </div>
                        <div class="price">
                            <p>25$</p>
                        </div>
                    </div>
                </a>
                <a href="detail.jsp" class="poster">
                    <div class="poster-img" >
                        <img src="./movie/special.jpg" alt="">
                    </div>
                    <div class="poster-name">Special Correspondents</div>
                    <div class="poster-info">
                        <div class="calender">
                            <span class="material-symbols-outlined"> calendar_month</span>
                            <p>25 AUG</p>
                        </div>
                        <div class="price">
                            <p>25$</p>
                        </div>
                    </div>
                </a>


            </div>

        </section>
        <footer>
            <div class="footer">
                <p>Created By Ömer Can Parlak & Fatih Mücahit Bodur</p>
            </div>
        </footer>
    </div>

</main>






<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/8.2.3/swiper-bundle.min.js" integrity="sha512-d3gZ3Oo0k2qZ8HJ3JNdmqH/YHjFj3qYaS7HQBhF6P6ohVKpCnUy3KovWTv0V9UBkO9Auo1uhPsIzNE5I4C/CpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>


<script src="app.js"></script>
</body>
</html>