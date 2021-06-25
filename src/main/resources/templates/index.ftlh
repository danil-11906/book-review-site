<#import "base.ftlh" as base>

<@base.main>
    <section class="popular">
        <div class="popular__inner">
            <div class="popular__img">
                <div class="img-popular" style="background: url('/static/images/mainpage/top-promo.jpg') no-repeat center;
                                         background-size: cover;"></div>
            </div>
            <h2 class="popular__title">TYLER PERRY'S MADEA HALLOWEEN</h2>
            <p class="populat__description-short">Perspiciatis unde omnis iste natus error sit voluptatem accusantium
                doloremque laudantium</p>
            <a href="#" class="popular__link">Read more
                <svg class="arrow__right-symbol">
                    <use xlink:href="#arrow-right"></use>
                </svg>
            </a>
        </div>
    </section>

    <section class="top__films">
        <a href="#" class="top__films-item">
            <img src="/images/topFilms/post-23-copyright-485x665.jpg" alt="" class="top__films-img">
            <article class="top__films-info">
                <h3 class="top__films-title">PIRATES BAY</h3>
                <h4 class="top__films-genre">Приключение</h4>
                <div class="top__films-link">
                    <div class="block__arrow">
                        <svg class="top__arrow-right--symbol">
                            <use xlink:href="#arrow-right"></use>
                        </svg>
                    </div>
                    More information
                </div>
            </article>
        </a>

        <a href="#" class="top__films-item">
            <img src="/images/topFilms/teoru.webp" alt="" class="top__films-img">
            <article class="top__films-info">
                <h3 class="top__films-title">Теория большого взрыва</h3>
                <h4 class="top__films-genre">Приключение</h4>
                <div class="top__films-link">
                    <div class="block__arrow">
                        <svg class="top__arrow-right--symbol">
                            <use xlink:href="#arrow-right"></use>
                        </svg>
                    </div>
                    More information
                </div>
            </article>
        </a>

        <a href="#" class="top__films-item">
            <img src="/images/topFilms/post-7-copyright.jpg" alt="" class="top__films-img">
            <article class="top__films-info">
                <h3 class="top__films-title">PIRATES BAY</h3>
                <h4 class="top__films-genre">Приключение</h4>
                <div class="top__films-link">
                    <div class="block__arrow">
                        <svg class="top__arrow-right--symbol">
                            <use xlink:href="#arrow-right"></use>
                        </svg>
                    </div>
                    More information
                </div>
            </article>
        </a>

        <a href="#" class="top__films-item">
            <img src="/images/topFilms/post-23-copyright-485x665.jpg" alt="" class="top__films-img">
            <article class="top__films-info">
                <h3 class="top__films-title">PIRATES BAY</h3>
                <h4 class="top__films-genre">Приключение</h4>
                <div class="top__films-link">
                    <div class="block__arrow">
                        <svg class="top__arrow-right--symbol">
                            <use xlink:href="#arrow-right"></use>
                        </svg>
                    </div>
                    More information
                </div>
            </article>
        </a>
    </section>


    <section class="new__movies">
        <div class="new__movies-inner">
            <div class="new__movies-header">
                <h2 class="new__movies-title">DISCOVER NEW MOVIES</h2>
                <p class="new__movies-subtitle">Время найти новинки для твоего кинотеатра</p>
            </div>
            <div class="new__movies-body">
                <div class="new__movies-filter">
                    <a href="#" class="movies__filter-item filter-active">Recent</a>
                    <a href="#" class="movies__filter-item">Most popular</a>
                    <a href="#" class="movies__filter-item">Best</a>
                    <a href="#" class="movies__filter-item">Coming soon</a>
                </div>

                <div class="new__movies-movies">
                    <div class="new__movies-item">
                        <a href="#" class="new__movies-img--block">
                            <img src="/images/topFilms/post-19-copyright-485x598.jpg" alt=""
                                 class="new__movies-img">
                        </a>
                        <a href="#" class="new__movies-name">Mongol</a>
                        <div class="new__movies-genre">History</div>
                    </div>

                    <div class="new__movies-item">
                        <a href="#" class="new__movies-img--block">
                            <img src="/images/topFilms/post-19-copyright-485x598.jpg" alt=""
                                 class="new__movies-img">
                        </a>
                        <a href="#" class="new__movies-name">Mongol</a>
                        <div class="new__movies-genre">History</div>
                    </div>

                    <div class="new__movies-item">
                        <a href="#" class="new__movies-img--block">
                            <img src="/images/topFilms/post-19-copyright-485x598.jpg" alt=""
                                 class="new__movies-img">
                        </a>
                        <a href="#" class="new__movies-name">Теория большого взрыва</a>
                        <div class="new__movies-genre">History</div>
                    </div>

                    <div class="new__movies-item">
                        <a href="#" class="new__movies-img--block">
                            <img src="/images/topFilms/post-25-copyright-485x665.jpg" alt=""
                                 class="new__movies-img">
                        </a>
                        <a href="#" class="new__movies-name">Теория большого взрыва</a>
                        <div class="new__movies-genre">History</div>
                    </div>
                </div>
            </div>
            <div class="view__more-block">
                <a href="#" class="view__more-btn">View more films</a>
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
</@base.main>