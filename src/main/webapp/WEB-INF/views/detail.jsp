<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
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
                <a href="main.html" class="logo">
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
    <div class="detail">
        <section>
            <div class="mainbg" style="background-image: url(./bg/71060.jpg); background-image: url(./bg/71060.jpg); background-size: cover;background-repeat: no-repeat;"></div>
            <div class="infodetails">
                <div class="left">
                    <div class="shortinfo">
                        <div class="poster"><img src="./movie/6underground.jpg" alt=""></div>
                        <div class="infoholder">
                            <div class="director">
                                <p class="bold">Director</p>
                                <p class="light">Michael Bay</p>
                            </div>
                            <div class="director">
                                <p class="bold">Writers</p>
                                <p class="light">Paul Wernick, Rhett Reese</p>
                            </div>
                            <div class="director">
                                <p class="bold">Cast</p>
                                <p class="light">Ryan Reynolds,
                                    Adria Arjona,
                                    Dave Franco,
                                    Manuel Garcia-Rulfo,
                                    Corey Hawkins,
                                    Ben Hardy
                                </p>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="right">
                    <div class="fullinfo">
                        <div class="bookingbar">
                            <div class="name">
                                <h1>6 Underground</h1>
                                <p>25$</p>
                            </div>
                            <div class="bookbtn">
                                <a class="youtube" href="https://www.youtube.com/watch?v=YLE85olJjp8&ab_channel=Netflix" target="_blank" >
                                    <img src="./icon/youtube-svgrepo-com.svg" alt="" >
                                    <p>Trailer</p>
                                </a>
                                <a href="#" class="buy">Book Now</a>
                            </div>
                        </div>
                        <div class="moredetail">
                            <div class="summary">
                                <ul>
                                    <li><button id="summary" onclick="takeActive(id)" class="active">Summary</button> </li>
                                    <li><button id="booking"  onclick="takeActive(id)"> Booking</button></li>
                                </ul>
                            </div>
                            <div id="summary-info" class="summary-info" style="display: none;">
                                <h1>6 Underground</h1>
                                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Rem in architecto accusantium, quibusdam libero asperiores animi nostrum, id consequatur eaque quos non illo. Dicta quaerat expedita non maiores, accusamus repellat unde fugiat nihil sed delectus tempore assumenda, natus voluptate temporibus asperiores, laudantium voluptatibus nemo. Cumque adipisci quas quidem sit temporibus! Voluptatum veritatis ut atque optio suscipit enim magnam perferendis sequi minima deserunt eligendi iure porro provident incidunt nam ullam aperiam, eaque soluta, at excepturi aliquid. Tenetur excepturi sed quos fuga sit omnis voluptatem eos. Mollitia optio omnis veritatis nesciunt inventore cupiditate modi veniam molestiae placeat sunt. Autem cum veritatis rem!
                                </p>
                            </div>
                            <div id="buy-movie" class="buy-movie" >
                                <div class="bookingside">
                                    <div class="resarvation">
                                        <div class="seats">
                                            <span class="material-symbols-outlined" id="span-chair"  value = "1">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "2">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "3">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "4">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "5">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "6">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "7">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "8">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "9">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "10">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "11">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "12">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "13">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "14">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "15">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "16">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "17">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "18">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "19">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "20">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "21">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "22">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "23">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "24">chair</span>
                                            <span class="material-symbols-outlined" id="span-chair"  value = "25">chair</span>
                                        </div>
                                        <div class="screen">
                                            <span class="material-symbols-outlined">call_to_action </span>
                                        </div>
                                    </div >
                                    <form action="" class="form">
                                        <div class="name-input">
                                            <label for="fname">Name</label>
                                            <input type="text" id="fname" name="fname">
                                        </div>
                                        <div class="surname-input">
                                            <label for="fsurname">Surname</label>
                                            <input type="text" id="fsurname" name="fsurname">
                                        </div>
                                        <div class="date-input">
                                            <label for="date">Date</label>
                                            <input type="date" id="date" name="date">
                                        </div>
                                        <div class="bookdiv">
                                            <button>Book</button>
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

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