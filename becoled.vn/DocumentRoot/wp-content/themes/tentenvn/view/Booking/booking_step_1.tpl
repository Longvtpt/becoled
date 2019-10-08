<section class="check-out">
    <div class="container">
        <div class="heading">
            Thực hiện đặt hàng
        </div>
        <{if $flg==0}>
            <form method="post" action="" id="frmOr">
                <div class="row form-checkout">
                    <div class="col-md-3 col-sm-6 step1">
                        <div class="heading">
                            <span class="icon">1</span>
                            <span class="text">Thông tin khách hàng</span>
                        </div>
                        <div class="body">
                            <div class="radio">
                                <span class="title">Đăng ký thành viên:</span>
                                <label>
                                    <input type="radio" checked="" value="option1" name="optionsRadios">
                                    <span>Có</span>
                                </label>
                                <label>
                                    <input type="radio" value="option2" name="optionsRadios">
                                    <span>Không</span>
                                </label>
                            </div>
                            <div class="form-group">
                                <label> <sup>*</sup>Họ và tên</label>
                                <input type="text" name="name_order" id="name_order" class="form-control">
                            </div>
                            <div class="form-group">
                                <label> <sup>*</sup>Điện thoại</label>
                                <input type="text" name="sdt_order" id="sdt_order" class="form-control">
                            </div>
                            <div class="form-group">
                                <label > <sup>*</sup>Email</label>
                                <input type="text" name="email_order" id="email_order" class="form-control">
                            </div>
                            <div class="form-group">
                                <label > <sup>*</sup>Địa chỉ</label>
                                <input type="text" name="diachi_order" id="diachi_order" class="form-control">
                            </div>
                            <div class="form-group">
                                <label >Ghi chú</label>
                                <textarea rows="3" name="note_order" class="form-control"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 step2">
                        <div class="heading">
                            <span class="icon">2</span>
                            <span class="text">Phương thức thanh toán</span>
                        </div>
                        <div class="body">
                            <div class="radio">
                                <label>
                                    <input type="radio" checked="" value="1" name="optionsthanhtoan">
                                    <span>Chuyển khoản ngân hàng</span>
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" value="2" name="optionsthanhtoan">
                                    <span>Thanh toán an toàn qua Ngân lượng</span>
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" value="3" name="optionsthanhtoan">
                                    <span>Thu tiền khi giao hàng (COD)</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12 step3">
                        <div class="heading">
                            <span class="icon"></span>
                            <span class="text">Xác nhận dơn hàng</span>
                        </div>
                        <div class="boby">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Sản phẩm</th>
                                        <th>Số lượng</th>
                                        <th>Tổng</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <{$totalPrice=0}>
                                    <{if count($arrProductHome)>0}>
                                    <{section name=num loop=$arrProductHome}>
                                    <tr>
                                        <td class="name"><{$arrProductHome[num].product_name}></td>
                                        <td><input value="<{$arrProductHome[num].quantity}>" v="<{$arrProductHome[num].product_id}>" onblur="setQuantity(this);" name="quantity" id="quantity" type="text" style="width:50px" /></td>
                                        <td><span id="total_<{$arrProductHome[num].product_id}>"><{($arrProductHome[num].quantity*$arrProductHome[num].product_price)|number_format:0:".":","}></span> đ </td>
                                        <td ><a href="<{$smarty.const.SITE_URL}>Booking/remove/<{$arrProductHome[num].product_id}>" class="remove"><i class="fa fa-times"></i></a></td>
                                <input type="hidden" ss="<{$totalPrice=$totalPrice+($arrProductHome[num].product_price*$arrProductHome[num].quantity)}>" value="<{$arrProductHome[num].product_price}>" id="price_<{$arrProductHome[num].product_id}>">
                                </tr>
                                <{/section}>
                                <{else}>
                                <tr class="rowcolor">
                                    <td colspan="3" style="text-align: center">Không có sản phẩm.</td>
                                </tr>
                                <{/if}>
                                <tr class="total">
                                    <td colspan="2" class="text-right">Thành tiền </td>
                                    <td colspan="2" id="priceTotalV"><{$totalPrice|number_format:0:".":","}> đ</td>
                                    <input type="hidden" value="<{$totalPrice}>" id="priceTotal"/>
                                </tr>
                                </tbody>
                            </table>
                            <p class="text-right"><span id="error_order" style="color:red;float:left"></span><a class="btn btn-default btn-dat-hang" <{if count($arrProductHome)>0}>onclick="orderNow()"<{else}>onclick="alertOrder()"<{/if}>>Đặt hàng</a></p>
                        </div>
                    </div>
                </div>
            </form>
        <{elseif $flg==1}>
            <div class="row form-checkout">
                    <div class="col-md-3 col-sm-6 step1">
                        <span class="text">Đặt hàng thành công.</span>
                    </div>
            </div>
        <{/if}>
    </div>
</section>

<{literal}>
<script>
    function orderNow() {
        var name = $("#name_order").val();
        var sdt = $("#sdt_order").val();
        var email = $("#email_order").val();
        var diachi = $("#diachi_order").val();
        var order = parseFloat($("#priceTotal").val());

        if (name.length < 1 || name.length > 150) {
            $("#name_order").focus();
            $("#error_order").html('Họ tên phải từ 1 - 150 kí tự.');
            return false;
        }
        if (!_validatePhone(sdt)) {
            $("#sdt_order").focus();
            $("#error_order").html('Số điện thoại không đúng.');
            return false;
        }
        if (!_validateEmail(email)) {
            $("#email_order").focus();
            $("#error_order").html('Địa chỉ Email không đúng.');
            return false;
        }
        if (diachi.length < 1 || diachi.length > 250) {
            $("#diachi_order").focus();
            $("#error_order").html('Địa chỉ phải từ 1 - 250 kí tự.');
            return false;
        }
        $("#error_order").html('Loading...');
        $("#frmOr").submit();
    }
    function alertOrder(){
        $("#error_order").html('Quý khách vui lòng chọn sản phẩm để đặt hàng.');
    }
    function setGif() {
        var gif_code = $("#gif_code").val();
        var url = siteurl + "Ajax/setGifCode/" + gif_code;
        $.get(url, function (data, status) {
            if (data == "2") {
                $("#er_gif").html('Gif code not exits');
                $("#gif_code").val("");
            } else if (data == "1") {
                $("#er_gif").html('Gif code fail.');
                $("#gif_code").val("");
            } else {
                $("#er_gif").html(data);
            }
        });
    }
    function setQuantity(_this) {
        var product_id = parseInt($(_this).attr('v'));
        var quantity = parseInt($(_this).val());
        var price = parseFloat($("#price_" + product_id).val());
        var totalPrice = parseFloat($("#priceTotal").val());
        var url = siteurl + "Booking/setQuantity/" + product_id + "_" + quantity;
        $("#total_" + product_id).html(commaSeparateNumber(price * quantity));
        $.get(url, function (data,status) {
            var ordernum = parseInt(document.getElementById("numberOrder").textContent);
            totalPrice = totalPrice + (price * parseInt(data));
            $("#priceTotal").val(totalPrice);
            $("#priceTotalV").html(commaSeparateNumber(totalPrice) + " đ");
            document.getElementById("numberOrder").innerHTML = (parseInt(data) + parseInt(ordernum));
        });
    }
    function commaSeparateNumber(val) {
        while (/(\d+)(\d{3})/.test(val.toString())) {
            val = val.toString().replace(/(\d+)(\d{3})/, '$1' + ',' + '$2');
        }
        return val;
    }
</script>
<{/literal}>
</div>