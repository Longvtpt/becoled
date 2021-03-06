<section class="slide-top">
    <{section name=num loop=$arrSlide}>
    <div class="item">
        <a href="<{$arrSlide[num].link}>"><img src="<{$URL_IMAGE}><{$arrSlide[num].images}>"></a>
        <div class="caption">
            <{$arrSlide[num].title}>
        </div>
    </div>
    <{/section}>
</section>
<section class="lien-he-ngay text-center">
    <img src="/img/icon/lien-he-ngay.gif">
</section> 
<section class="list-product">
    <{section name=num loop=$dataPro}>
    <{$dataV=$dataPro[num].data}>
    <{if $dataPro[num].state==0}>
    <div class="heading heading-section">
        <span style="background: #9cd21c;color: #fff;width: 100%;float: left;padding: 3px 5px;font-size: 20px;">
            <{$dataPro[num].name}>
        </span>
    </div>
    <{else}>
    <div class="heading heading-section">
        <span class="title"><{$dataPro[num].name}></span>
        <a href="<{$dataPro[num].link}>" class="xem-them"></a>
    </div>
    <{/if}>

    <div class="row">
        <{section name=num2 loop=$dataV}>
        <div class="col-md-4 col-sm-4">
            <div class="item-product">
                <div class="img-product">
                    <a href="<{$dataV[num2].link}>" ><img alt="<{$dataPro[num].name}>" style="width: 265px;height: 250px" src="<{$URL_IMAGE}><{$dataV[num2].product_image}>"></a>
                </div>
                <div class="caption">
                    <a href="<{$dataV[num2].link}>" class="name-product"><{$dataV[num2].product_name}></a>
                    <div class="clearfix">
                        <div class="price">
                            <span class="amount"><{$dataV[num2].product_sale|number_format:0:" ":"."}> vnđ</span>
                        </div>
                        <a href="<{$smarty.const.SITE_URL}>Booking/step1/<{$dataV[num2].product_id}>" class="btn-cart"></a>
                    </div>
                </div>
            </div>
        </div>
        <{/section}>
    </div>
    <{if $dataPro[num].state==0}>
    <section class="img-banner">
        <div class="row">
            <{section name=num loop=$arrMenu}>
            <{if $arrMenu[num]['status']==9}>
            <{$dataM=$arrMenu[num]['data']}>
            <{section name=num2 loop=$dataM}>
            <{if $dataM[num2].numb==0}>
            <div class="col-md-8">
                <div class="box">
                    <a href="<{$dataM[num2].link}>">
                        <img src="<{$URL_IMAGE}><{$dataM[num2].image_icon}>">
                        <div class="caption">
                            ESPA Gift Collection
                        </div>
                    </a>
                </div>
            </div>
            <{/if}>
            <{if $dataM[num2].numb==1}>
            <div class="col-md-4">
                <div class="box">
                    <a href="<{$dataM[num2].link}>">
                        <img src="<{$URL_IMAGE}><{$dataM[num2].image_icon}>">
                        <div class="caption">
                            ESPA Gift Collection
                        </div>
                    </a>
                </div>
                <{/if}>
                <{if $dataM[num2].numb==2}>
                <div class="box">
                    <a href="<{$dataM[num2].link}>">
                        <img src="<{$URL_IMAGE}><{$dataM[num2].image_icon}>">
                        <div class="caption">
                            ESPA Gift Collection
                        </div>
                    </a>
                </div>
            </div>
            <{/if}>
            <{if $dataM[num2].numb==3}>
            <div class="col-md-12">
                <div class="box">
                    <a href="<{$dataM[num2].link}>">
                        <img src="<{$URL_IMAGE}><{$dataM[num2].image_icon}>">
                        <div class="caption">
                            <{$dataM[num2].title}>
                        </div>
                    </a>
                </div>
            </div>
            <{/if}>

            <{/section}>
            <{/if}>
            <{/section}>
        </div>
    </section>
    <{/if}>
  <{/section}>
</section>
