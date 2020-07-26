function ajaxFriend(search) {
    $.ajax({
        type: "POST",
        url: "/SoftwareDeveloping_PJ_war_exploded/friend/authority/searchUser",
        data: {"search": search},
        dataType: 'json',
        beforeSend: function () {
            //请求前
        },
        success: function (data) {
            document.getElementById("searchUserResults").innerHTML = "";
            let searchUserResults = document.getElementById("searchUserResults").innerHTML;
            if(data.found==="true") {
                searchUserResults +=
                    "                <thead>\n" +
                    "                <tr>\n" +
                    "                    <th scope=\"col\">#</th>\n" +
                    "                    <th scope=\"col\">username</th>\n" +
                    "                    <th scope=\"col\">email</th>\n" +
                    "                    <th scope=\"col\">operation</th>\n" +
                    "                </tr>\n" +
                    "                </thead>\n" +
                    "                <tbody>\n" +
                    "                <tr>\n" +
                    "                    <th scope=\"row\">1</th>\n" +
                    "                    <td>" + data.username + "</td>\n" +
                    "                    <td>" + data.email + "</td>\n" +
                    "                    <td>" + "<a href=\"/SoftwareDeveloping_PJ_war_exploded/friend/sendOrAcceptFriendInvitation?uid2=" + data.uid + "\">add</a>" + "</td>\n" +
                    "                </tr>\n" +
                    "                </tbody>";
            }
            document.getElementById("searchUserResults").innerHTML = searchUserResults;
        },
        error: function () {
            //error
        }
    })
}

function submitForm(){
    let search = document.getElementById("search").value;
    ajaxFriend(search);
    return false;
}


function ajaxSetCollection(status) {
    $.ajax({
        type: "POST",
        url: "/SoftwareDeveloping_PJ_war_exploded/friend/authority/setShowCollection",
        data: {"status": status},
        dataType: 'json',
        beforeSend: function () {
            //请求前
        },
        success: function (data) {

        },
        error: function () {
            //error
        }
    })
}

