function handleSubmit() {
    //const name = document.getElementById('name').value;
    //const surname = document.getElementById('surname').value;
    var fname = document.getElementById('fname').value;
    var lname = document.getElementById('lname').value;
    var address = document.getElementById('ads').value;
    var quantity = document.getElementById('qty').value;
    var fruit = document.getElementById('frt').value;
    var price = document.getElementById('price').value;
    

    sessionStorage.setItem("FIRST_NAME", fname);
    sessionStorage.setItem("LAST_NAME", lname);
    sessionStorage.setItem("ADDRESS", address);
    sessionStorage.setItem("QUANTITY", quantity);
    sessionStorage.setItem("FRUIT", fruit);
    sessionStorage.setItem("PRICE", price);

    return false;
}