<div class="wrap">
{literal}
    <style>
        .h_c .sp{
            position: relative;
            float: left;
            width: 105px;
            height: 160px;
            margin: 4px;
            margin-left: 11px;
        }  
        .h_c .sales{
            background: url(/images/discount.png) no-repeat;  width: 25px;height: 15px;position: absolute;right: 0px;padding: 18px 15px;color: #fff;font-weight: bold;
        }
        .img_sp img{
            float: left;
            width: 105px;
            height: 105px;
            border-radius: 5px; 
        }
        .name_sp a{
            color: #fff;
        }
        .name_sp a:hover{
            color: orange;
        }
        .name_sp{
            color: #fff;
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
        #ct_tk img.active{
            border: 10px solid orange;
            width: 85px;
            height: 85px;
        }
        .footer_item {
            float: left;
            width: 150px;
            min-height: 50px;
            margin: 5px;
            text-align: center;
        }
        .footer_item img {
            max-width: 120px;
            max-height: 50px;
            margin: 5px;
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
        .thumb-img {
            background: #fff;
            padding: 5px;
            border: 1px solid #e6e6e6;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px;
            width: 80px;
            height: 80px;
            margin-left: 80px;
            margin-top:20px;
            margin-bottom: 5px;
            border-radius: 5px;
        }
        .rowcolor {
            background-color: #e6f4fb;
            cursor: pointer;
            color: #333;
            font-size: 12px;
        }
        .rowcolor:hover {
            background-color: #00a6e4;
            color: #fff;
        }
        .subheader {
            color: #FFF;
            background-color: #00a6e4;
            text-align: center;
            font-size: 12px;
            line-height: 30px;
        }
        ul.step {
            background: transparent url('/images/step_start.gif') no-repeat bottom left;
            list-style: none;
            margin: 0.8em auto 0em;
            padding-left: 40px;
            height: 25px;
            width: 610px;
            float: left;
            margin-left: 26px;
        }
        ul#order_step {
            background-color: white;
        }
        ul.step li {
            height: 25px;
            float: left;
            width: 100px;
            text-align: center;
            background: transparent url('/images/step_standard.gif') no-repeat bottom left;
        }
        ul.step li.step_current {
            background: transparent url('/images/step_current.gif') no-repeat bottom left;
            font-weight: bold;
        }
        ul.step li.step_todo {
            font-style: italic;
        }
        ul.step li#step_end {
            background: transparent url('/images/step_end.gif') no-repeat bottom left;
        }
    </style>
{/literal}
<div style="float: left;width: 968px;margin-top: 5px;">
    <div class="h_t" style="color: orange;font-size: 14px;margin: 5px;float: left;width: 968px;">
        <span style="float: left">Your are in: Home</span>
        <div class="breadcrumb_nav" style="text-transform: uppercase">
            <a href="{$smarty.const.SITE_URL}"><img src="/images/home-icon16.png" style="float:left; margin: 0px 0px auto 0px"></a>
                {section name=num loop=$arrCateHome}
                - <a href="{$smarty.const.SITE_URL}{$arrCateHome[num].link}">{$arrCateHome[num].category_name}</a>
            {/section}
        </div>
    </div>
    <div class="h_c" style="background: #fff;float: left;border-radius: 5px;width: 968px">

        <div class="list_product" style="width: 968px;float: left">
            <div style="width: 958px;float: left;margin: 5px;background:#fff">
                <h3 style="font-size: 14px;margin-top: 10px;text-align: left;color: #333;margin-bottom: 5px;margin-left: 10px;">ADDRESSES</h3>
            </div>
            <div style="  width: 945px;float: left;margin: 5px 10px;background: #fff;border-top: 1px solid #eee;border-bottom: 1px solid #eee;">
                <h3 style="line-height: 50px;margin-top: 5px;margin-left: 10px;text-align: left;color: #333;margin-bottom: 10px;width: 150px;float: left">Quote Process:</h3>
                <ul class="step" id="order_step">
                    <li class="step_done">
                        <a href="">
                            Summary
                        </a>
                    </li>
                    <li class="step_done">
                        <a href="{$smarty.const.SITE_URL}Account/home">
                            Login
                        </a>
                    </li>
                    <li class="step_current">
                        Address
                    </li>
                    <li class="step_todo">
                        Shipping
                    </li>
                    <li class="step_todo">
                        Quote
                    </li>
                    <li id="step_end" class="step_todo">
                        Completed
                    </li>
                </ul>
            </div>
            <form method="post" action="" id="frmComfim">
            <div style=" color: #FBCB09;width: 958px; float: left; margin: 0px 5px; text-align: center; padding: 5px 0px;">
                <div style="float: left;width: 90% ;margin-left: 5px;" >
                    <div style="float: left;color: #333;margin-top: 5px;">Choose a delivery address: 
                        <select name="delivery_address" id="delivery_address" onchange="chonB(this)">
                            {section name=num loop=$arrContact}
                                <option value="{$arrContact[num].id}" >{$arrContact[num].contact_name}</option>
                            {/section}
                        </select> OR
                    </div>
                    <a class="btn_re" style="margin-left: 5px" href="{$smarty.const.SITE_URL}Account/upContact">Add a new address</a><br/>
                </div>
                <div style="display: none;float: left;width: 90%;  margin-left: 5px;" id="billing">
                    <div style="float: left;color: #333;margin-top: 5px">Choose a billing address: 
                        <select name="invo_address" id="invo_address" onchange="chonI(this)">
                            {section name=num loop=$arrContact}
                                <option value="{$arrContact[num].id}" >{$arrContact[num].contact_name}</option>
                            {/section}
                        </select> OR
                    </div>
                    <a class="btn_re" style="margin-left: 5px" href="{$smarty.const.SITE_URL}Account/upContact">Add a new address</a><br/>
                </div>
                <div style="float: left;color: #333;margin-top: 5px;width: 90%;text-align: left; margin-left: 5px;"><input name="all_deliver" id="all_deliver" value="1" type="checkbox" onchange="showB('billing')"/> <b>Use same address for billding.</b></div>
                <div style=" width: 460px; background: #fff; margin: 5px; float: left;">     
                    <div class="subheader">
                        Your delivery address
                    </div>
                    <div style="background: #e6f4fb;float: left">
                        {section name=num loop=$arrContact}
                            <div class="cb" id="cb_{$arrContact[num].id}" style="{if $arrContact[num].numb>0}display: none;{/if}">
                                <table  style="width: 450px;margin: 5px;float: left;border-spacing: 0px;color: #333;  text-align: left;">
                                    <tr style="">
                                        <td style="padding: 5px;width: 170px;"><b>{$arrContact[num].abn}</b></td>
                                    </tr>
                                    <tr style="">
                                        <td style="padding: 5px;width: 170px;">{$arrContact[num].f_name} {$arrContact[num].l_name}</td>
                                    </tr>
                                    <tr style="">
                                        <td style="padding: 5px;width: 170px;">{$arrContact[num].city}</td>
                                    </tr>
                                    <tr style="">
                                        <td style="padding: 5px;width: 170px;">{$arrContact[num].zipcode} {$arrContact[num].address}</td>
                                    </tr>
                                    <tr style="">
                                        <td style="padding: 5px;width: 170px;">
                                            {foreach Configure::read('cf_country') as $key => $value}
                                            {if $key==$arrContact[num].country}{$value}{/if}
                                        {/foreach}
                                    </td>
                                </tr>
                                <tr style="">
                                    <td style="text-align: left"><a class="btn_re" href="{$smarty.const.SITE_URL}Account/upContact/{$arrContact[num].id}">update Address</a></td>
                                </tr>
                            </table> 
                        </div>
                    {/section}
                </div>
            </div>
            <div style=" width: 460px; background: #fff; margin: 5px; float: left;">     
                <div class="subheader">
                    Your Invoice address
                </div>
                <div style="background: #e6f4fb;float: left">
                    {section name=num loop=$arrContact}
                        <div class="ci" id="ci_{$arrContact[num].id}" style="{if $arrContact[num].numb>0}display: none;{/if}">
                            <table style="width: 450px;margin: 5px;float: left;border-spacing: 0px;color: #333;  text-align: left;">
                                <tr style="">
                                    <td style="padding: 5px;width: 170px;"><b>{$arrContact[num].abn}</b></td>
                                </tr>
                                <tr style="">
                                    <td style="padding: 5px;width: 170px;">{$arrContact[num].f_name} {$arrContact[num].l_name}</td>
                                </tr>
                                <tr style="">
                                    <td style="padding: 5px;width: 170px;">{$arrContact[num].city}</td>
                                </tr>
                                <tr style="">
                                    <td style="padding: 5px;width: 170px;">{$arrContact[num].zipcode} {$arrContact[num].address}</td>
                                </tr>
                                <tr style="">
                                    <td style="padding: 5px;width: 170px;">
                                        {foreach Configure::read('cf_country') as $key => $value}
                                        {if $key==$arrContact[num].country}{$value}{/if}
                                    {/foreach}
                                </td>
                            </tr>
                            <tr style="">
                                <td style="text-align: left"><a class="btn_re" href="{$smarty.const.SITE_URL}Account/upContact/{$arrContact[num].id}">update Address</a></td>
                            </tr>
                        </table>
                    </div>
                {/section}
            </div>
        </div>
        <div style="float: left;color: #333;margin-top: 5px;width: 90%;text-align: left;">
            Please leave any comments about the order in the box below:
            <textarea style="width: 500px;height: 150px;float:left" name="order_note"></textarea>
            <div style="float: left;color: #333;margin-top: 5px;width: 90%;text-align: left;">
                <a class="btn_re" href="{$smarty.const.SITE_URL}Booking/step1"><< previos step</a> <a class="btn_re" onclick="_comfim();">next step >></a>
            </div> 
        </div> 
    </div>
    </form>
