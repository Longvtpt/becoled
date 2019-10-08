{if $flg==0}
<form action="post" id="frm_or">
<table class="t_detail"  cellpadding="1" cellspacing="1" style="width: 600px;border: 1px solid #00aaff;border-radius: 5px;">
    <tr>
       <td colspan="3" style="font-size: 25px;color: #fff;background: #00aaff;text-align: center">Thông tin đơn hàng</td>
    </tr>
    <tr>
        <td colspan="3" style="float: left;height: 10px"></td>
    </tr>
    <tr><td class="td1" style="width: 170px"><b>Tên mẫu</b> </td><td style="width: 275px"><b style="font-size: 20px;color: #0088ff">{$dataOrder.temp_name}</b></td><td style="width: 170px">Giá: <b style="font-size: 14px;color: #d40000">{$dataOrder.price|number_format}</b> VNĐ</td></tr>
    <tr><td class="td1"><b>Họ tên</b></td><td><input class="input_or" placeholder="Nguyễn văn A" type="text" name="order_name" id="order_name"/></td><td rowspan="5" style="vertical-align: top"><img style="width: 150px;height: 200px" alt="{$dataOrder.temp_name}" src="{$dataOrder.img_temp}"/></td></tr>
    <tr><td class="td1"><b>Địa chỉ</b></td><td><input class="input_or" placeholder="Hà nội" type="text" name="order_address" id="order_address"/></td></tr>
    <tr><td class="td1"><b>Email</b></td><td><input class="input_or" placeholder="xxx@xxx.xxx" type="text" name="order_email" id="order_email"/></td></tr>
    <tr><td class="td1"><b>Số điện thoại</b></td><td><input class="input_or" placeholder="0xxxxxxxxx" type="text" name="order_phone" id="order_phone"/></td></tr>
    <tr><td class="td1" style="vertical-align: top"><b>Ghi chú</b></td><td><textarea  class="texta_or" rows="3" placeholder="Cần gấp..." type="text" name="order_note"></textarea></tr>
    <tr><td class="td1"><b>Mã xác nhận</b></td>
        <td colspan="2">
            <input style="float: left;width: 110px" class="input_or" placeholder="Mã xác nhận" type="text" name="code_c" id="code_c"/>
            <div style="float: left;width: 80px;height: 30px;overflow: hidden">
               <img style="float: left;margin-right: 5px;" id="img_c" src="{$smarty.const.SITE_URL}Ajax/captcha">
           </div> 
               <a style="line-height: 30px" href="javascript:void(0)" onclick="document.getElementById('img_c').src = '{$smarty.const.SITE_URL}Ajax/captcha?' + Math.random();">Refresh</a>
        </td>
    </tr>
    <tr style="border: none"><td class="td1" style="border: none"></td><td style="border: none;color: red" id="order_error"></td></tr>
    <tr style="border-bottom: none"><td class="td1" style="border: none"></td><td style="border-bottom: none" id="btn_order"><a href="javascript:_orderTemp();" class="button">Đăng ký</a> <a href="javascript:_orderRestart();" class="button">Làm lại</a></td></tr>
</table>
    <input type="hidden" name="order_did" id="order_did" value="{$dataOrder.id}"/>
</form>
    <style>
        .texta_or{
            width:250px;border: 1px solid #00aaff
        }
        .input_or{
           width:250px;
           border: 1px solid #00aaff;
           height:30px; 
           padding-left: 4px;
        }
    </style>
{else}
   Fail!!!
{/if}
