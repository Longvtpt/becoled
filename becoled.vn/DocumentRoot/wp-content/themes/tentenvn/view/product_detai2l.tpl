<link href="<{$smarty.const.SITE_URL}>css/chitiet.css" rel="stylesheet" type="text/css" />
<section class="gioi-thieu1">
    <div class="heading heading-section" style="border:none;">
        <div class="tensp"><{$arrProduct['Products'].product_name}></div>
        <div class="col-md-4 col-sm-12">
            <div class="cot1">
                <div class="anhto"><img src="<{$URL_IMAGE}><{$arrImages[0].image_link}>"/></div>
                <div class="cacanhnho">
                    <{if count($arrImages)>0}>
                    <{section name=num loop=$arrImages}>
                    <div style="width: 75px;" class="anhnho1"><img src="<{$URL_IMAGE}>thumb/<{$arrImages[num].image_link}>"></div>
                    <{/section}>
                    <{/if}>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-sm-12">
            <div class="cot2">
                <div class="masanpham"><strong>Mã sản phẩm:</strong> <{if $arrProduct['Products'].product_code!=""}><{$arrProduct['Products'].product_code}><{else}><{$arrProduct['Products'].id}><{/if}></div>
                <div class="luotxem">Lượt xem: <{date('Hs')}></div>
                <div class="cacmangxh"><div class="share-face">

                        <!-- Go to www.addthis.com/dashboard to customize your tools -->
                        <div class="addthis_native_toolbox"></div>
                    </div></div>
                <div class="lineden"></div>
                <{if $arrProduct['Products'].loai_product==0}>
                <div class="donvi"><strong>Đơn vị</strong>: Chai</div>
                <div class="dungtich"><strong>Dung tích:</strong> <{$arrProduct['Products'].weight}> ml</div>
                <div class="giaban">Giá Bán: <{$arrProduct['Products'].product_price|number_format:0:".":","}> VNĐ</div>
                <div class="khungsl">
                    <div class="soluong">Số Lượng</div>
                    <div class="giammot" onclick="setCT('0', '0')">-</div>
                    <div class="sl" id="num_ssoluong_h0">1</div>
                    <input type="hidden" id="num_ssoluong0" value="1"/>
                    <div class="tangmot" onclick="setCT('1', '0')">+</div>
                </div>
                <div class="dathang"><a style="cursor: pointer" onclick="datMua(<{$arrProduct['Products'].id}>)"><img src="img/dathang.jpg" width="100%"></a></div>
                <{else}>
                <div class="donvi"><strong>Đơn vị</strong>: Gói</div>
                <div class="bangdonvi">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr class="hang1">
                            <td width="72px">Trọng lượng</td>
                            <td width="47px">Giá</td>
                            <td align="center">Chọn hàng</td>
                            <td align="right">Số lượng</td>
                        </tr>
                        <{if $arrProduct['Products'].product_price1>0&&$arrProduct['Products'].product_w1>0}>
                        <tr class="hang2">
                            <td><{if $arrProduct['Products'].product_w1/1000>=1}><{($arrProduct['Products'].product_w1/1000)|number_format:1:".":","}> Kg<{else}><{($arrProduct['Products'].product_w1)|number_format:0:".":","}> gram<{/if}></td>
                            <td><{$arrProduct['Products'].product_price1|number_format:0:".":","}>đ</td>
                            <td align="center"><input id="or_chongoi1" type="checkbox" value="1"></td>
                            <td align="right">
                                <span class="sogiam" onclick="setCT('0', '0')">-</span> 
                                <span class="sochinh" id="num_ssoluong_h0">1</span> 
                                <span class="sotang" onclick="setCT('1', '0')">+</span>
                            </td>
                        </tr>
                        <{/if}>
                        <{if $arrProduct['Products'].product_price2>0&&$arrProduct['Products'].product_w2>0}>
                        <tr class="hang2">
                            <td><{if $arrProduct['Products'].product_w2/1000>=1}><{($arrProduct['Products'].product_w2/1000)|number_format:1:".":","}> Kg<{else}><{($arrProduct['Products'].product_w2)|number_format:0:".":","}> gram<{/if}></td>
                            <td><{$arrProduct['Products'].product_price2|number_format:0:".":","}>đ</td>
                            <td align="center"><input id="or_chongoi2" type="checkbox" value="1"></td>
                            <td align="right">
                                <span class="sogiam" onclick="setCT('0', '1')">-</span> 
                                <span class="sochinh" id="num_ssoluong_h1">1</span> 
                                <span class="sotang" onclick="setCT('1', '1')">+</span>
                            </td>
                        </tr>
                        <{/if}>
                        <{if $arrProduct['Products'].product_price3>=0&&$arrProduct['Products'].product_w3>0}>
                        <tr class="hang2">
                            <td><{if $arrProduct['Products'].product_w3/1000>=1}><{($arrProduct['Products'].product_w3/1000)|number_format:1:".":","}> Kg<{else}><{($arrProduct['Products'].product_w3)|number_format:0:".":","}> gram<{/if}></td>
                            <td><{$arrProduct['Products'].product_price3|number_format:0:".":","}>đ</td>
                            <td align="center"><input id="or_chongoi3" type="checkbox" value="1"></td>
                            <td align="right">
                                <span class="sogiam" onclick="setCT('0', '2')">-</span> 
                                <span class="sochinh" id="num_ssoluong_h2">1</span> 
                                <span class="sotang" onclick="setCT('1', '2')">+</span>
                            </td>
                        </tr>
                        <{/if}>
                        <{if $arrProduct['Products'].product_price4>0&&$arrProduct['Products'].product_w4>0}>
                        <tr class="hang2">
                            <td><{if $arrProduct['Products'].product_w4/1000>=1}><{($arrProduct['Products'].product_w4/1000)|number_format:1:".":","}> Kg<{else}><{($arrProduct['Products'].product_w4)|number_format:0:".":","}> gram<{/if}></td>
                            <td><{$arrProduct['Products'].product_price4|number_format:0:".":","}>đ</td>
                            <td align="center"><input id="or_chongoi4" type="checkbox" value="1"></td>
                            <td align="right">
                                <span class="sogiam" onclick="setCT('0', '3')">-</span> 
                                <span class="sochinh" id="num_ssoluong_h3">1</span> 
                                <span class="sotang" onclick="setCT('1', '3')">+</span>
                            </td>
                        </tr>
                        <{/if}>
                    </table>
                    <input type="hidden" id="num_p1" value="<{$arrProduct['Products'].product_price1}>"/>
                    <input type="hidden" id="num_p2" value="<{$arrProduct['Products'].product_price2}>"/>
                    <input type="hidden" id="num_p3" value="<{$arrProduct['Products'].product_price3}>"/>
                    <input type="hidden" id="num_p4" value="<{$arrProduct['Products'].product_price4}>"/>
                    <input type="hidden" id="num_ssoluong0" value="1"/>
                    <input type="hidden" id="num_ssoluong1" value="1"/>
                    <input type="hidden" id="num_ssoluong2" value="1"/>
                    <input type="hidden" id="num_ssoluong3" value="1"/>
                </div>
                <div class="dathang"><a style="cursor: pointer" onclick="datMua2(<{$arrProduct['Products'].id}>)"><img src="img/dathang.jpg" width="100%"></a></div>
                <{/if}>
                <div class="damin">Da trắng mịn, sáng hồng ngay hôm nay</div>
            </div>
        </div>
        <div class="col-md-4 col-sm-12">
            <div class="cot3">
                <div class="btn_muahangnhanh"><a href="/mua-hang-nhanh-xem-hang-tai-nha_m226.html"><img src="img/btn_muahangnhanh.jpg"></a></div>
                <div class="btn_xemhangtainha"><a href="/mua-hang-nhanh-xem-hang-tai-nha_m226.html"><img src="img/btn_xemhangtainha.jpg"></a></div>
                <div class="btn_datmuahang"><a href="/mua-hang-nhanh-xem-hang-tai-nha_m226.html"><img src="img/btn_datmuahang.jpg"></a></div>
                <div class="btn_delaisodienthoai">                           
                    <div class="nhapsodienthoai">
                        <input name="phone_dt" id="phone_dt" type="text" placeholder="Nhập số điện thoại">  <a style="cursor: pointer" onclick="dktSdt();"><div class="nhap">Nhập</div></a>
                    </div>
                    <span id="sub_dt" style="color: red;float: left; width: 100%;margin-top: 20px;"></span>
                </div>                        
            </div>
        </div>
        <div class="line2gach"></div>
        <div class="thongtinsanpham">Thông tin sản phẩm  <img src="img/muitenxuong.png"></div>
        <div class="noidungchitiet">
            <{$arrProduct['Products'].product_note_long}>
        </div>
        <div class="mangxh2">
            <div class="share-face">
                <!-- Go to www.addthis.com/dashboard to customize your tools -->
                <div class="addthis_native_toolbox"></div>
            </div>

        </div>
        <div class="line2gach"></div>
        <div class="thongtinsanpham">Bình Luận về sản phẩm  <img src="img/muitenxuong.png"></div>
        <div id="comments">
            <div class="fb-comments" data-href="<{$smarty.const.SITE_URL}>product_p<{$arrProduct['Products'].id}>.html" data-width="828" data-numposts="5"></div>
        </div>
    </div>
