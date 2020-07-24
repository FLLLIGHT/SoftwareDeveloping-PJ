$(function () {
    let status = $.session.get("loginStatus");
    if(status==="true"){
        $('#toast-2').toast('show');
        $.session.remove("loginStatus");
    }
})
