<#import "base.ftlh" as base>

<@base.main>
    <section class="profile">
        <div class="profile__inner">
            <form class="profile__body" method="post" enctype="multipart/form-data">
                <div class="profile__photo">
                    <img src="/images/profile/user-no-big.gif" alt="" class="profile__img">
                    <input type="file" placeholder="Выбрать фото" class="redact__photo">
                </div>
                <ul class="profile__info profile__info-group--change">
                    <li class="profile__info-group">
                        <label class="profile__info-label">
                            Имя:
                            <input type="text" name="name" class="profile__info-field">
                        </label>
                    </li>

                    <li class="profile__info-group">
                        <label class="profile__info-label">
                            Фамилия:
                            <input type="text" name="surname" class="profile__info-field">
                        </label>
                    </li>

                    <li class="profile__info-group">
                        <label class="profile__info-label">
                            Email:
                            <input type="text" name="email" class="profile__info-field">
                        </label>
                    </li>
                </ul>
                <button type="button" class="btn__change-data">Изменить данные</button>
            </form>
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