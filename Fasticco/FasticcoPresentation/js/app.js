

if (Cookies.get("ProductName") == "") {
    Cookies.set("ProductName", "", { expires: 1 });
}


function insertProductToCart() {
    var buttons = document.querySelectorAll(".addToCartBtn");
    var productsName = document.querySelectorAll(".addToCartHiddenInput");
    var productsPrice = document.querySelectorAll(".productPriceHiddenInput");

    buttons.forEach((button, index) => {
        button.addEventListener('click', () => {
            var productName = productsName[index].value;
            var cookieValue = Cookies.get("ProductName") + "-" + productName;
            Cookies.set("ProductName", cookieValue, { expires: 1 });
            readCookie(Cookies.get("ProductName"));
        })
    })

}

function readCookie(cookie) {
    var products = cookie.split('-');
    var names = {};
    var counts = {};

    products.forEach((x) => {
        counts[x] = (counts[x] || 0) + 1;
    });

    for (var element in counts) {
        console.log(element + ' = ' + counts[element]);
    }


}

function totalPrice(counts) {
    var totalPrice = 0;
    for (var element in counts) {
        console.log(element + ' = ' + counts[element]);
    }
}


function remove_duplicates_safe(arr) {
    var seen = {};
    var ret_arr = [];
    for (var i = 0; i < arr.length; i++) {
        if (!(arr[i] in seen)) {
            ret_arr.push(arr[i]);
            seen[arr[i]] = true;
        }
    }
    return ret_arr;

}

insertProductToCart();

