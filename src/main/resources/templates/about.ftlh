<#import "base.ftlh" as base>

<@base.main>
    <section class="contact--title">
        <div class="about__bg"></div>
        <div class="contact--title-inner">
            <div class="contact__inner-title">About Us</div>
            <div class="contact__inner-subtitle">
                <a href="/">Home</a>
                <div class="contact__line">/</div>
                <div>About</div>
            </div>
        </div>
    </section>

    <section class="contacts">
        <div class="contacts__inner">
            <div class="about__mission">
                <div class="about__photo">
                    <div class="about__img"></div>
                </div>
                <div class="about__idea">
                    <div class="about__suptitle">WHY CHOOSE US</div>
                    <div class="about__title">
                        OUR MISSION
                    </div>
                    <div class="about__text">
                        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                        fugiat
                        nulla
                        pariatur.
                        <br>
                        <br>
                        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim
                        id
                        est
                        laborum. Sed ut perspiciatis unde omnis.
                    </div>
                </div>
            </div>
            <div class="about__statistic">
                <div class="about__stat-item">
                    <svg class="about__profile-symbol">
                        <use xlink:href="#profile"></use>
                    </svg>
                    <div class="about__count">7733</div>
                    <div class="about__count-name">users</div>
                </div>

                <div class="about__stat-item">
                    <svg class="about__profile-symbol">
                        <use xlink:href="#like"></use>
                    </svg>
                    <div class="about__count">1</div>
                    <div class="about__count-name">likes</div>
                </div>

                <div class="about__stat-item">
                    <svg class="about__profile-symbol">
                        <use xlink:href="#comment"></use>
                    </svg>
                    <div class="about__count">7733</div>
                    <div class="about__count-name">comments</div>
                </div>

                <div class="about__stat-item">
                    <svg class="about__profile-symbol">
                        <use xlink:href="#watch"></use>
                    </svg>
                    <div class="about__count">7733</div>
                    <div class="about__count-name">films</div>
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