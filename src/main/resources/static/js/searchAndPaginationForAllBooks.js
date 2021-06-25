const button = document.querySelector('#more_btn');

let page = 1;
const size = 7;
let count = document.querySelector('#count').value;
let sort = 'id';
let direction = 'desc';

let booksItems = document.querySelectorAll('.films__item');
if (booksItems.length !== size) {
    button.remove();
}

async function showMore() {
    let response = await getAllBooks();
    if (response.ok) {
        let result = await response.json();
        let books = await result.content;
        for (let i = 0; i < books.length; i++) {
            let categories = books[i].categories;
            let strCategories = '';
            for (let j = 0; j < categories.length; j++) {
                strCategories = categories[j].title + ' ';
            }
            strCategories = strCategories.substr(strCategories.length - 2);
            let book = document.createElement("div");
            book.innerHTML = `<div class="films__item">
                        <div class="films__number">
                            <span class="films__count">${count}</span>
                        </div>
                        <a href="#" class="film__photo">
                            <img src="/images/allFilms/friend.webp" alt="" class="allfilm__img">
                            <span class="films__img-rating rateItem" title="${books[i].rate}">${books[i].rate}</span>
                        </a>
                        <div class="film__info-filter">
                            <a href="#" class="film__info-left">
                                <p class="film__info-name">
                                    ${books[i].title}
                                </p>
                                <p class="film__info-date">
                                    ${books[i].title}, ${books[i].releaseYear}
                                </p>
                                <p class="film__info-metaInfo">
                                    <span class="film__info-country">${books[i].country}</span>
                                    <span class="film__info-genre">
                                        ${strCategories}
                                </span>
                                </p>
                            </a>
                            <div class="film__info-right"></div>
                        </div>
                    </div>`;
            let parent = document.querySelector("#all__films-films");
            parent.append(book);
            count++;
            button.remove();
            parent.append(button);
            paintRate();
        }
        page += 1;
        if (books.length < size) {
            button.remove();
            page = 1;
            sort = 'id';
            direction = 'desc';
            count = 3;
        }
    }
}

async function getAllBooks() {
    return await fetch('/rest/allBooks?page=' + page + '&size=' + size + '&sort=' + sort + ',' + direction,
        {
            headers: {
                'Content-Type': 'application/json;charset=utf-8'
            },
            method: 'GET'
        })
}

button.addEventListener("click", showMore);

let searchForCategory = async () => {
    page = 0;
    count = 1;
    let bookItems = document.querySelectorAll('.films__item');
    bookItems.forEach(e => e.remove());
    let response = await getAllBooks();
    if (response.ok) {
        let result = await response.json();
        let books = await result.content;
        for (let i = 0; i < books.length; i++) {
            let categories = books[i].categories;
            let strCategories = '';
            for (let j = 0; j < categories.length; j++) {
                strCategories = categories[j].title + ' ';
            }
            strCategories = strCategories.substr(strCategories.length - 2);
            let book = document.createElement("div");
            book.innerHTML = `<div class="films__item">
                        <div class="films__number">
                            <span class="films__count">${count}</span>
                        </div>
                        <a href="#" class="film__photo">
                            <img src="/images/allFilms/friend.webp" alt="" class="allfilm__img">
                            <span class="films__img-rating rateItem" title="${books[i].rate}">${books[i].rate}</span>
                        </a>
                        <div class="film__info-filter">
                            <a href="#" class="film__info-left">
                                <p class="film__info-name">
                                    ${books[i].title}
                                </p>
                                <p class="film__info-date">
                                    ${books[i].title}, ${books[i].releaseYear}
                                </p>
                                <p class="film__info-metaInfo">
                                    <span class="film__info-country">${books[i].country}</span>
                                    <span class="film__info-genre">
                                        ${strCategories}
                                </span>
                                </p>
                            </a>
                            <div class="film__info-right"></div>
                        </div>
                    </div>`;
            let parent = document.querySelector("#all__films-films");
            parent.append(book);
            count++;
            button.remove();
            parent.append(button);
        }
        page += 1;
        paintRate();
        if (books.length < size) {
            button.remove();
            page = 1;
            sort = 'id';
            direction = 'desc';
            count = 3;
        }
    }
};

let categoryTop100 = document.querySelector('#category_top100');

async function searchForCategoryTop100() {
    sort = 'rate';
    await searchForCategory();
}
categoryTop100.addEventListener("click", searchForCategoryTop100);

let categoryFresh = document.querySelector('#category_fresh');
async function searchForCategoryFresh() {
    sort = 'releaseYear';
    await searchForCategory();
}
categoryFresh.addEventListener("click", searchForCategoryFresh);

let categoryWhatToRead = document.querySelector('#category_what_to_read');
async function searchForCategoryWhatToRead() {
    sort = 'id';
    await searchForCategory();
}
categoryWhatToRead.addEventListener("click", searchForCategoryWhatToRead);

// let categoryMostTalked = document.querySelector('#category_most_talked');
// categoryMostTalked.addEventListener("click", searchForCategory('id'));

let searchBooksBtn = document.querySelector('#searchBtn');

async function searchBooks() {
    let search = document.querySelector('#searchInput').value;
    direction = 'asc&title=' + search;
    sort = 'id';
    await searchForCategory();
}

searchBooksBtn.addEventListener("click", searchBooks);

page = 1;
count = document.querySelector('#count').value;
sort = 'id';