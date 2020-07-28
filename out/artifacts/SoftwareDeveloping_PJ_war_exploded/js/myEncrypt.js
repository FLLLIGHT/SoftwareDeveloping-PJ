function submitForm() {
    console.log($("#pass").val());
    // Encrypt with the public key...
    var hash = md5($('#pass').val());
    if(document.getElementById("pass").value!=='') {
        document.getElementById("pass").value = hash;
    }
    if(document.getElementById("passwordConfirm")!==null){
        if(document.getElementById("passwordConfirm").value!=='') {
            document.getElementById("passwordConfirm").value = hash;
        }
    }
    return true;
}
