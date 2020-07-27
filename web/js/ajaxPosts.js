function ajaxPost(sort, imageId) {
    $.ajax({
        type: "POST",
        url: "/SoftwareDeveloping_PJ_war_exploded/post/ajaxQueryPost",
        data: {"sort": sort, "imageId": imageId},
        dataType: 'json',
        beforeSend: function () {
            //请求前
        },
        success: function (data) {
            document.getElementById("comments").innerHTML = "";
            let comments = document.getElementById("comments").innerHTML;
            let i;
            let mySort = $("input[name='sort']:checked").val();
            for(i=0; i<data.data.length; i++){
                comments +=
                    "                    <li class=\"comment\">\n" +
                    "                        <div class=\"d-flex align-items-center text-small\">\n" +
                    "                            <div class=\"text-dark mr-1\">"+data.data[i].userName+"</div>\n" +
                    "                            <div class=\"text-muted\">"+data.data[i].tip+"</div>\n" +
                    "                            <a class=\"badge bg-primary-alt text-primary ml-auto mr-2\" href=\"#\" onclick=\"ajaxLike('"+mySort+"', "+imageId+", "+data.data[i].postId+")\">\n" +
                    "                                <svg class=\"icon bg-primary\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n" +
                    "                                    <path d=\"M16.5 5C14.8905 5 13.0082 6.82463 12 8C10.9918 6.82463 9.1095 5 7.5 5C4.651 5 3 7.22218 3 10.0504C3 13.1835 6 16.5 12 20C18 16.5 21 13.25 21 10.25C21 7.42177 19.349 5 16.5 5Z\" fill=\"#212529\"></path></svg>\n" +
                    "                                "+data.data[i].heat+"\n" +
                    "                            </a>\n" +
                    "                        </div>\n" +
                    "                        <div class=\"my-2\">\n" + data.data[i].post+
                    "                        </div>\n" +
                    "                    </li>";
            }

            document.getElementById("comments").innerHTML = comments;

        },
        error: function () {
            //error
        }
    })
}


function ajaxLike(sort, imageId, postId) {
    $.ajax({
        type: "POST",
        url: "/SoftwareDeveloping_PJ_war_exploded/post/authority/likePost",
        data: {"sort": sort, "imageId": imageId, "postId": postId},
        dataType: 'json',
        beforeSend: function () {
            //请求前
        },
        success: function (data) {
            ajaxPost(sort, imageId);
        },
        error: function () {
            //error
        }
    })
}
