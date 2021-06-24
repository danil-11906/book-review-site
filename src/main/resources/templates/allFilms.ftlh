<#import "base.ftlh" as base>

<@base.main>
    <section class="contact--title">
        <div class="contact__bg--allFilm"></div>
        <div class="contact--title-inner">
            <div class="contact__inner-title">All Films</div>
            <div class="contact__inner-subtitle">
                <a href="#">Home</a>
                <div class="contact__line">/</div>
                <div>All Films</div>
            </div>
        </div>
    </section>
    <section class="allFilms">
        <div class="allFilms__inner">
            <div class="all__films-filter">
                <div class="filter__tag">
                    <a href="#" class="filter__tag-item">C высоким рейтингом</a>
                    <a href="#" class="filter__tag-item">Российские</a>
                    <a href="#" class="filter__tag-item">Заружебные</a>
                    <a href="#" class="filter__tag-item">Недавно вышедшие</a>
                    <a href="#" class="filter__tag-item">Скрыть просмотренные</a>
                </div>
                <form action="" method="post" class="filters">
                    <div class="filter__group">
                        <a href="#" class="filter__label">Поиск</a>
                        <div class="filter__field-country">
                            <input class="search__filter" type="text" name="search" placeholder="Поиск...">
                        </div>
                    </div>
                    <div class="filter__group">
                        <a href="#" class="filter__label">Страны</a>
                        <div class="filter__field-country">
                            <div class="field__filter field__filter--country">
                                Все страны
                                <input type="hidden" name="filter-country" value="Все страны">
                            </div>
                            <div class="filter__field-items">
                                <a href="#" class="filter__field-item country-item active__filter-field">
                                    Все страны
                                </a>

                                <a href="#" class="filter__field-item country-item">
                                    Россия
                                </a>

                                <a href="#" class="filter__field-item country-item">
                                    Украина
                                </a>

                                <a href="#" class="filter__field-item country-item">
                                    Сша
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="filter__group">
                        <div class="filter__label">Жанры</div>
                        <div class="filter__field-country">
                            <div class="field__filter field__filter--genre">
                                Все жанры
                                <input type="hidden" name="filter-genre" value="Все жанры">
                            </div>
                            <div class="filter__field-items">
                                <a href="#" class="filter__field-item active__filter-field genre-item">
                                    Все жанры
                                </a>

                                <a href="#" class="filter__field-item genre-item">
                                    Ужасы
                                </a>

                                <a href="#" class="filter__field-item genre-item">
                                    История
                                </a>

                                <a href="#" class="filter__field-item genre-item">
                                    ПРиключения
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="filter__group">
                        <div class="filter__label">Года</div>
                        <div class="filter__field-country">
                            <div class="field__filter field__filter--years">
                                Все года
                                <input type="hidden" name="filter-years" value="Все года">
                            </div>
                            <div class="filter__field-items">
                                <a href="#" class="filter__field-item active__filter-field year-item">
                                    Все года
                                </a>

                                <a href="#" class="filter__field-item year-item">
                                    2021
                                </a>

                                <a href="#" class="filter__field-item year-item">
                                    2020
                                </a>

                                <a href="#" class="filter__field-item year-item">
                                    2019
                                </a>
                            </div>
                        </div>
                    </div>
                    <button class="btn__filter" type="button">Применить</button>
                </form>
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
                        </a>
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
                        </a>
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



        const allFilterLabel = document.querySelectorAll('.filter__label');
        const allFilterField = document.querySelectorAll('.field__filter');
        const countryItems = document.querySelectorAll('.country-item');
        const genreItems = document.querySelectorAll('.genre-item');
        const yearItems = document.querySelectorAll('.year-item');

        allFilterLabel.forEach(
            (item) => {
                item.addEventListener("click", function (e) {
                    e.preventDefault();
                    if (!e.target.getAttribute('class').includes('act-label')) {
                        this.classList.add('act-label');
                        this.nextElementSibling.classList.add('act-display');
                    } else {
                        this.classList.remove('act-label');
                        this.nextElementSibling.classList.remove('act-display');
                        this.nextElementSibling.firstElementChild.classList.remove('act-filter');
                        this.nextElementSibling.childNodes[3].classList.remove('active__filter-item');
                    }
                });
            });
        allFilterField.forEach(
            (item) => {
                item.addEventListener("click", function (e) {
                    if (!e.target.getAttribute('class').includes('act-filter')) {
                        allFilterField.forEach((i) => {
                            i.classList.remove('act-filter');
                            i.nextElementSibling.classList.remove('active__filter-item');
                        });
                        this.classList.add('act-filter');
                        this.nextElementSibling.classList.add('active__filter-item');
                    } else {
                        this.classList.remove('act-filter');
                        this.nextElementSibling.classList.remove('active__filter-item');
                    }
                })
            });

        countryItems.forEach(
            (item) => {
                item.addEventListener('click',function (e) {
                    e.preventDefault();
                    if (!e.target.getAttribute('class').includes('active__filter-field')){
                        countryItems.forEach(
                            (i) => {
                                i.classList.remove('active__filter-field');
                            });
                        this.classList.add('active__filter-field');
                        allFilterField.item(0).childNodes[0].textContent = e.target.textContent.trim();
                        allFilterField.item(0).childNodes[1].value = e.target.textContent.trim();
                        allFilterField.item(0).nextElementSibling.classList.remove('active__filter-item');
                        allFilterField.item(0).classList.remove('act-filter');
                    }
                })
            });

        genreItems.forEach(
            (item) => {
                item.addEventListener('click',function (e) {
                    e.preventDefault();
                    if (!e.target.getAttribute('class').includes('active__filter-field')){
                        genreItems.forEach(
                            (i) => {
                                i.classList.remove('active__filter-field');
                            });
                        this.classList.add('active__filter-field');
                        allFilterField.item(1).childNodes[0].textContent = e.target.textContent.trim();
                        allFilterField.item(1).childNodes[1].value = e.target.textContent.trim();
                        allFilterField.item(1).nextElementSibling.classList.remove('active__filter-item');
                        allFilterField.item(1).classList.remove('act-filter');
                    }
                })
            });

        yearItems.forEach(
            (item) => {
                item.addEventListener('click',function (e) {
                    e.preventDefault();
                    if (!e.target.getAttribute('class').includes('active__filter-field')){
                        yearItems.forEach(
                            (i) => {
                                i.classList.remove('active__filter-field');
                            });
                        this.classList.add('active__filter-field');
                        allFilterField.item(2).childNodes[0].textContent = e.target.textContent.trim();
                        allFilterField.item(2).childNodes[1].value = e.target.textContent.trim();
                        allFilterField.item(2).nextElementSibling.classList.remove('active__filter-item');
                        allFilterField.item(2).classList.remove('act-filter');
                    }
                })
            });
    </script>
</@base.main>