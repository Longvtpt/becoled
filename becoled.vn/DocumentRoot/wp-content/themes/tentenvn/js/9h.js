function _summit(_id) {
    $("#" + _id).submit();
}
function dktnew() {
    var name = $("#name_dkt").val();
    var email = $("#email_dkt").val();
    if (name.length < 1 || name.length > 150) {
        $("#error_dkt").html('Name in 1 to 150 characters.');
        $("#name_dkt").focus();
        return;
    }
    if (!_validateEmail(email) || email.length > 150) {
        $("#error_dkt").html('Email not valid.');
        $("#email_dkt").focus();
        return;
    }
    $("#error_dkt").html('<img src="/images/loading.gif" />');
    $.post(site_url + "Ajax/dktNews",
            {
                name: name,
                email: email
            },
    function (data, status) {
        $("#error_dkt").html('');
        if (data == "0") {
            $("#error_dkt").html("Subscribe success!");
            $("#name_dkt").val('');
            $("#email_dkt").val('');
        } else if (data == "1") {
            $("#error_dkt").html("Email exist!");
            $("#email_dkt").val('');
            $("#email_dkt").focus();
        } else {
            alert(data);
        }
    });
}
function vTerms() {
    $.post(site_url + "terms.html",
            function (data, status) {
                if (data == "3") {
                    $("#showOrder").html("thanh cong");
                } else if (data == "2") {
                    $("#showOrder").html("that bai");
                } else {
                    $("#showOrder").html(data);
                }
            });
    $('#popup').bPopup();
}
function vDomain(_id) {
    $.post(site_url + "Booking",
            {
                sp: _id
            },
    function (data, status) {
        if (data == "3") {
            $("#showOrder").html("thanh cong");
        } else if (data == "2") {
            $("#showOrder").html("that bai");
        } else {
            $("#showOrder").html(data);
        }
    });
    $('#popup').bPopup();
}
function _orderTemp() {
    var name = $("#order_name").val();
    var address = $("#order_address").val();
    var email = $("#order_email").val();
    var phone = $("#order_phone").val();
    var code = $("#code_c").val();
    if (name.length < 1) {
        $('#order_error').html('Họ tên không được để trống.');
        $("#order_name").focus();
        return false;
    }
    if (address.length < 1) {
        $('#order_error').html('Địa chỉ không được để trống.');
        $("#order_address").focus();
        return false;
    }
    if (!_validateEmail(email)) {
        $('#order_error').html('Email không hợp lệ.');
        $("#order_email").focus();
        return false;
    }
    if (!_validatePhone(phone)) {
        $('#order_error').html('Số điện thoại không hợp lệ.');
        $("#order_phone").focus();
        return false;
    }
    if (code.length < 6) {
        $('#order_error').html('Mã xác nhận hợp lệ');
        $("#order_name").focus();
        return false;
    }
    $('#order_error').html('');
    $("#btn_order").html('Loading <img src="/images/ajax-loader.gif" />');
    $.ajax({
        type: "POST",
        url: site_url + 'Booking/addOrder',
        data: $("body #frm_or").serialize(),
        success: function (result) {
            if (result == "0") {
                $("#showOrder").html('<p style="color:red;font-size:16px;text-align:center;width:100%;margin:20px">Đặt hàng thành công - Cám ơn Quý Khách.</p>\n\
                                               <p style="text-align:center;"><img src="/images/success.png"/></p>');
            } else
            if (result == "2") {
                $("#order_error").html('Mã xác nhận không đúng');
                $("#btn_order").html('<a href="javascript:_orderTemp();" class="button">Đăng ký</a> <a href="javascript:_orderRestart();" class="button">Làm lại</a>');
            } else {
                $("#showOrder").html('<p style="color:red;font-size:16px;text-align:center;width:100%;margin:20px">Đặt hàng thất bại.</p>\n\
                                               <p style="text-align:center;"><img src="/images/fail.png"/></p>');
            }
        }
    });
}
function _orderRestart() {
    $("body #frm_or")[0].reset();
    $("#order_name").focus();
}
function _validateEmail(email) {
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