$(function () {
    refreshLoans();             //01

});

function refreshLoans() {
    $("#Items").empty();
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "/asmx/BaseDataService.asmx/GetAllLoans",
        data: "{}",
        dataType: "json",
        success: function (data) {
            //debugger;
            var result = data.d;
            for (var i = 0; i < result.length; i++) {
                $("#LoanTable").append("<tr><td>" + (i + 1) + "</td><td>" + result[i].BBD_TITLE + "</td><td><a class='removeLoan' href='#' data-id='" + result[i].BBD_ID + "'><i style='color:red' class='fa fa-times'></i></a></td><td><a class='updateLoan' data-id='" + result[i].BBD_ID + "' href='#'><i style='color:green' class='fa fa-pencil'></i></a></td></tr>");
            }
        },
        error: function (xhr, status, error) {
            //debugger;
            var windowError = window.open();
            windowError.document.write(xhr.responseText);
        }
    });
}


$('body').on("click", ".updateLoan", function () {
    var id;
    id = $(this).attr("data-id");

    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "/asmx/BaseDataService.asmx/GetById",
        data: "{'BBD_ID':'" + id + "'}",
        dataType: "json",
        success: function (data) {
            //debugger;
            $("#txtBBD_TITLE").val(data.d);
            $("#btnUpdateSaveChangeLoan").attr("data-id", id);
        },
        error: function (xhr, status, error) {
            //debugger;
            var windowError = window.open();
            windowError.document.write(xhr.responseText);
        }
    });
    $("#modalEditLoan").modal('show');
});


//----------------------------------------------------------UPDATE------------------------------------------------------

// 01-------------------------------------------UPDATE
$("#btnUpdateSaveChangeLoan").click(function () {
    //debugger;
    var _id = $(this).attr("data-id");
    var BBD_TITLE = $("#txtBBD_TITLE").val();
    if (BBD_TITLE == "") {
        alert("وارد نمودن عنوان ضروری می باشد");
    }
    else {
        alert("s");

    }
});


//----------------------------------------------------------Delete----------------------------------------------------------

//Loans         //1----------------------------------------------------------Delete
$('body').on("click", ".removeLoan", function () {
    if (confirm("سطر حذف شود ؟")) {
        alert("s");
    }
});

//-----------------------------------------------------------------------Add Click Event-------------------------------------------------

// 01
$("#btnAddNewLoan").click(
    function () {
        $("#modalSaveLoan").modal('show');
    });


//---------------------------------------------------------------Insert----------------------------------------------------------

//1---------------------------------------------------------------InsertLoan
$("#btnNewSaveChangeLoan").click(function () {
    var txt_BBD_TITLE = $("#txt_BBD_TITLE").val();
    if (txt_BBD_TITLE == "") {
        alert("وارد نمودن عنوان ضروری می باشد");
    }
    else {
        alert("s");
        
    }


});



