<#import "base.ftlh" as base>

<@base.main>
    <#if firstBook??>
        <section class="popular">
            <div class="popular__inner">
                <div class="popular__img">
                    <div class="img-popular" style="background: url('${firstBook.cover}') no-repeat center;
                            background-size: cover;"></div>
                </div>
                <h2 class="popular__title">${firstBook.title}</h2>
                <p class="populat__description-short">${firstBook.description}</p>
                <a href="/book/${firstBook.id}" class="popular__link">Read more
                    <svg class="arrow__right-symbol">
                        <use xlink:href="#arrow-right"></use>
                    </svg>
                </a>
            </div>
        </section>
    </#if>

    <#if topBooks?? && topBooks.content??>
        <section class="top__films">
            <#list topBooks.content as topBook>
                <a href="/book/${topBook.id}" class="top__films-item">
                    <img src="${topBook.cover}" alt="" class="top__films-img">
                    <article class="top__films-info">
                        <h3 class="top__films-title">${topBook.title}</h3>
                        <h4 class="top__films-genre"><#list topBook.categories as category>${category.title}<#sep>, </#list></h4>
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
            </#list>
        </section>
    </#if>


    <section class="new__movies">
        <div class="new__movies-inner">
            <div class="new__movies-header">
                <h2 class="new__movies-title">DISCOVER NEW MOVIES</h2>
                <p class="new__movies-subtitle">Время найти новинки для твоего кинотеатра</p>
            </div>
            <div class="new__movies-body">
                <#--                <div class="new__movies-filter">-->
                <#--                    <a href="#" class="movies__filter-item filter-active">Recent</a>-->
                <#--                    <a href="#" class="movies__filter-item">Most popular</a>-->
                <#--                    <a href="#" class="movies__filter-item">Best</a>-->
                <#--                    <a href="#" class="movies__filter-item">Coming soon</a>-->
                <#--                </div>-->

                <#if freshBooks?? && freshBooks.content??>
                    <div class="new__movies-movies">
                        <#list freshBooks.content as freshBook>
                            <div class="new__movies-item">
                                <a href="/book/${freshBook.id}" class="new__movies-img--block">
                                    <img src="${freshBook.cover}" alt="" class="new__movies-img">
                                </a>
                                <a href="/book/${freshBook.id}" class="new__movies-name">${freshBook.title}</a>
                                <div class="new__movies-genre">${freshBook.description}</div>
                            </div>
                        </#list>
                    </div>
                </#if>
                <div class="view__more-block">
                    <a href="/book/all" class="view__more-btn">View more films</a>
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