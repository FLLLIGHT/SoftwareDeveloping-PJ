function ajaxPage(page) {
    $.ajax({
        type: "POST",
        url: "/SoftwareDeveloping_PJ_war_exploded/image/authority/ajaxQueryUploadedImages",
        data: {"page": page},
        dataType: 'json',
        beforeSend: function () {
            //请求前
        },
        success: function (data) {
            document.getElementById("uploadedImages").innerHTML = "";
            document.getElementById("modal").innerHTML = "";
            let modal = document.getElementById("modal").innerHTML;
            let uploadedImages = document.getElementById("uploadedImages").innerHTML;
            let i;
            for(i=0; i<data.data.length; i++){
                if(i===0||i===3){
                    uploadedImages += "        <div class=\"row mb-4\">\n";
                }

                uploadedImages += "                        <div class=\"col-md-6 col-lg-4 d-flex\">\n" +
                    "                <div class=\"card\">\n" +
                    "                    <a href=\"/SoftwareDeveloping_PJ_war_exploded/image/queryImageDetail?imageId="+data.data[i].imageId+"\">" +
                    "                        <img id=\"img"+i+"\" src=\""+"/SoftwareDeveloping_PJ_war_exploded/images/"+data.data[i].path+"\" alt=\"Image\" class=\"card-img-top\">\n" +
                    "                    </a>\n" +
                    "                    <div class=\"card-body d-flex flex-column\">\n" +
                    "                        <div class=\"d-flex justify-content-between mb-3\">\n" +
                    "                            <div class=\"text-small d-flex\">\n" +
                    "                                <div class=\"mr-2\">\n" +
                    "                                    <a href=\"#\" id=\"content"+i+"\">"+data.data[i].content+"</a>\n" +
                    "                                </div>\n" +
                    "                                <span class=\"text-muted\" id=\"dateLastModified"+i+"\">"+data.data[i].tip+"</span>\n" +
                    "                            </div>\n" +
                    "                            <span class=\"badge bg-primary-alt text-primary\" id=\"heat"+i+"\">\n" +
                    "                    <svg class=\"icon icon-sm bg-primary\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n" +
                    "                      <path d=\"M16.5 5C14.8905 5 13.0082 6.82463 12 8C10.9918 6.82463 9.1095 5 7.5 5C4.651 5 3 7.22218 3 10.0504C3 13.1835 6 16.5 12 20C18 16.5 21 13.25 21 10.25C21 7.42177 19.349 5 16.5 5Z\" fill=\"#212529\" />\n" +
                    "                    </svg>\n" +
                    "                                \n" +
                    "                                "+data.data[i].heat+"" +
                    "                  </span>\n" +
                    "                        </div>\n" +
                    "                        <a href=\"/SoftwareDeveloping_PJ_war_exploded/image/queryImageDetail?imageId="+data.data[i].imageId+"\">" +
                    "                            <h4 id=\"title"+i+"\">"+data.data[i].title+"</h4>\n" +
                    "                        </a>\n" +
                    "                        <p class=\"flex-grow-1\" id=\"description"+i+"\">\n" +
                    "                            "+data.data[i].description+"\n" +
                    "                        </p>\n" +
                    "                        <div class=\"d-flex align-items-center mt-3\">\n" +
                    "                            <div class=\"ml-1\">\n" +
                    "                                <span class=\"text-small text-muted\">By</span>\n" +
                    "                                <span class=\"text-small\" id=\"author"+i+"\">"+data.data[i].author+"</span>\n" +
                    "                            </div>\n" +
                    "                            <div class=\"ml-7\">\n" +
                    "                                <a class=\"text-small ml-2\" href=\""+"/SoftwareDeveloping_PJ_war_exploded/image/authority/jumpToEditUploadedImage?imageId="+data.data[i].imageId+""+"\">edit</a>\n" +
                    "                                <a class=\"text-small ml-2\" data-toggle=\"modal\" data-target=\"#modal"+i+"\" href=\#\">remove</a>\n" +
                    "                            </div>"+
                    "                        </div>\n" +
                    "                    </div>\n" +
                    "                </div>\n" +
                    "            </div>";

                if(i===2){
                    uploadedImages += "</div>";
                }



                modal +=
                    "    <div class=\"modal fade\" id=\"modal"+i+"\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\n" +
                    "        <div class=\"modal-dialog\" role=\"document\">\n" +
                    "            <div class=\"modal-content bg-primary border-0 text-light\">\n" +
                    "                <div class=\"modal-body\">\n" +
                    "                    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n" +
                    "                        <svg class=\"icon bg-white\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n" +
                    "                            <path d=\"M16.2426 6.34311L6.34309 16.2426C5.95257 16.6331 5.95257 17.2663 6.34309 17.6568C6.73362 18.0473 7.36678 18.0473 7.75731 17.6568L17.6568 7.75732C18.0473 7.36679 18.0473 6.73363 17.6568 6.34311C17.2663 5.95258 16.6331 5.95258 16.2426 6.34311Z\"\n" +
                    "                                  fill=\"#212529\" />\n" +
                    "                            <path d=\"M17.6568 16.2426L7.75734 6.34309C7.36681 5.95257 6.73365 5.95257 6.34313 6.34309C5.9526 6.73362 5.9526 7.36678 6.34313 7.75731L16.2426 17.6568C16.6331 18.0473 17.2663 18.0473 17.6568 17.6568C18.0474 17.2663 18.0474 16.6331 17.6568 16.2426Z\" fill=\"#212529\"\n" +
                    "                            />\n" +
                    "                        </svg>\n" +
                    "                    </button>\n" +
                    "                    <div class=\"m-xl-4 m-3\">\n" +
                    "                        <div class=\"text-center mb-4\">\n" +
                    "                            <h4 class=\"h3\">Confirmation!</h4>\n" +
                    "                            <div class=\"progress bg-primary-alt my-3\">\n" +
                    "                                <div class=\"progress-bar bg-primary-3\" role=\"progressbar\" style=\"width: 25%\" aria-valuenow=\"25\" aria-valuemin=\"0\" aria-valuemax=\"100\"></div>\n" +
                    "                            </div>\n" +
                    "                            <p>Are you sure to remove this picture?</p>\n" +
                    "                            <a href=\""+"/SoftwareDeveloping_PJ_war_exploded/image/authority/removeUploadedImage?imageId="+data.data[i].imageId+"\" class=\"btn btn-white\">Remove</a>\n" +
                    "                        </div>\n" +
                    "                    </div>\n" +
                    "                </div>\n" +
                    "            </div>\n" +
                    "        </div>\n" +
                    "    </div>";
            }

            if(i>=3){
                uploadedImages += "</div>";
            }

            document.getElementById("uploadedPages").innerHTML = "";
            let uploadedPages = document.getElementById("uploadedPages").innerHTML;

            if(data.data.length>0) {
                uploadedPages += "<div class=\"row justify-content-between align-items-center\">\n" +
                    "    <div class=\"col-auto\">\n" +
                    "        <a href=\"#\" class=\"btn btn-outline-white\" onclick=\"ajaxPage(" + (data.page.pageNo - 1) + ")\">Previous</a>\n" +
                    "    </div>\n" +
                    "    <div class=\"col-auto\">\n" +
                    "        <nav>\n" +
                    "            <ul class=\"pagination mb-0\">";

                for (i = 1; i <= data.page.totalPages; i++) {
                    if (i === data.page.pageNo) {
                        uploadedPages += "                <li class=\"page-item active\"><a class=\"page-link\" href=\"#\" onclick=\"ajaxPage(" + i + ")\">" + i + "</a>\n" +
                            "                </li>";
                    } else {
                        uploadedPages += "                <li class=\"page-item\"><a class=\"page-link\" href=\"#\" onclick=\"ajaxPage(" + i + ")\">" + i + "</a>\n" +
                            "                </li>";
                    }
                }

                uploadedPages += "            </ul>\n" +
                    "        </nav>\n" +
                    "    </div>\n" +
                    "    <div class=\"col-auto\">\n" +
                    "        <a href=\"#\" class=\"btn btn-outline-white\" onclick=\"ajaxPage("+ (data.page.pageNo + 1) + ")\">Next</a>\n" +
                    "    </div>\n" +
                    "</div>";

            }



            document.getElementById("uploadedImages").innerHTML = uploadedImages;
            document.getElementById("uploadedPages").innerHTML = uploadedPages;
            document.getElementById("modal").innerHTML = modal;

        },
        error: function () {
            //error
        }
    })
}
