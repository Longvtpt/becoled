<div class="wrap">
    <div class="block-list-sp">
        <div class="block-title">
            <span class="title">Liên hệ</span>
        </div>
        <div style="  float: left;width: 98%;border-top: 1px solid #eee;margin-left: 2%;padding-top: 5px;padding-bottom: 10px; border-bottom: 1px solid #eee;">
            <div style="float: left;width: 98%;margin: 5px 0px;">
                <{$arrHome.new_home}> 
                <p style="color: red"><{$message_sucess}></p>
            </div>
            <form action="<{$smarty.const.SITE_URL}>dang-ky-tu-van.html" method="post" id="frmbooking">
                <table style="float: left" width="50%" border="0" cellpadding="4" cellspacing="0" >
                    <tbody>
                        <tr>
                            <td colspan="2"> <span class="orange" id="txt_error"><{if $flg==2}> Mã xác nhận sai. <{/if}> <{if $flg==2}> Đăng ký thành công. <{/if}></span></td>
                        </tr>
                        <tr>
                            <td align="left" height="33" width="128"><strong>Họ tên</strong></td>
                            <td>
                                <input class="inputC" name="name" id="name" type="text" placeholder="Nhập họ tên." />
                            </td>
                        </tr> 
                        <tr>
                            <td align="left" height="33" width="128"><strong>Email</strong></td>
                            <td>
                                <input class="inputC" style="width:99%;" name="email" id="email" size="20" value="<{$arrAccount['Account']['email']}>" placeholder="Nhập địa chỉ email." type="text">
                            </td>
                        </tr> 
                        <tr>
                            <td align="left" height="33" width="128"><strong>Số điện thoại</strong></td>
                            <td>
                                <input  class="inputC" name="phone" id="phone" type="text" placeholder="Nhập số điện thoại." />
                            </td>
                        </tr>
                        <tr>
                            <td align="left" height="33" width="128" style="vertical-align: top;"><strong>Ghi chú</strong></td>
                            <td><strong>
                                    <textarea style="width:99%;height: 40px; border: 1px solid #aaa;float: left;margin-bottom: 10px;" name="content" id="content"></textarea>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" height="33" width="128"><strong>Mã xác nhận</strong></td>
                            <td>
                                <input style="width:50%;height: 25px;float: left;margin-right: 10px;" name="code" id="code" size="20" type="text">
                                <img style="float: left;margin-right: 5px;" id="img_c" src="<{$smarty.const.SITE_URL}>Ajax/captcha"></span> <a href="javascript:void(0)" onclick="document.getElementById('img_c').src = '<{$smarty.const.SITE_URL}>Ajax/captcha?' + Math.random();" style="line-height: 27px;color: #333">Refresh</a>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" height="33" width="128"><strong></strong></td>
                            <td>
                                <a class="booking_btn" onclick="_sendMess()"/>Đăng ký</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <div style="float: left;margin: 5px 10px 5px 95px;">
                <{$arrHome.maps}>
            </div>
        </div>
    </div>
    <style>
        #txt_error{
            color: red;
            float: left;
            padding: 8px 0px;
        }
        .booking_btn{
            background: #9CD21A;
            padding: 5px 15px;
            cursor: pointer;
            border: 1px solid #bbb;
            color: #fff;
            font-weight: bold;
        }
        .booking_btn:hover{
            background:#00aafe; 
            color: orange;
        }
        .inputC{
            float: left;
            height: 25px;
            width: 99%;
        }
    </style>
    <script>
        function _sendMess() {
            var name = $('#name').val();
            var email = $('#email').val();
            var phone = $('#phone').val();
            var code = $('#code').val();

            if (name.length < 2 || name.length > 250) {
                $('#txt_error').html('Họ tên không được để trống!');
                $('#name').focus();
                return;
            }
            if (!_validateEmail(email)) {
                $('#txt_error').html('Địa chỉ email không đúng định dạng.');
                $('#email').focus();
                return;
            }
            if (!_validatePhone(phone)) {
                $('#txt_error').html('Số điện thoại không đúng định dạng.');
                $('#phone').focus();
                return;
            }
            if (code.length < 2 || code.length > 10) {
                $('#txt_error').html('Mã xác nhận không đúng!');
                $('#code').focus();
                return;
            }
            $('#txt_error').html('');
            $('#frmbooking').submit();
        }
    </script>
</div>