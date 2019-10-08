<div class="block-list-sp">
    <div class="block-title">
        <span class="title"><{$dataCategory.category_name}></span>
    </div>
    <{$dataProduct=$arrProC}>
    <div class="block-content">
       <{if count($arrProC)>0}>
        <div class="owl-list-sp">
            <div class="item">
                <{section name=num2 loop=$dataProduct}>
                <div class="item-sp">
                    <div class="item-info">
                        <div class="item-photo showSp<{$dataProduct[num2].id}>">
                            <a href="<{$smarty.const.SITE_URL}><{$dataProduct[num2].link}>" class="item-img"><img src="<{if $dataProduct[num2].product_image==""}>/img/noimage.jpg<{else}><{$URL_IMAGE}><{$dataProduct[num2].product_image}><{/if}>"/></a>
                            <span class="model"> <{if $dataProduct[num2].product_code!=""}><{$dataProduct[num2].product_code}><{else}><{$dataProduct[num2].id}><{/if}></span>
                        </div>
                        <div class="item-detail">
                            <a href="<{$smarty.const.SITE_URL}><{$dataProduct[num2].link}>" class="item-name"><{$dataProduct[num2].product_name}> </a>
                            <div class="caption">
                                <{$dataProduct[num2].product_note_sort}>
                            </div>
                            <div class="price">
                                <span><{$dataProduct[num2].product_price|number_format:0:" ":"."}> VNĐ</span>
                            </div>
                        </div>
                    </div>
                    <div class="popover">
                        <div class="popover-content-<{$dataProduct[num2].id}> popover-content">
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
                                            <span><{$dataProduct[num2].product_price|number_format:0:" ":"."}> VNĐ</span>
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
                                $(".showSp<{$dataProduct[num2].id}>").popover({
                                    content: $('.popover-content-<{$dataProduct[num2].id}>').html(),
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
        <{if $page>1}>
        <ul class="pagination">
            <{for $numb=1;$numb<=$page;$numb++}>
            <li <{if $cur==$numb}>class="active"<{/if}>><a href="<{$link_cur}>?c=<{$numb}>"><{$numb}></a></li> 
            <{/for}>
        </ul>
        <{/if}>
    <{else}>
    <p>Dữ liệu đang cập nhật.</p>
    <{/if}>
    </div>
</div>
<div class="block-category">
    <div class="block-title">
        <div class="dropdown">
		<a>
		<{$dataCategory.category_name}>
		</a>
		</div>
    </div>
    <{$dataProduct=$arrProC}>
    <div class="block-content">
       <{if count($arrProC)>0}>
        <div class="owl-list-sp">
            <div class="item">
                <{section name=num2 loop=$dataProduct}>
                <div class="item-sp">
                    <div class="item-info">
                        <div class="item-photo showSp<{$dataProduct[num2].id}>">
                            <a href="<{$smarty.const.SITE_URL}><{$dataProduct[num2].link}>" class="item-img"><img src="<{if $dataProduct[num2].product_image==""}>/img/noimage.jpg<{else}><{$URL_IMAGE}><{$dataProduct[num2].product_image}><{/if}>"/></a>
                            <span class="model"> <{if $dataProduct[num2].product_code!=""}><{$dataProduct[num2].product_code}><{else}><{$dataProduct[num2].id}><{/if}></span>
                        </div>
                        <div class="item-detail">
                            <a href="<{$smarty.const.SITE_URL}><{$dataProduct[num2].link}>" class="item-name"><{$dataProduct[num2].product_name}> </a>
                            <div class="caption">
                                <{$dataProduct[num2].product_note_sort}>
                            </div>
                            <div class="price">
                                <span><{$dataProduct[num2].product_price|number_format:0:" ":"."}> VNĐ</span>
                            </div>
                        </div>
                    </div>
                    <div class="popover">
                        <div class="popover-content-<{$dataProduct[num2].id}> popover-content">
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
                                            <span><{$dataProduct[num2].product_price|number_format:0:" ":"."}> VNĐ</span>
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
                                $(".showSp<{$dataProduct[num2].id}>").popover({
                                    content: $('.popover-content-<{$dataProduct[num2].id}>').html(),
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
        <{if $page>1}>
        <ul class="pagination">
            <{for $numb=1;$numb<=$page;$numb++}>
            <li <{if $cur==$numb}>class="active"<{/if}>><a href="<{$link_cur}>?c=<{$numb}>"><{$numb}></a></li> 
            <{/for}>
        </ul>
        <{/if}>
    <{else}>
    <p>Dữ liệu đang cập nhật.</p>
    <{/if}>
    </div>
</div>
