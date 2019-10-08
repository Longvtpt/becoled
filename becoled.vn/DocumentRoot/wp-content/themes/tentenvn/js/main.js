function dktnew() {
    var phone = $("#phone_dkt").val();
    var email = $("#email_dkt").val();
    if (!_validatePhone(phone) || phone.length > 30) {
        $("#sub_newdkt").html('Số điện thoại không đúng.');
        $("#phone_dkt").focus();
        return false;
    }
    if (!_validateEmail(email) || email.length > 150) {
        $("#sub_newdkt").html('Email không đúng định dạng.');
        $("#email_dkt").focus();
        return false;
    }
    $("#sub_newdkt").html("Load...!");
    $.post(siteurl + "Ajax/dktNews",
            {
                email: email,
                phone: phone,
            },
            function (data, status) {
                if (data == "0") {
                    $("#sub_newdkt").html("Đăng ký nhận tin thành công!");
                } else if (data == "1") {
                    $("#email_dkt").focus();
                    $("#email_dkt").val('');
                    $("#sub_newdkt").html("Email đã tồn tại!");
                } else {
                    alert(data);
                }
            });
}
function ordernew_f(){
    var name = $("#name_or").val();
    var phone = $("#phone_or").val();
    var email = $("#email_or").val();
    var note = $("#note_or").val();
    if (name.length < 1 || phone.length > 100) {
        $("#sub_or").html('Vui lòng nhập họ tên từ 1 - 100 kí tự.');
        $("#name_or").focus();
        return false;
    }
    if (!_validateEmail(email) || email.length > 150) {
        $("#sub_or").html('Email không đúng định dạng.');
        $("#email_or").focus();
        return false;
    }
    if (!_validatePhone(phone) || phone.length > 30) {
        $("#sub_or").html('Số điện thoại không đúng.');
        $("#phone_or").focus();
        return false;
    }
    if (note.length < 1 || note.length > 1000) {
        $("#sub_or").html('Vui lòng nhập Nội dung đặt hàng từ 1 - 1000 kí tự.');
        $("#note_or").focus();
        return false;
    }
    $("#sub_or").html("Load...!");
    $.post(siteurl + "Ajax/orderNewF",
            {
                email: email,
                phone: phone,
                name: name,
                note: note,
            },
            function (data, status) {
                if (data == "0") {
                    $("#sub_or").html("Đăng hàng nhanh thành công!");
                } else {
                    $("#sub_or").html(data);
                }
            });

}
function _validateEmail(email) {
    if (email.length > 150) {
        return false;
    }
    var re = /^[0-9a-zA-Z._%+-]+@[-0-9a-zA-Z.+_]+\.[a-zA-Z]{2,4}$/;
    return re.test(email);
}
function _validateNum(_val) {
    var re = /^[+-]?\d+(\.\d+)?([eE][+-]?\d+)?$/;
    return re.test(_val);
}
function _validateZipcode(_val) {
    var re = /^(\d{5}|\d{5}-\d{4})$/;
    return re.test(_val);
}
function _validatePhone(_val) {
    var re = /^\(?(\d{3,5})\)?[-. ]?(\d{3,5})[-. ]?(\d{4,10})$/;
    return re.test(_val);
}
function _validateWebUrl(_val) {
    var re = /^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/|www\.|\w)[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/;
    return re.test(_val);
}
function _validateDateTime(_val) {
    var re = /^((\d{4}[\/-]\d{2}[\/-]\d{2})|(\d{4}[\/-]\d{2}[\/-]\d{2}( )?(\d{2}:\d{2}(:\d{2})?)?[ ]?(AM|PM|am|pm|aM|Am|Pm|mP)?( )?))$/;
    return re.test(_val);
}