</section>
<script>
            function setCT(_state, _id) {
            var total = $('#num_ssoluong' + _id).val();
                    if (_state == '0') {
            if (parseInt(total) > 1) {
            total = parseInt(total) - 1;
            }
            } else {
            total = parseInt(total) + 1;
            }
            $('#num_ssoluong' + _id).val(total);
                    $('#num_ssoluong_h' + _id).html(total);
            }
    function datMua(product_id) {
    var total = $('#num_ssoluong').val();
            window.location.href = siteurl + "Booking/step1/" + product_id + "?q=" + total;
    }
    function datMua2(product_id) {
    var flg = 0;
            var p1 = $('#num_p1').val();
            var p2 = $('#num_p2').val();
            var p3 = $('#num_p3').val();
            var p4 = $('#num_p4').val();
            var total1 = $('#num_ssoluong0').val();
            var total2 = $('#num_ssoluong1').val();
            var total3 = $('#num_ssoluong2').val();
            var total4 = $('#num_ssoluong3').val();
            var link = product_id + "?q=" + 1;
            if ($("#or_chongoi1").is(':checked')){
    link = link + "&q1=" + total1 + "&p1=" + p1;
            flg = parseInt(flg) + 1;
    }
    if ($("#or_chongoi2").is(':checked')){
    link = link + "&q2=" + total2 + "&p2=" + p2;
            flg = parseInt(flg) + 1;
    }
    if ($("#or_chongoi3").is(':checked')){
    link = link + "&q3=" + total3 + "&p3=" + p3;
            flg = parseInt(flg) + 1;
    }
    if ($("#or_chongoi4").is(':checked')){
    link = link + "&q4=" + total4 + "&p4=" + p4;
            flg = parseInt(flg) + 1;
    }
    if (flg > 0){
    window.location.href = siteurl + "Booking/step1/" + link;
    } else{
    alert('Quý khách vui lòng chọn sản phẩm cần mua.');
            $("#or_chongoi1").focus();
    }
    }
    function dktSdt() {
            var phone = $("#phone_dt").val();
    if (!_validatePhone(phone) || phone.length > 30) {
            $("#sub_dt").html('Số điện thoại không đúng.');
            $("#phone_dt").focus();
    return false;
    }
            $("#sub_dt").html("Load...!");
            $.post(siteurl + "Ajax/dktSDT",
            {
            phone: phone,
                    },
                    function (data, status) {
                    $("#sub_dt").html(data);
                    $("#phone_dt").val('');
                    
    });
    }

</script>