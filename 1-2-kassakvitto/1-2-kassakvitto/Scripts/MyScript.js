
function send() {

    var amountElement = document.getElementById("Amount");
    amountElement.focus();
    amountElement.select();
}

window.onload = send();