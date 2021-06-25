<#import "base.ftlh" as base>

<@base.main>
    <section class="profile">
        <div class="profile__inner">
            <div class="profile__header">
                <h2 class="profile__title">Ваши фильмы</h2>
                <p class="profile__header-desc">Здесь вы можете просматривать ваши фильмы</p>
            </div>

            <div class="all__films-films">
                <div class="films__item">
                    <div class="films__number">
                        <span class="films__count">1</span>
                    </div>
                    <a href="#" class="film__photo">
                        <img src="../static/images/allFilms/friend.webp" alt="" class="allfilm__img">
                        <span class="films__img-rating">8.6</span>
                    </a>
                    <div class="film__info-filter">
                        <a href="#" class="film__info-left">
                            <p class="film__info-name">
                                Друзья
                            </p>
                            <p class="film__info-date">
                                Друзья, 1994–2004
                            </p>
                            <p class="film__info-metaInfo">
                                <span class="film__info-country">Russhia</span>
                                <span class="film__info-genre">
                                    комедия, мелодрама
                                </span>
                            </p>
                            <form action="" method="post" class="prof__films-delete">
                                <button type="button" class="btn__delete-films">Удалить фильм</button>
                            </form>
                        </a>
                        <div class="film__info-right"></div>
                    </div>
                </div>

                <div class="films__item">
                    <div class="films__number">
                        <span class="films__count">1</span>
                    </div>
                    <a href="#" class="film__photo">
                        <img src="../static/images/allFilms/friend.webp" alt="" class="allfilm__img">
                        <span class="films__img-rating">8.6</span>
                    </a>
                    <div class="film__info-filter">
                        <a href="#" class="film__info-left">
                            <p class="film__info-name">
                                Друзья
                            </p>
                            <p class="film__info-date">
                                Друзья, 1994–2004
                            </p>
                            <p class="film__info-metaInfo">
                                <span class="film__info-country">Russhia</span>
                                <span class="film__info-genre">
                                    комедия, мелодрама
                                </span>
                            </p>
                            <form action="" method="post" class="prof__films-delete">
                                <button type="button" class="btn__delete-films">Удалить фильм</button>
                            </form>
                        </a>
                        <div class="film__info-right"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="footer">
        <div class="footer__inner">
            <div class="footer__logo">
                <img src="../static/images/header/logo-1x.png" alt="" class="footer__logo-img">
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