<#import "base.ftlh" as base>
    <title>Book</title>


    <section class="singleFilm">
        <div class="singleFilm__inner">
            <div class="singleFilm__item">
                <div class="single__photo-block">
                    <div class="single__photo-film">
                        <img src="/images/topFilms/post-25-copyright-485x665.jpg" alt="" class="film__img">
                    </div>
                </div>
                <article class="film__info">
                    <h2 class="film__name">Mongol</h2>
                    <ul class="film__list-desc">
                        <li class=" film__desc-item film__rating-field">
                            <span class="film__field">Rating:</span> <span class="rating__count">8.6</span>
                        </li>
                        <li class="film__desc-item film__category">
                            <span class="film__field">Category:</span> <span>Coming soon</span>
                        </li>
                        <li class="film__desc-item film__category">
                            <span class="film__field">View:</span> <span>500</span>
                        </li>
                        <li class="film__desc-item film_genre">
                            <span class="film__field">Genre:</span> <span>Adventure,Historic</span>
                        </li>
                        <li class="film__desc-item film__release">
                            <span class="film__field">Release:</span>
                            <span>Feburary, 12 20021</span></li>
                        <li class="film__desc-item film__time"><span class="film__field">Time:</span> <span>2:11:00</span>
                        </li>
                        <li class="film__desc-item film__language"><span class="film__field">Language:</span>
                            <span>English</span></li>
                        <li class="film__desc-item film__country"><span class="film__field">Country:</span>
                            <span>England</span></li>
                    </ul>
                    <form action="" method="post" class="add_film">
                        <button type="button">Добавить в любимые</button>
                    </form>
                    <!--                <div class="add__love">Добвавлено в любимое</div>-->
                </article>
            </div>

            <div class="singleMovie__description">
                <div class="singleMovie__description-title">Movie Story</div>
                <div class="singleMovie__description-text">Quisque vitae ultrices justo auctor facilisis neque
                    fringillaProin fringilla porttitor eros eu. . in risus vitae enim fermentum condimentum. Donec eleifend
                    consequat nulla sed faucibus. Etiam sit amet ex ut eros dignissim consequat in non risus. Sed placerat
                    eget diam lobortis mollis. Curabitur at dui vel mauris laoreet euismod ac at nibh. Proin orci sapien,
                    posuere eget hendrerit non, maximus et erat. Curabitur et semper nunc. Cras ultrices pulvinar leo id
                    ultrices. Aenean interdum tempor diam, vel porttitor tellus facilisis ut. Nulla aliquet turpis augue,
                    quis.
                    <br>
                    <br>
                    interdum lectus lobortis eu. Nulla ornare mauris ac congue cursus. Donec eu urna sodales, feugiat urna
                    quis, pretium augue. Donec vel massa nec metus dapibus dignissim. Curabitur at nisi mattis, vestibulum
                    enim at, dictum eros. Pellentesque sed arcu et elit mattis pulvinar. Suspendisse et risus lacinia nunc
                    auctor cursus ac sed ipsum. Duis fringilla, tellus eget hendrerit posuere, nisi quam pretium justo, sed
                    consectetur dui felis sit amet dui. Donec luctus dapibus scelerisque. Quisque turpis tortor, venenatis
                    eget mattis ac, viverra sit amet libero. In ut libero sapien. Nam non venenatis mi, vel sodales augue.
                    Donec fringilla nisi vel est placerat, sed tempor est venenatis. Donec non sollicitudin felis.Donec eu
                    urna sodales, feugiat urna quis, pretium augue. Donec vel massa nec.
                </div>
            </div>

            <div class="singleMovie__comments">
                <div class="singleMovie__comments-top">
                    <div class="singleMovie__comments-header">
                        <div class="singleMovie__comments-title">Комментарии</div>
                        <div class="singleMovie__comments-count">22</div>
                    </div>
                    <div class="comment__auth">Чтобы написать комментарий <a href="#">войди</a></div>
                    <form action="" class="comment__write" method="post">
                    <textarea class="comment__field" name="comment" id="comment" cols="30" rows="10"
                              placeholder="Ваш комментарий..."></textarea>
                        <span>
                        <button type="button" class="btn__comment">Отправить</button>
                    </span>
                    </form>
                </div>
                <div class="comment__items">
                    <div class="comment__item">
                        <div class="comment__desc">
                            <div class="comment__avatar">
                                <a href="#" class="comment__avatar-img">
                                    <img src="/images/avatar/avatar.jpg" alt="">
                                </a>
                            </div>
                            <div class="comment__info">
                                <div class="comment__name">Юрий Козин</div>
                                <p class="comment__text">Не раскрыта тема комедийных британских сериалов. Навскидку -
                                    Книжный
                                    магазин Блэка, Идеал, Компьютерщики и много еще
                                </p>
                            </div>
                            <div class="comment__likes">
                                <button type="button">+</button>
                                <span class="comment__likes-count">5</span>
                                <button type="button">-</button>
                            </div>
                        </div>
                        <div class="comment__footer">
                            <a href="#" class="answer__btn">Ответить</a>
                            <div class="comment__date">15 фувраля, 18:02</div>
                        </div>
                    </div>

                    <div class="comment__item">
                        <div class="comment__desc">
                            <div class="comment__avatar">
                                <a href="#" class="comment__avatar-img">
                                    <img src="/images/avatar/avatar.jpg" alt="">
                                </a>
                            </div>
                            <div class="comment__info">
                                <div class="comment__name">Юрий Козин</div>
                                <p class="comment__text">Не раскрыта тема комедийных британских сериалов. Навскидку -
                                    Книжный
                                    магазин Блэка, Идеал, Компьютерщики и много еще
                                </p>
                            </div>
                            <div class="comment__likes">
                                <button type="button">+</button>
                                <span class="comment__likes-count">5</span>
                                <button type="button">-</button>
                            </div>
                        </div>
                        <div class="comment__footer">
                            <a href="#" class="answer__btn">Ответить</a>
                            <div class="comment__date">15 фувраля, 18:02</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="footer">
        <div class="footer__inner">
            <div class="footer__logo">
                <img src="/images/header/logo-1x.png" alt="" class="footer__logo-img">
            </div>
            <div class="footer__copyright">
                © 2021. All rights reserved.
            </div>
        </div>
    </footer>
