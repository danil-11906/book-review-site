<#import "base.ftlh" as base>

<@base.main>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script
            src="https://code.jquery.com/jquery-3.5.1.js"
            integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
            crossorigin="anonymous"></script>
</head>
<section class="profile">
    <div class="profile__inner">
        <div class="profile__header">
            <h2 class="profile__title">Ваши рецензии</h2>
            <p class="profile__header-desc">Здесь вы можете просматривать ваши рецензии</p>
        </div>

        <div class="all__films-films">
            <#list reviews as rev>
                <script>
                    let refetch${rev_index} = () => {
                        $.ajax({
                            type: "GET",
                            url: "/papers/reviews/search?page=${rev_index}",
                            success: function(response) {
                                renderTable(response, $('#table'))
                            },
                            dataType: "json",
                            contentType: "application/json"
                        })
                    }
                </script>
                <button class="button" onclick="refetch${rev_index}()">${rev_index + 1}</button>
            </#list>
            <div>
                <table id="table"></table>
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

    <script src="/js/showMoreBook.js"></script>
    <script src="/js/raiteColor.js"></script>

    <script>
        function renderTable(services, table) {

            let innerHtml = '<tr>\n' +
                '               <th>Text</th>' +
                '               <th>Mark</th>' +
                '               <th>Author</th>' +
                '               <th>Date</th>' +
                '            </tr>';

            for (let i = 0; i < services.length; i++) {
                innerHtml += '<tr>';
                innerHtml += '  <td>' + services[i]['text'] + '</td>';
                innerHtml += '  <td>' + services[i]['mark'] + '</td>';
                innerHtml += '  <td>' + services[i]['author']['id'] + '</td>';
                innerHtml += '  <td>' + services[i]['createdAt'] + '</td>';
                innerHtml += '</tr>';
            }

            table.html(innerHtml);

        }
    </script>

    <script>
        let rateItems = document.getElementsByClassName("films__img-rating")
        let parent = document.querySelector(".all__films-films");
        let loadMore = true;
        let currentPage = 1;

        window.onscroll = function () {
            if (loadMore &&
                window.scrollY + 1 >= document.documentElement.scrollHeight - document.documentElement.clientHeight) {

                loadMore = false;

                loadMoreBooks('/book/rest/user/${user.id}?page=' + currentPage + '&size=7&sort=id,desc', parent)
                    .then(haveMore => {
                        loadMore = haveMore;
                        paintRate(rateItems);
                    });

                currentPage += 1;
            }
        }

        paintRate(rateItems);
    </script>

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