<#import "base.ftlh" as base>

<@base.main>
    <section class="singleFilm">
        <div class="singleFilm__inner">
            <div class="singleFilm__item">
                <div class="single__photo-block">
                    <div class="single__photo-film">
                        <img src="${book.cover}" alt="" class="film__img">
                    </div>
                </div>
                <article class="film__info">
                    <h2 class="film__name">${book.title}</h2>
                    <ul class="film__list-desc">
                        <li class=" film__desc-item film__rating-field">
                            <span class="film__field">Рейтинг:</span> <span class="rating__count">${book.rate}</span>
                        </li>
                        <li class=" film__desc-item film__rating-field">
                            <span class="film__field">Автор:</span> <span class="rating__count">${book.author}</span>
                        </li>
                        <li class="film__desc-item film_genre">
                            <span class="film__field">Жанры:</span>
                            <span>
                                <#list book.categories as genre>
                                    ${genre}
                                </#list>
                            </span>
                        </li>
                        <li class="film__desc-item film__release">
                            <span class="film__field">Первая публикация:</span>
                            <span>${book.releaseYear}</span></li>
                        <li class="film__desc-item film__language"><span class="film__field">Язык:</span>
                            <span>${book.language}</span></li>
                        <li class="film__desc-item film__country"><span class="film__field">Страна:</span>
                            <span>${book.country}</span></li>
                    </ul>
                    <form action="" method="post" class="add_film">
                        <button type="button">Добавить в любимые</button>
                    </form>
                    <!--                <div class="add__love">Добвавлено в любимое</div>-->
                </article>
            </div>

            <div class="singleMovie__description">
                <div class="singleMovie__description-title">Описание</div>
                <div class="singleMovie__description-text">Quisque vitae ultrices justo auctor facilisis neque
                    ${book.description}
                </div>
            </div>

            <div class="singleMovie__comments">
                <div class="singleMovie__comments-top">
                    <div class="singleMovie__comments-header">
                        <div class="singleMovie__comments-title">Рецензии</div>
                        <div class="singleMovie__comments-count">${book.revi}</div>
                    </div>
                    <div class="comment__auth">Чтобы написать комментарий <a href="#">войди</a></div>
                    <form action="" class="comment__write" method="post">
                    <textarea class="comment__field" name="comment" id="comment" cols="30" rows="10"
                              placeholder="Ваш комментарий..."></textarea>
                        <div class="comment__star">
                            <button type="button" class="comment__btn">
                                Оценить
                            </button>
                            <button class="comment__stars" type="button">
                                            <span class="stars">
                                                <span class="star star_one">
                                                    <svg class="symbol__star">
                                                         <use xlink:href="#star"></use>
                                                    </svg>
                                                </span>

                                                 <span class="star star_two">
                                                    <svg class="symbol__star">
                                                         <use xlink:href="#star"></use>
                                                    </svg>
                                                </span>

                                                 <span class="star star_three">
                                                    <svg class="symbol__star">
                                                         <use xlink:href="#star"></use>
                                                    </svg>
                                                </span>

                                                 <span class="star star_four">
                                                    <svg class="symbol__star">
                                                         <use xlink:href="#star"></use>
                                                    </svg>
                                                </span>

                                                 <span class="star star_five">
                                                    <svg class="symbol__star">
                                                         <use xlink:href="#star"></use>
                                                    </svg>
                                                </span>

                                                 <span class="star star_six">
                                                    <svg class="symbol__star">
                                                         <use xlink:href="#star"></use>
                                                    </svg>
                                                </span>

                                                <span class="star star_seven">
                                                    <svg class="symbol__star">
                                                         <use xlink:href="#star"></use>
                                                    </svg>
                                                </span>

                                                <span class="star star_eight">
                                                    <svg class="symbol__star">
                                                         <use xlink:href="#star"></use>
                                                    </svg>
                                                </span>

                                                <span class="star star_nine">
                                                    <svg class="symbol__star">
                                                         <use xlink:href="#star"></use>
                                                    </svg>
                                                </span>

                                                <span class="star star_ten">
                                                    <svg class="symbol__star">
                                                         <use xlink:href="#star"></use>
                                                    </svg>
                                                </span>
                                                <span class="line__star"></span>
                                                <span class="close_star">
                                                    <svg class="symbol__close">
                                                        <use xlink:href="#close_star"></use>
                                                    </svg>
                                                </span>
                                            </span>
                            </button>
                        </div>
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
                                    <img src="assets/images/avatar/avatar.jpg" alt="">
                                </a>
                            </div>
                            <div class="comment__info">
                                <header class="comment__header">
                                    <div class="comment__name">Юрий Козин</div>
                                </header>

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
                <img src="assets/images/header/logo-1x.png" alt="" class="footer__logo-img">
            </div>
            <div class="footer__copyright">
                © 2021. All rights reserved.
            </div>
        </div>
    </footer>

    <!-- Скрипт для отправки рецензии-->
    <script>
        const btnSend = document.querySelector('.btn__comment')
        const blockScore = document.querySelector('.comment__star')

        btnSend.addEventListener('click', function (e) {
            let review = {
                'score': 0
            }

            if (blockScore.childNodes[0].nextElementSibling.textContent.trim() !== 'Оценить') {
                review.score = parseInt(blockScore.childNodes[0].nextElementSibling.textContent.trim())
            }
            console.log(review)
        })
    </script>
    <!--Скрипт для оценки-->
    <script>

        const allBlockScore = document.querySelectorAll('.comment__star')
        const closeBlockScore = document.querySelectorAll('.close_star')

        closeBlockScore.forEach(item => {
            console.log(item)
            item.addEventListener('click', function (e) {
                item.parentElement.parentElement.classList.remove('comment__stars-active')
            })
        })

        allBlockScore.forEach(item => {
            item.childNodes[0].nextElementSibling.addEventListener('click', function (e) {
                console.log(item.childNodes[1].nextElementSibling)
                if (!item.childNodes[1].nextElementSibling.className.includes('comment__stars-active')) {
                    item.childNodes[1].nextElementSibling.classList.add('comment__stars-active')
                }
            })

            const stars = item.querySelectorAll('.star')
            const starsBlock = item.querySelector('.stars')

            stars.forEach((star, index) => {
                star.addEventListener('mouseover', function (e) {
                    for (let i = 0; i <= index; i++) {
                        if (index === 0 || index === 1 || index === 2) {
                            starsBlock.children[i].children[0].style.fill = 'red'
                        } else if (index === 3 || index === 4 || index === 5) {
                            starsBlock.children[i].children[0].style.fill = 'yellow'
                        } else {
                            starsBlock.children[i].children[0].style.fill = 'green'
                        }
                    }
                })

                star.addEventListener('click', function (e) {
                    console.log(index)
                    item.childNodes[0].nextElementSibling.textContent = index + 1
                    item.childNodes[1].nextElementSibling.classList.remove('comment__stars-active')
                })
            })


            starsBlock.addEventListener('mouseout', function (e) {
                for (let i = 0; i < starsBlock.childElementCount - 2; i++) {
                    starsBlock.children[i].children[0].style.fill = 'rgba(0, 0, 0, 0.6)'
                }
            })
        })

    </script>

    <script src="assets/js/app.js"></script>
</@base.main>