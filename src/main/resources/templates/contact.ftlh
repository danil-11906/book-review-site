<#import "base.ftlh" as base>

<@base.main>
    <section class="contact--title">
        <div class="contact__bg"></div>
        <div class="contact--title-inner">
            <div class="contact__inner-title">Contacts</div>
            <div class="contact__inner-subtitle">
                <a href="#">Home</a>
                <div class="contact__line">/</div>
                <div>Contacts</div>
            </div>
        </div>
    </section>

    <section class="contacts">
        <div class="contacts__inner">
            <h2 class="contact__title new__movies-title">GET IN TOUCH</h2>
            <div class="contacts__left">
                <p class="contacts__text">Ut enim ad minim veniam, quis nostrud exercitation ullamco nisi ut aliquip ex ea
                    commodo consequat. Duis aute
                    irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                </p>
                <div class="contact__info">
                    <div class="contact__address contact__item">
                        <svg class="location-symbol">
                            <use xlink:href="#location"></use>
                        </svg>
                        <div class="contact__name">Address</div>
                        <div class="contact__field">329 South Street Court - Albany, NY 83741</div>
                    </div>
                    <div class="contact__phone contact__item">
                        <svg class="phone-symbol">
                            <use xlink:href="#phone"></use>
                        </svg>
                        <div class="contact__name">PHONE</div>
                        <div class="contact__field">(123) 456 - 7890</div>
                    </div>
                    <div class="contact__email contact__item">
                        <svg class="email-symbol">
                            <use xlink:href="#email"></use>
                        </svg>
                        <div class="contact__name">EMAIL</div>
                        <div class="contact__field">info@example.com</div>
                    </div>
                </div>
            </div>
            <form class="contacts__right" method="post">

            </form>
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