<@base.main>
</@base.main>

    <script>
        const mainPage = document.querySelector('#page');
        const menu = document.querySelector(".burger");
        const closeBtn = document.querySelector(".close__block");
        const links = document.querySelector("#links");
        const allLinks = document.querySelectorAll(".nav__link-item");
        const header = document.querySelector('#header');
        const btnProfile = document.querySelector('.header__profile--svg');
        const profileContent = document.querySelector('.header__profile-content');

        const allFilterMovies = document.querySelectorAll(".movies__filter-item");
        const openMenu = () => {
            if (links.className.includes("open")) {
                links.classList.remove('open');
                allLinks.forEach((item) => {
                    item.classList.remove("fade");
                });
                mainPage.classList.remove("overflow-hidden");
            } else {
                links.classList.add('open');
                allLinks.forEach((item) => {
                    item.classList.add("fade");
                });
                mainPage.classList.add("overflow-hidden");
            }
        };

        const closeMenu = () => {
            if (links.className.includes("open")) {
                links.classList.remove('open');
                allLinks.forEach((item) => {
                    item.classList.remove("fade");
                });
                mainPage.classList.remove("overflow-hidden");
            }
        };

        const tooltips = () => {
            profileContent.classList.toggle('vis');
        };


        menu.addEventListener("click", openMenu);
        closeBtn.addEventListener("click", closeMenu);
        allLinks.forEach((item) => {
            item.addEventListener("click", closeMenu);
        });
        allFilterMovies.forEach((item) => {
            item.addEventListener("click", function (e) {
                e.preventDefault();
                if (!e.target.getAttribute('class').includes('filter-active')) {
                    allFilterMovies.forEach((i) => {
                        i.classList.remove('filter-active');
                    });
                    this.classList.add('filter-active');
                }
            });
        });
        btnProfile.addEventListener("click", tooltips);
    </script>
