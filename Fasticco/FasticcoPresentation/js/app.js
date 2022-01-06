

if (Cookies.get("ProductName") == "") {
    Cookies.set("ProductName", "", { expires: 1 });
}

if (Cookies.get("TotalPrice") == "") {
    Cookies.set("TotalPrice", "", { expires: 1 });
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
    totalPrice(counts);
}

function totalPrice(counts) {
    var totalPrice = 0;
    for (var element in counts) {
        if (element != "undefined") {
            var s = "#" + element;
            var price = parseFloat(document.querySelector(s).value) * parseInt(counts[element]);
            totalPrice += price;
        }
    }
    Cookies.set("TotalPrice", totalPrice, { expires: 1 });
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


function cartData(cookie, cookie2) {
    var cart = document.querySelector("#cart");
    if (cart) {
        var cartData = '';
        var products = cookie.split('-');
        var names = {};
        var counts = {};

        products.forEach((x) => {
            counts[x] = (counts[x] || 0) + 1;
        });

        var skip = 0;
        for (var element in counts) {
            if (skip > 0) {

                cartData += '<p>' + counts[element] + 'X ' + element + '</p><br />';
            }
            skip++;
        }

        var orderTextData = '';
        skip = 0;
        for (var element in counts) {
            if (skip > 0) {

                orderTextData += counts[element] + 'X ' + element + ' / ';
            }
            skip++;
        }

        cartData += '<p>Ukuona cena: ' + cookie2 + '</p>';
        cartData += '<br/><input type="submit" class="btn btn-danger btnDeleteCart" name="deleteCookie" value="Isprazni korpu" />';
        cart.innerHTML = cartData;

        var orderText = document.querySelector(".textForOrder");
        var totalPrice = document.querySelector(".totalPriceHidden");

        orderText.value = orderTextData;
        totalPrice.value = cookie2;
    }
}


function deleteCart() {
    var btnDeleteCart = document.querySelector(".btnDeleteCart");
    if (btnDeleteCart) {
        btnDeleteCart.addEventListener('click', () => {
            Cookies.remove('ProductName')
            Cookies.remove('TotalPrice')
            window.location.reload();
        })
    }
}


insertProductToCart();
window.onload = cartData(Cookies.get("ProductName"), Cookies.get("TotalPrice"));
deleteCart();



