var a = document.cookie;
if (a.productIds)
    a = "productName=0; max-age=3600";

function testButton() {
    var buttons = document.querySelectorAll(".addToCartBtn");
    var productIds = document.querySelectorAll(".addToCartHiddenInput");

    buttons.forEach((button, index) => {
        button.addEventListener('click', () => {
            a = a + "-" + productIds[index].value;
            console.log(a);
        })
    })

}



window.onload = () => {
    console.log(a);
}

testButton();