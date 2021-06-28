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
                                    ${genre.title}
                                </#list>
                            </span>
                        </li>
                        <li class="film__desc-item film__release">
                            <span class="film__field">Первая публикация:</span>
                            <span>${book.releaseYear}</span></li>
                        <li class="film__desc-item film__language"><span class="film__field">Язык:</span>
                            <span>${book.language.name}</span></li>
                        <li class="film__desc-item film__country"><span class="film__field">Страна:</span>
                            <span>${book.country.name}</span></li>
                    </ul>
                    <form action="" method="post" class="add_film">
                        <button type="button">Добавить в любимые</button>
                    </form>
                    <!--                <div class="add__love">Добвавлено в любимое</div>-->
                </article>
            </div>

            <div class="singleMovie__description">
                <div class="singleMovie__description-title">Описание</div>
                <div class="singleMovie__description-text">
                    ${book.description}
                </div>
            </div>

            <div class="singleMovie__comments">
                <div class="singleMovie__comments-top">
                    <div class="singleMovie__comments-header">
                        <div class="singleMovie__comments-title">Рецензии</div>
                        <div class="singleMovie__comments-count">${reviews.getTotalElements()}</div>
                    </div>
                    <#if !user??>
                        <div class="comment__auth">Чтобы написать рецензию, необходимо <a href="/login_or_sign_up">войти в аккаунт</a></div>
                    <#else>
                        <form action="" class="comment__write" method="post">
                    <textarea maxlength="1000" class="comment__field" name="comment" id="comment" cols="30" rows="10"
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
                        <button id="send-review" type="button" class="btn__comment">Отправить</button>
                    </span>
                        </form>
                    </#if>
                </div>
                <div class="comment__items">
                    <#list reviews.content as review>
                        <div class="comment__item">
                            <div class="comment__desc">
                                <div class="comment__avatar">
                                    <a href="#" class="comment__avatar-img">
                                        <img
                                             <#if review.author.avatar??>
                                                 src="${review.author.avatar}"
                                             <#else>
                                                 src="/images/no_avatar.jpg"
                                             </#if> alt="">
                                    </a>
                                </div>
                                <div class="comment__info">
                                    <header class="comment__header">
                                        <div class="comment__name">${review.author.name}</div>
                                    </header>

                                    <p class="comment__text">
                                        ${review.text}
                                    </p>
                                </div>
                                <div class="comment__likes">
                                    <button type="button">+</button>
                                    <span class="comment__likes-count">${review.rate}</span>
                                    <button type="button">-</button>
                                </div>
                            </div>
                            <div class="comment__footer">
                                <a href="#" class="answer__btn">Ответить</a>
                                <div class="comment__date">${review.createdAt}</div>
                            </div>
                        </div>
                    </#list>
                    <#if !reviews.isLast()>
                        <button id="see-more-btn" type="button" class="btn__comment">Посмотреть еще</button>
                    </#if>
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
        const btnSend = document.getElementById("send-review")
        const blockScore = document.querySelector('.comment__star')

        btnSend.addEventListener('click', async function (e) {

            let text = document.querySelector('.comment__field').value
            console.log('text: ' + text)
            let body = {
                'text': text,
                'mark': 0
            }
            if (blockScore.childNodes[0].nextElementSibling.textContent.trim() !== 'Оценить') {
                body.mark = parseInt(blockScore.childNodes[0].nextElementSibling.textContent.trim())
            }

            let response = await fetch('/book/${book.id}/addReview',
                {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json;charset=utf-8'
                    },
                    body: JSON.stringify(body)
                })

            if (response.ok) {

                let result = await response.json()
                console.log(result)

                let reviewsBlock = document.querySelector('.comment__items')

                let avatar
                <#if user??>
                    <#if user.avatar??>
                    avatar = `${user.avatar}`
                    <#else>
                    avatar = '/images/no_avatar.jpg'
                    </#if>
                </#if>
                <#if user??>
                    let name = `${user.name}`
                </#if>
                let createdAt = result

                let newReview = document.createElement('div')
                newReview.innerHTML = `<div class="comment__item">
                            <div class="comment__desc">
                                <div class="comment__avatar">
                                    <a href="#" class="comment__avatar-img">
                                        <img src="` + avatar + `" alt=""/>
                                    </a>
                                </div>
                                <div class="comment__info">
                                    <header class="comment__header">
                                        <div class="comment__name">` + name + `</div>
                                    </header>

                                    <p class="comment__text">`
                                        + text + `
                                    </p>
                                </div>
                                <div class="comment__likes">
                                    <button type="button">+</button>
                                    <span class="comment__likes-count">` + 0 + `</span>
                                    <button type="button">-</button>
                                </div>
                            </div>
                            <div class="comment__footer">
                                <a href="#" class="answer__btn">Ответить</a>
                                <div class="comment__date">` + createdAt + `</div>
                            </div>
                        </div>`

                let reviewsCount = reviewsBlock.childElementCount
                let seeMoreBtn = document.getElementById("see-more-btn")
                if (seeMoreBtn != null) {
                    reviewsCount -= 1
                }
                if (reviewsCount % 5 === 0 && reviewsCount >= 5) {

                    console.log(reviewsBlock.children[reviewsCount - 1])
                    reviewsBlock.children[reviewsCount - 1].remove()

                    if (seeMoreBtn == null) {
                        seeMoreBtn = document.createElement('div')
                        seeMoreBtn.innerHTML = `<button id="see-more-btn" type="button" class="btn__comment">Посмотреть еще</button>`
                        reviewsBlock.appendChild(seeMoreBtn)
                    }
                }
                reviewsBlock.insertBefore(newReview, reviewsBlock.firstChild)
            }
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

    <script src="/js/app.js"></script>
</@base.main>