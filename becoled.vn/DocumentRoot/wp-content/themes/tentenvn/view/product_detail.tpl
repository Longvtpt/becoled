<div class="block-sp-featured ">
    <div class="block-title">
        <span class="title">Chi tiết sản phẩm</span>
    </div>
    <div class="block-content">
        <div class="box-img">
            <div class="item-photo">
                <a href="#"><img src="<{if $arrProduct['Products'].product_image==""}>/img/noimage.jpg<{else}><{$URL_IMAGE}><{$arrProduct['Products'].product_image}><{/if}>"></a>
            </div>
            <a href="<{$URL_IMAGE}><{$arrProduct['Products'].product_image}>" class="room">xem hình phóng to</a>
        </div>
        <div class="box-detail">
            <p><b>Tên sản phẩm:</b><{$arrProduct['Products'].product_name}></p>
            <p><b>Kiểu sản phẩm:</b><{$arrProduct['Category'].category_name}></p>
            <p><b>Thời gian bảo hành:</b><{$arrProduct['Products'].loai_product}> năm</p>
            <div class="price">Giá xuất xưởng: <{$arrProduct['Products'].product_price}></div>
            <p><b>Miễn Phí Gửi hàng:  </b>Bán kính 20 km</p>
            <p>
                <b>Vận chuyển :</b>
                <br>
                Trong nước, miễn phí vận chuyển bán kính 20km , bằng xe, tầu 
            </p>
            <p>
                <b>Thông số kỹ thuật: </b>
                <br>
               <{$arrProduct['Products'].product_note_long}>
            </p>
        </div>
        <div class="download">
            Tải thông tin <{$arrProduct['Products'].product_name}> <a href="?download=1"><img src="/img/icon/download.png"></a>
        </div>
    </div>
</div>