<div class="wrap">
    <link href="{$smarty.const.SITE_URL}css/stickytooltip.css" rel="stylesheet" type="text/css" />
    {literal}
        <style>
            .h_c .sp{
                position: relative;
                float: left;
                width: 130px;
                height: 260px;
                margin: 10px 4px 4px 4px;
                margin-left: 11px;
            }  
            .h_c .sales{
                background: url(/images/discount.png) no-repeat;  width: 25px;height: 15px;position: absolute;right: 0px;padding: 18px 15px;color: #fff;font-weight: bold;
            }
            .img_sp img{
                float: left;
                width: 130px;
                height: 200px;
                margin-right: 10px;
            }
            .name_sp a{
                color: #eee;
            }
            .name_sp a:hover{
                color: orange;
            }
            .name_sp{
                color: #00a6e4;
                margin-left: 3px;
                float: left;
                width: 105px;
                height: 55px;
                overflow: hidden;
                text-align: center;
                font-weight: bold;
            }
            .price_sp{
                line-height: 20px
            }
            .price_sp .cur_price{
                float: left;
                color: orange;
                font-weight: bold;
                margin-left: 5px;
            }
            .price_sp .old_price{
                font-size: 10px;color: #888;margin-right: 5px;float: right;
            }
            .search_field{
                float: left
            }
            .search_field{
                text-align: center;
                margin-right: 5px; 
            }
            .search_field label{
                font-size: 11px;
                text-align: center
            }
            .searchsubmit{
                color: #fff;
                cursor: pointer;
            }
            .searchsubmit:hover{
                color: #0092ef;
            }
            .footer_item {
                float: left;
                width: 150px;
                min-height: 50px;
                margin: 5px;
                text-align: center;
                border: 5px solid #fff;
                background-color: #284776;
                border-radius: 5px;
            }
            .footer_item img {
                max-width: 120px;
                max-height: 50px;
                margin: 5px;
                border: 5px solid #fff;
                border-radius: 5px;
            }
            .footer_item h2 {
                font-size: 1.2em;
                font-weight: bold;
                color: #fff;
            }
            .breadcrumb_nav {
                width: 280px;
                float: right;
            }
            .breadcrumb_nav a {
                font-weight: bold;
                color: #144f8d;
                font-size: 12px;
            }
        </style>
    {/literal}
    <div style="float: left;width: 968px;margin-top: 5px;">
        <div class="h_t" style="color: orange;font-size: 14px;margin: 5px;float: left;width: 968px;">
            <div class="footer" style="">
                <div class="footer_item">
                    <a href="/">
                        <img class="smallImage" src="{$smarty.const.SITE_URL}images/Store.png">
                        <h2>SEALS HOME</h2>
                    </a>    
                </div> 
                {section name=num loop=$arrCateHome}
                    <div class="footer_item">
                        <a href="{$smarty.const.SITE_URL}{$arrCateHome[num].link}">
                            <img class="img {$arrCateHome[num].state}" alt="{$arrCateHome[num].category_name}" src="{$smarty.const.SITE_URL}{if $arrCateHome[num].category_image!=""}{$arrCateHome[num].category_image}{else}images/no_product.jpg{/if}"/>
                            <h2>{$arrCateHome[num].category_name}</h2>
                        </a>
                    </div>        
                {/section}
                <div class="clear"></div>
            </div>
        </div>

        <div class="h_c" style="background: #fff;float: left;border-top-left-radius: 5px;width: 968px">
            <div style="float: left;width: 650px;">
                <div class="product_cate_right" style="float: left;width: 650;padding-left: 10px">
                    <h3 style="margin-top: 20px;text-align: left;font-size: 22px; color: #1C67AC; font-weight: bold;">OUR CATALOGUES</h3>
                </div>
                <div id="ct_tk" style="float: left;width: 650px;">
                    {section name=num loop=$arrCategory3}
                        <div class="sp">
                            <div class="img_sp" style="float: left;margin-bottom: 5px;position: relative">
                                <a class="ct_td" href="{$smarty.const.SITE_URL}viewCategory/{$arrCategory3[num].id}"><img class="img" alt="{$arrCategory3[num].category_name}" src="{$smarty.const.SITE_URL}{if $arrCategory3[num].category_swf_image!=""}{$arrCategory3[num].category_swf_image}{else}images/no_product.jpg{/if}"/></a>
                            </div>
                            <div class="name_sp">
                                {$arrCategory3[num].category_name}
                            </div>
                        </div> 
                    {/section}
                </div>
                <div class="product_cate_right" style="float: left;width: 650px;padding-left: 10px">
                    <div style="clear: left;width:650px;">
                        <h2>Welcome to Sealnet!</h2>
                        <p>Sealnet Pty Ltd was established in 2011 with the backing of leading industry experts with over 15 years of sealing experience. We were initially established to act as a hydraulic and pneumatic seal supplier with divisions in each state of Australia and world-wide.</p><br>
                        <p>For an overview of the types of seals we offer, please click below to view our profiles chart:<br>

                            <a href="http://sealnet.com.au/download_pdf.php?file=Sealnet_Profile_Chart.pdf">
                                <img src="http://sealnet.com.au/themes/Sealnet/img/sealnet_profile_chart.JPG" class="fullsize" alt="Sealnet Profiles Chart"></a></p><br>

                        <p>
                            Our core business is the supply of the widest range of standard seals. We understand the importance of seals and the immense costs a breakdown can cause to a business - that is why our emphasis is placed on providing the right standard sealing solutions with our expert industry experience.</p><br>

                        <p>We also supply, in partnership with Oz Seals, our own state-of-the-art seal manufacturing systems that are among the most technologically advanced in the world. These manufacturing systems and specific CNC software are available to be purchased or leased depending on the customer's location. Customers using this facility are known as our partners.</p><br>
                        <p><strong>
                                Sealnet is currently looking for new sales and engineering personnel. <a href="vacancies.php">CLICK HERE</a> for more information.</strong>
                        </p>
                    </div>
                </div>
            </div>
            <div class="h_c" style="background: #fff;float: left;border-top-right-radius: 5px;width: 318px">
                <div class="product_cate_right" style="float: left;width: 305px;padding-left: 10px">
                    <h3 style="margin-top: 20px;text-align: left;font-size: 22px; color: #1C67AC; font-weight: bold;">OUR WEBSITES</h3>
                </div>
            </div>
        </div>
    </div>
    <script>
        function _selAll(_id) {
            $("#" + _id + " input[type='checkbox'].ipcheckbok").prop('checked', true);
            setLI();
        }
        function _reselAll(_id) {
            $("#" + _id + " input[type='checkbox'].ipcheckbok").prop('checked', false);
            setLI();
        }
        function setLI() {
            var chkArray = [];
            $(".ipcheckbok:checked").each(function () {
                chkArray.push($(this).val());
            });
            $("body #arrListId").val(chkArray);
        }
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
    <script src="{$smarty.const.SITE_URL}js/stickytooltip.js"></script>
</div>