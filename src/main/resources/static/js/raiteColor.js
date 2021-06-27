function paintRate(rateItems) {

    for (let item of rateItems) {

        let rate = Number(item.title.replace(',', '.'));

        if (rate < 5) {
            item.style.background = 'red';
        } else if (rate < 8) {
            item.style.background = 'orange';
        } else {
            item.style.background = 'green';
        }
    }
}