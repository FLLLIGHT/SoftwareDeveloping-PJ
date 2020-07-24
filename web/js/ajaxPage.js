function ajaxPage(search, sort, select, page) {
    $.ajax({
        type: "POST",
        url: "/SoftwareDeveloping_PJ_war_exploded/image/ajaxQueryImage",
        data: {"search": search, "sort": sort, "select": select, "page": page},
        dataType: 'json',
        beforeSend: function () {
            //请求前
        },
        success: function (data) {
            document.getElementById("searchResults").innerHTML = "";
            let searchResults = document.getElementById("searchResults").innerHTML;
            let i;
            for(i=0; i<6; i++){
                if(i===0||i===3){
                    searchResults += "        <div class=\"row mb-4\">\n";
                }

                searchResults += "                        <div class=\"col-md-6 col-lg-4 d-flex\">\n" +
                    "                <div class=\"card\">\n" +
                    "                    <a href=\"/SoftwareDeveloping_PJ_war_exploded/image/queryImageDetail?imageId="+data[i].imageId+"\">" +
                    "                        <img id=\"img"+i+"\" src=\""+"../images/"+data[i].path+"\" alt=\"Image\" class=\"card-img-top\">\n" +
                    "                    </a>\n" +
                    "                    <div class=\"card-body d-flex flex-column\">\n" +
                    "                        <div class=\"d-flex justify-content-between mb-3\">\n" +
                    "                            <div class=\"text-small d-flex\">\n" +
                    "                                <div class=\"mr-2\">\n" +
                    "                                    <a href=\"#\" id=\"content"+i+"\">"+data[i].content+"</a>\n" +
                    "                                </div>\n" +
                    "                                <span class=\"text-muted\" id=\"dateLastModified"+i+"\">"+data[i].tip+"</span>\n" +
                    "                            </div>\n" +
                    "                            <span class=\"badge bg-primary-alt text-primary\" id=\"heat"+i+"\">\n" +
                    "                    <svg class=\"icon icon-sm bg-primary\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n" +
                    "                      <path d=\"M16.5 5C14.8905 5 13.0082 6.82463 12 8C10.9918 6.82463 9.1095 5 7.5 5C4.651 5 3 7.22218 3 10.0504C3 13.1835 6 16.5 12 20C18 16.5 21 13.25 21 10.25C21 7.42177 19.349 5 16.5 5Z\" fill=\"#212529\" />\n" +
                    "                    </svg>\n" +
                    "                                \n" +
                    "                                "+data[i].heat+"" +
                    "                  </span>\n" +
                    "                        </div>\n" +
                    "                        <a href=\"/SoftwareDeveloping_PJ_war_exploded/image/queryImageDetail?imageId="+data[i].imageId+"\">" +
                    "                            <h4 id=\"title"+i+"\">"+data[i].title+"</h4>\n" +
                    "                        </a>\n" +
                    "                        <p class=\"flex-grow-1\" id=\"description"+i+"\">\n" +
                    "                            "+data[i].description+"\n" +
                    "                        </p>\n" +
                    "                        <div class=\"d-flex align-items-center mt-3\">\n" +
                    "                            <div class=\"ml-1\">\n" +
                    "                                <span class=\"text-small text-muted\">By</span>\n" +
                    "                                <span class=\"text-small\" id=\"author"+i+"\">"+data[i].author+"</span>\n" +
                    "                            </div>\n" +
                    "                        </div>\n" +
                    "                    </div>\n" +
                    "                </div>\n" +
                    "            </div>";

                if(i===2){
                    searchResults += "</div>";
                }
            }

            if(i>=3){
                searchResults += "</div>";
            }

            document.getElementById("searchResults").innerHTML = searchResults;

            // for(i = 0; i<6; i++){
            //     $('img'+i).src="../images/"+data[i].path;
            //     $('dateLastModified'+i).innerHTML=data[i].tip;
            //     $('content'+i).innerHTML=data[i].content;
            //     $('title'+i).innerHTML=data[i].title;
            //     $('description'+i).innerHTML=data[i].description;
            //     $('author'+i).innerHTML=data[i].author;
            //     $('heat'+i).childNodes[0].nodeValue=data[i].heat;
            // }
        },
        error: function () {
            //error
        }
    })
}