</div>
</div>

{literal}
    <style>
        .btn_order {
            padding: 5px 15px;
            background: #144f8d;
            color: #fff;
            border-radius: 5px;
            float: right;
            margin: -2px 5px;
            cursor: pointer;
        }
        .btn_re{
            padding: 3px 15px;
            background: #144f8d;
            color: #fff;
            float: left;
            margin: -2px 5px;
            cursor: pointer;
            margin: 2px;
        }
        .btn_re:hover{
            background: #144fff;
        }
    </style>
    <script>
        var state_c = 0;
        function showB(_id) {
            $("#" + _id).slideToggle();
            if (state_c == 0) {
                state_c = 1;
            } else {
                state_c = 0;
            }
        }
        function chonB(_this) {
            var idd = parseInt($(_this).val());
            if (state_c == '0') {
                $("body .ci").hide();
                $("body #ci_" + idd).show();
            }
            $("body .cb").hide();
            $("body #cb_" + idd).show();
        }
        function chonI(_this) {
            var idd = parseInt($(_this).val());
            $("body .ci").hide();
            $("body #ci_" + idd).show();
        }
        function rePage(_type) {
            var order = parseFloat($("#priceTotal").val());
            alert(order);
            if (_type == '1' && order >= 3) {
                location.href = site_url + "Booking/step2?booking=" + _type;
            }
            if (_type == '0' && order >= 30) {
                location.href = site_url + "Booking/step2?booking=" + _type;
            }
        }
        function setQuantity(_this) {
            var product_id = parseInt($(_this).attr('v'));
            var quantity = parseInt($(_this).val());
            var price = parseFloat($("#price_" + product_id).val());
            var totalPrice = parseFloat($("#priceTotal").val());
            var url = site_url + "Booking/setQuantity/" + product_id + "_" + quantity;
            $("#total_" + product_id).html(price * quantity);
            $.get(url, function (data, status) {
                var ordernum = parseInt(document.getElementById("numberOrder").textContent);
                totalPrice = totalPrice + (price * parseInt(data));
                if (totalPrice < 30) {
                    $("#eor1").hide();
                    $("#eor2").show();
                } else if (totalPrice < 3) {
                    $("#eor1").show();
                    $("#eor2").hide();
                } else {
                    $("#eor1").hide();
                    $("#eor2").hide();
                }
                $("#priceTotal").val(totalPrice);
                document.getElementById("numberOrder").innerHTML = parseInt(data) + ordernum;
            });
        }
        function _comfim(){
            $("#frmComfim").submit();
        }
        function addCommas(nStr)
        {
            nStr += '';
            x = nStr.split('.');
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + '.' + '$2');
            }
            return x1 + x2;
        }

    </script>
{/literal}
<script src="{$smarty.const.SITE_URL}js/stickytooltip.js"></script>
</div>