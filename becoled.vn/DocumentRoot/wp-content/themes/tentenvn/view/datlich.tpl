<div class="tab_h" style="float: left;width: 100%">
    <div style="float: left;width: 98%;margin-top: 15px;">
        <div><span style="  font-size: 25px; font-weight: bold; color: #27c200; padding-left: 2%;">ĐẶT LỊCH KHÁM</span></div>
   </div>
    <div class="h_c" style=" float: left;width: 96%;border-top: 1px solid #eee;margin-left: 2%;padding-top: 5px;padding-bottom: 10px; border-bottom: 1px solid #eee;">
       <form action="" method="post" id="frmbooking">
        <table style="float: left;width:50%;padding: 10px" border="0" cellpadding="4" cellspacing="0" >
            <tbody>
                <tr>
                    <td class="text_f">Họ tên:</td>
                    <td><input type="text" name="fullname" id="fullname" placeholder="Họ tên"/></td>
                </tr>
                <tr>
                    <td class="text_f">Ngày khám:</td>
                    <td><input type="text" name="birthday" id="birthday" class="time9h" placeholder="Ngày khám"/></td>
                </tr>
                <tr>
                    <td class="text_f">Điện thoại:</td>
                    <td><input type="text" name="phone" id="phone" placeholder="Điện thoại"/></td>
                </tr>
                <tr>
                    <td class="text_f">Email:</td>
                    <td><input type="text" name="email" id="email" placeholder="Email"/></td>
                </tr>
                <tr>
                    <td class="text_f">Địa chỉ:</td>
                    <td><input type="text" name="address" id="address" placeholder="Địa chỉ"/></td>
                </tr>
                <tr>
                    <td class="text_f">Ghi chú:</td>
                    <td><input type="text" name="note" id="note" placeholder="Ghi chú"/></td>
                </tr>
                <tr>
                    <td colspan="2"><div id="txt_error" style="color: red;font-size: 12px; float: left; padding: 5px 10px; width: 70%;"></div><a onclick="_dathen();" class="btn_dh">ĐẶT HẸN</a></td>
                </tr>
        </tbody>
    </table>
  </form>
        <img alt="contact" src="{$smarty.const.SITE_URL}images/datlich.jpg" style="float: left;width: 460px;padding: 15px;"/>
   </div>
</div>
<script>
    function _dathen() {
                var fullname = $('#fullname').val();
                var address = $('#address').val();
                var email = $('#email').val();
                var birthday = $('#birthday').val();
                var phone = $('#phone').val();

                if (fullname.length < 1) {
                    $('#txt_error').html('Họ tên không được để trống!');
                    $('#fullname').focus();
                    return;
                }
                if (birthday.length < 1) {
                    $('#txt_error').html('Ngày khám không được để trống!');
                    $('#birthday').focus();
                    return;
                }
                if (!_validatePhone(phone)) {
                    $('#txt_error').html('Số điện thoại không đúng định dạng.');
                    $('#phone').focus();
                    return;
                }
                if (!_validateEmail(email)) {
                    $('#txt_error').html('Email không đúng định dạng.');
                    $('#email').focus();
                    return;
                }

                if (address.length < 1) {
                    $('#txt_error').html('Địa chỉ không được để trống');
                    $('#address').focus();
                    return;
                }
                $('#txt_error').html('');
                $.ajax({
                    type: "POST",
                    url: site_url + 'DatLichKham',
                    data: $("body #frmdhk").serialize(),
                    success: function (result) {
                        alert(result);
                        if (result == "0") {
                            $("#txt_error").html('Đặt lịch thành công - Cám ơn quý khách');
                            $("body #frmdhk")[0].reset();
                        } else {
                            $("#txt_error").html('Đặt lịch thất bại');
                        }
                    }
                });
            }
</script>
<style>
table input {
  float: left;
  width: 98%;
  background: #eeffed;
  border: none;
  height: 30px;
  padding-left: 5px;
}
</style>