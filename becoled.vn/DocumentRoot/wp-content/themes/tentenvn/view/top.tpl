<div class="block-banner">
    <{if $arrHome.logo_banner!=""}>
        <img alt="banner" src="<{$URL_IMAGE}><{$arrHome.logo_banner}>"/>
    <{else}>
        <img alt="" src="/img/media/banner.jpg"/>
    <{/if}>
</div>
<div class="block-category-sp">
    <div class="block-title">
        <span>Danh mục sản phẩm</span>
    </div>
    <div class="block-content">
        <div class="row">
            <{$num=1}>
            <{section name=num loop=$arrCategory}>
            <{if $arrCategory[num]['category_root']==1}>
            <div class="col-xs-6 col-md-4">
                <div class="item">
                    <div class="item-stt">
                        <{$num}>
                        <{$num=$num+1}>
                    </div>
                    <div class="item-name">
                        <a href="<{$smarty.const.SITE_URL}><{$arrCategory[num].link}>"><{$arrCategory[num]['category_name']}></a>
                    </div>
                    <div class="item-images">
                        <img src="<{$URL_IMAGE}><{$arrCategory[num].category_image}>">
                    </div>
                </div>
            </div>
            <{/if}>
            <{/section}>
        </div>
    </div>
</div>
<div class="block-list-sp">
    <{section name=num loop=$dataProductHome}>
    <{if count($dataProductHome[num].data)>0}>
    <div class="block-title">
        <span class="title"><{$dataProductHome[num].category_name}></span>
        <a href="<{$smarty.const.SITE_URL}><{$dataProductHome[num].link}>" class="btn-more">Xem thêm</a>
    </div>
    <{$dataProduct=$dataProductHome[num].data}>
    <div class="block-content">
        <div class="owl-list-sp">
            <div class="item">
                <{section name=num2 loop=$dataProduct}>
                <div class="item-sp">
                    <div class="item-info">
                        <div class="item-photo showSp<{$dataProductHome[num].id}><{$dataProduct[num2].id}>">
                            <a href="<{$smarty.const.SITE_URL}><{$dataProduct[num2].link}>" class="item-img"><img src="<{if $dataProduct[num2].product_image==""}>/img/noimage.jpg<{else}><{$URL_IMAGE}><{$dataProduct[num2].product_image}><{/if}>"/></a>
                            <span class="model"><{if $dataProduct[num2].product_code!=""}><{$dataProduct[num2].product_code}><{else}><{$dataProduct[num2].id}><{/if}></span>
                        </div>
                        <div class="item-detail">
                            <a href="<{$smarty.const.SITE_URL}><{$dataProduct[num2].link}>" class="item-name"><{$dataProduct[num2].product_name}> </a>
                            <div class="caption">
                                <{$dataProduct[num2].product_note_sort}>
                            </div>
                            <div class="price">
                                <span>Giá: <{$dataProduct[num2].product_price}> </span>
                            </div>
                        </div>
                    </div>
                    <div class="popover">
                        <div class="popover-content-<{$dataProductHome[num].id}><{$dataProduct[num2].id}> popover-content">
                            <div class="block-quickview">
                                <div class="block-title"><{$dataProduct[num2].product_name}></div>
                                <div class="block-content">
                                    <div class="img"><a href="<{$smarty.const.SITE_URL}><{$dataProduct[num2].link}>"><img src="<{if $dataProduct[num2].product_image==""}>/img/noimage.jpg<{else}><{$URL_IMAGE}><{$dataProduct[num2].product_image}><{/if}>"/></a>
                                    </div>
									<div class="caption">
                                    <{$dataProduct[num2].product_note_sort}>
                                  </div>
                                    <div class="item-detail clearfix">
                                        <div class="price">
                                            <span>Giá: <{$dataProduct[num2].product_price}> </span>
                                        </div>
                                        <span class="model"> <{if $dataProduct[num2].product_code!=""}><{$dataProduct[num2].product_code}><{else}><{$dataProduct[num2].id}><{/if}></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        $(document).ready(function () {
                            $(function () {
                                $(".showSp<{$dataProductHome[num].id}><{$dataProduct[num2].id}>").popover({
                                    content: $('.popover-content-<{$dataProductHome[num].id}><{$dataProduct[num2].id}>').html(),
                                    placement: 'auto left',
                                    trigger: 'hover',
                                    container: 'body',
                                    html: true
                                });
                            })
                        });
                    </script>
                </div>
                <{/section}>
            </div>
        </div>
    </div>
    <{/if}>
    <{/section}>
</div>
<div class="block-category">
    <{section name=num loop=$dataProductHome}>
    <{if count($dataProductHome[num].data)>0}>
    <div class="block-title">
        <div class="dropdown">
        <a href="<{$smarty.const.SITE_URL}><{$dataProductHome[num].link}>">
        <{$dataProductHome[num].category_name}>
        <span class="caret"></span>
        </a>
        </div>
    </div>
    <{$dataProduct=$dataProductHome[num].data}>
    <div class="block-content">
        <div class="owl-list-sp">
            <div class="item">
                <{section name=num2 loop=$dataProduct}>
                <div class="item-sp">
                    <div class="item-info">
                        <div class="item-photo showSpct<{$dataProductHome[num].id}><{$dataProduct[num2].id}>">
                            <a href="<{$smarty.const.SITE_URL}><{$dataProduct[num2].link}>" class="item-img"><img src="<{if $dataProduct[num2].product_image==""}>/img/noimage.jpg<{else}><{$URL_IMAGE}><{$dataProduct[num2].product_image}><{/if}>"/></a>
                            <span class="model"> <{if $dataProduct[num2].product_code!=""}><{$dataProduct[num2].product_code}><{else}><{$dataProduct[num2].id}><{/if}></span>
                        </div>
                        <div class="item-detail">
                            <a href="<{$smarty.const.SITE_URL}><{$dataProduct[num2].link}>" class="item-name"><{$dataProduct[num2].product_name}> </a>
                            <div class="caption">
                                <{$dataProduct[num2].product_note_sort}>
                            </div>
                            <div class="price">
                                <span>Giá: <{$dataProduct[num2].product_price}> </span>
                            </div>
                        </div>
                    </div>
                    <div class="popover">
                        <div class="popover-content-ct<{$dataProductHome[num].id}><{$dataProduct[num2].id}> popover-content">
                            <div class="block-quickview">
                                <div class="block-title"><{$dataProduct[num2].product_name}></div>
                                <div class="block-content">
                                    <div class="img"><a href="<{$smarty.const.SITE_URL}><{$dataProduct[num2].link}>"><img src="<{if $dataProduct[num2].product_image==""}>/img/noimage.jpg<{else}><{$URL_IMAGE}><{$dataProduct[num2].product_image}><{/if}>"/></a>
                                    </div>
									<div class="caption">
                                    <{$dataProduct[num2].product_note_sort}>
                                  </div>
                                    <div class="item-detail clearfix">
                                        <div class="price">
                                            <span>Giá: <{$dataProduct[num2].product_price}> </span>
                                        </div>
                                        <span class="model"> <{if $dataProduct[num2].product_code!=""}><{$dataProduct[num2].product_code}><{else}><{$dataProduct[num2].id}><{/if}></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        $(document).ready(function () {
                            $(function () {
                                $(".showSpct<{$dataProductHome[num].id}><{$dataProduct[num2].id}>").popover({
                                    content: $('.popover-content-ct<{$dataProductHome[num].id}><{$dataProduct[num2].id}>').html(),
                                    placement: 'auto left',
                                    trigger: 'hover',
                                    container: 'body',
                                    html: true
                                });
                            })
                        });
                    </script>
                </div>
                <{/section}>
            </div>
        </div>
    </div>
    <{/if}>
    <{/section}>
</div>




