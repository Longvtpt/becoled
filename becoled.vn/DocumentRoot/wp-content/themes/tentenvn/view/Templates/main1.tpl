<html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <title><{if $title_for_layout!=""}><{$title_for_layout}><{else}><{$TITLE}><{/if}></title>

        <meta name="Keywords" content="<{if $keyword_seo!=""}><{$keyword_seo}><{else}><{$KEYWORD}><{/if}>" />

        <meta name="Description" content="<{if $description_seo!=""}><{$description_seo}><{else}><{$DESCRIPTION}><{/if}>" />

        <meta name="Author" content="<{$smarty.const.DOMAINNAME}>" />

        <meta name="Copyright" content="<{$smarty.const.DOMAINNAME}>" />

        <meta name="pinterest" content="nopin" />

        <meta http-equiv="content-style-type" content="text/css" />

        <meta http-equiv="content-script-type" content="text/javascript" />

        <link rel="stylesheet" type="text/css" href="<{$smarty.const.SITE_URL}>css/bootstrap.css">

        <link rel="stylesheet" type="text/css" href="<{$smarty.const.SITE_URL}>css/owl.carousel.css">

        <link rel="stylesheet" type="text/css" href="<{$smarty.const.SITE_URL}>css/owl.transitions.css">

        <link rel="stylesheet" type="text/css" href="<{$smarty.const.SITE_URL}>css/font-awesome.css">

        <link rel="stylesheet" type="text/css" href="<{$smarty.const.SITE_URL}>css/style.css">



        <link rel="stylesheet" type="text/css" href="<{$smarty.const.SITE_URL}>css/responsive.css">



        <script type="text/javascript" src="<{$smarty.const.SITE_URL}>js/jquery.min.js"></script>

        <script type="text/javascript" src="<{$smarty.const.SITE_URL}>js/bootstrap.js"></script>



        <script type="text/javascript" src="<{$smarty.const.SITE_URL}>js/owl.carousel.js"></script>		
<script type="text/javascript" src="<{$smarty.const.SITE_URL}>js/jquery.elevatezoom.js"></script>
        <script type="text/javascript" src="<{$smarty.const.SITE_URL}>js/main-bottom.js"></script>

        <script type="text/javascript" src="<{$smarty.const.SITE_URL}>js/home.js"></script>

        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-55f6cdcccdf67eca" async></script>

        <script>

            var siteurl = '<{$smarty.const.SITE_URL}>';

        </script>

    </head>

    <body s="<{$url_h}>">

	<style>

	.avideo{

	 color:#fff;

	}

	.img-left {

    width: 11%;

    max-width: 197px;

    position: absolute;

    top: -35px;

    left: -20px;

    z-index: 9;

}

	</style>

        <div id="fb-root"></div>

        <script>(function (d, s, id) {

                var js, fjs = d.getElementsByTagName(s)[0];

                if (d.getElementById(id))

                    return;

                js = d.createElement(s);

                js.id = id;

                js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.5&appId=1081213365241919";

                fjs.parentNode.insertBefore(js, fjs);

            }(document, 'script', 'facebook-jssdk'));</script>

        <div id="header">

            <div class="img-left"><img src="<{$smarty.const.SITE_URL}>img/icon/bg-left.png" width="100%"/></div>

            <div class="img-right"><img src="<{$smarty.const.SITE_URL}>img/icon/bg-right.png"></div>

            <div class="header-top clearfix">

			<embed src="<{$smarty.const.SITE_URL}>img/icon/Movie2.swf" style="position: absolute;" width="100%" wmode="transparent"/>

                <div class="container">

                    <div class="logo">

                        <a href="<{$smarty.const.SITE_URL}>"><img src="<{$URL_IMAGE}><{$arrHome.logo_img}>"></a>

                    </div>

                    <div class="right clearfix">

                        <div class="link-cart">

                            <a href="<{$smarty.const.SITE_URL}>Booking/step1">

                                <span class="icon"></span>

                                <span class="count">(<b id="numberOrder"><{$totalOrderNum}></b>)</span>

                                <span class="text">Giỏ Hàng</span>

                            </a>

                        </div>

                        <ul class="links-top list-inline">

                            <{$root=0}>

                            <{section name=num loop=$arrMenu}>

                            <{if $arrMenu[num]['status']==0}>

                            <{if $arrMenu[num]['menu_root']>$root}>

                            <{if $arrMenu[num]['menu_root']<2}>

                            <{else}>

                            <ul class="sub" style="display: none">

                                <{/if}>

                                <li>

                                    <a href="<{$smarty.const.SITE_URL}><{$arrMenu[num]['link']}>"><{$arrMenu[num]['menu_title']}></a>

                                    <{/if}>

                                    <{if $arrMenu[num]['menu_root']==$root}>

                                </li>

                                <li><a href="<{$smarty.const.SITE_URL}><{$arrMenu[num]['link']}>"><{$arrMenu[num]['menu_title']}></a>

                                    <{/if}>

                                    <{if $arrMenu[num]['menu_root']<$root}>

                                    <{for $i=0;$i<($root-$arrMenu[num]['menu_root']);$i++}>

                                </li>

                            </ul>

                            <{/for}>

                            <li><a href="<{$smarty.const.SITE_URL}><{$arrMenu[num]['link']}>"><{$arrMenu[num]['menu_title']}></a>

                                <{/if}>

                                <{$root=$arrMenu[num]['menu_root']}>

                                <{/if}>

                                <{/section}>

                            </li>

                            <li>

                                <a href="<{$smarty.const.SITE_URL}>lien-he.html">Liên hệ</a>

                            </li>

                        </ul>

                        <div class="form-search">

                            <form>

                                <input type="text" placeholder="Tìm kiếm sản phẩm..." class="form-control">

                            </form>

                        </div>

                        <div class="hotline-top">

                            <span class="icon"></span>

                            <span>Hotline: <span><{$arrHome.hotline}></span></span>

                        </div>

                    </div>

                </div>

            </div>

            <div class="nav-menu">

                <div class="container">

                    <nav class="navbar navbar-default">

                        <div class="navbar-header">

                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav-menu" aria-expanded="false">

                                <span class="sr-only">Toggle navigation</span>

                                <span class="icon-bar"></span>

                                <span class="icon-bar"></span>

                                <span class="icon-bar"></span>

                            </button>

                            <a class="navbar-brand" href="#"></a>

                        </div>

                        <div class="collapse navbar-collapse" id="nav-menu">

                            <ul class="nav navbar-nav">

                                <li <{if $url_h==""}>class="active"<{/if}>><a href="<{$smarty.const.SITE_URL}>">Trang chủ</a></li>

                                <{$root=0}>

                                <{section name=num loop=$arrMenu}>

                                <{if $arrMenu[num]['status']==1}>

                                <{if $arrMenu[num]['menu_root']>$root}>

                                <{if $arrMenu[num]['menu_root']<2}>

                                <{else}>

                                <ul class="sub" style="display: none">

                                    <{/if}>

                                    <li <{if $url_h==$arrMenu[num]['link']}>class="active"<{/if}>>

                                        <a href="<{$smarty.const.SITE_URL}><{$arrMenu[num]['link']}>"><{$arrMenu[num]['menu_title']}></a>

                                        <{/if}>

                                        <{if $arrMenu[num]['menu_root']==$root}>

                                    </li>

                                    <li <{if $url_h==$arrMenu[num]['link']}>class="active"<{/if}>><a href="<{$smarty.const.SITE_URL}><{$arrMenu[num]['link']}>"><{$arrMenu[num]['menu_title']}></a>

                                        <{/if}>

                                        <{if $arrMenu[num]['menu_root']<$root}>

                                        <{for $i=0;$i<($root-$arrMenu[num]['menu_root']);$i++}>

                                    </li>

                                </ul>

                                <{/for}>

                                <li <{if $url_h==$arrMenu[num]['link']}>class="active"<{/if}>><a href="<{$smarty.const.SITE_URL}><{$arrMenu[num]['link']}>"><{$arrMenu[num]['menu_title']}></a>

                                    <{/if}>

                                    <{$root=$arrMenu[num]['menu_root']}>

                                    <{/if}>

                                    <{/section}>

                                </li>

                                <li <{if $url_h=="lien-he.html"}>class="active"<{/if}>>

                                    <a href="<{$smarty.const.SITE_URL}>lien-he.html">Liên hệ</a>

                                </li>

                            </ul>

                        </div>

                    </nav>

                </div>

            </div>

        </div>

        <div id="main">

            <section class="sibar-quang-cao">

                <{section name=num loop=$arrAdvs}>

                <{if $arrAdvs[num].type==5}>

                <a href="<{$arrAdvs[num].link}>"><img alt="<{$arrAdvs[num].title}>" src="<{$URL_IMAGE}><{$arrAdvs[num].image}>"></a>

                <{/if}>

                <{/section}>

            </section>

            <section class="share-fix">

                <a href="<{$arrHome.link_face}>" class="share-face"></a>

                <a href="<{$arrHome.twitter}>" class="share-twi"></a>

                <a href="<{$arrHome.google}>" class="share-goog"></a>

                <a href="<{$arrHome.youtube}>" class="share-you"></a>

            </section>

            <section class="text-top">

                <div class="container">

                    <div class="row">

                        <div class="col-md-3 col-sm-6">

                            <a href="/hoan-tien-100-neu-khong-hai-long-ve-san-pham_m223.html"><span class="icon icon1"></span>

                            <span class="text">Hoàn tiền 100% nếu không <br> hài lòng về sản phẩm </span></a>

                        </div>

                        <div class="col-md-3 col-sm-6">

                            <a href="/giao-hang-toan-quoc_m224.html"><span class="icon icon2"></span>

                            <span class="text">Giao hàng <br> toàn quốc</span></a>

                        </div>

                        <div class="col-md-3 col-sm-6">

                            <a href="/thanh-toan-khi-giao-hang_m225.html"><span class="icon icon3"></span>

                            <span class="text">Thanh toán khi <br> nhận hàng </span></a>

                        </div>

                        <div class="col-md-3 col-sm-6">

                            <span class="icon icon4"></span>

                            <span class="text">Mua hàng nhanh <br>  <{$arrHome.hotline2}></span>

                        </div>

                    </div>

                </div>

            </section>

            <div class="container">

                <{if $controllerName!="booking"}>

                <div class="row">

                    <div class="<{if $showall!=1}>col-md-9 col-md-push-3 content-main<{else}>container<{/if}>">

                        <{$content_for_layout}>  

                    </div>

                    <div class="col-md-3 col-md-pull-9 sidebar-left">

                        <{if $showall!=1}>

						<div class="panel panel-danh-muc">

                            <div class="panel-heading">

                                <span>Danh Mục Sản Phẩm</span>

                            </div>

                            <{$root=0}>

                            <{section name=num loop=$arrCategory}>

                            <{if $arrCategory[num]['category_root']>0}>

                            <{if $arrCategory[num]['category_root']>$root}>

                            <ul <{if $arrCategory[num]['category_root']==1}>class="list-group"<{/if}>>

                                <li>

                                    <a href="<{$smarty.const.SITE_URL}><{$arrCategory[num].link}>"><{$arrCategory[num]['category_name']}></a>

                                    <{/if}>

                                    <{if $arrCategory[num]['category_root']==$root}>

                                </li>

                                <li class="<{if $arrCategory[num]['category_root']==1}>laptop list-group-item<{/if}> menu-lv<{$arrCategory[num]['category_root']}>"><a href="<{$smarty.const.SITE_URL}><{$arrCategory[num].link}>"><{$arrCategory[num]['category_name']}></a>

                                    <{/if}>

                                    <{if $arrCategory[num]['category_root']<$root}>

                                    <{for $i=0;$i<($root-$arrCategory[num]['category_root']);$i++}>

                                </li>

                            </ul>

                            <{/for}>

                            </li>

                            <li ><a href="<{$smarty.const.SITE_URL}><{$arrCategory[num].link}>"><{$arrCategory[num]['category_name']}></a>

                                <{/if}>

                                <{$root=$arrCategory[num]['category_root']}>

                                <{/if}>

                                <{/section}>

                                <{if $root>0}>

                            </li>

                            </ul>

                            <{/if}>

                        </div>

						<{if count($arrProC)>0}>

                        <div class="panel panel-icon">

                            <div class="panel-heading">

                                <span>đặt hàng Nhanh</span>

                            </div>

                            <div class="panel-body">

                                <form>

                                    <div class="form-group">

                                        <label for="name_or">Họ tên</label>

                                        <input type="text" placeholder="" id="name_or" class="form-control">

                                    </div>

                                    <div class="form-group">

                                        <label for="email_or">Email</label>

                                        <input type="text" placeholder="" id="email_or" class="form-control">

                                    </div>

                                    <div class="form-group">

                                        <label for="phone_or">Số điện thoại </label>

                                        <input type="text"  placeholder="" id="phone_or" class="form-control">

                                    </div>

                                    <div class="form-group">

                                        <label for="note_or">Nội dung đặt hàng</label>

                                        <textarea placeholder=""  rows="8" id="note_or" class="form-control"></textarea>

                                    </div>

                                    <a class="btn btn-inline" style="width: 100%" onclick="ordernew_f();">Ấn ĐẶT HÀNG</a>

                                    <div id="sub_or" style="float: left;color: #d40000;margin-top: 5px"></div>

                                </form>

                            </div>

                        </div>

						<{/if}>

                        <div class="panel panel-hotline">

                            <div class="panel-body">

                                <div class="mua-nhanh">MUA HÀNG NHANH </div>

                                <div class="phone"><{$arrHome.hotline2}></div>

                                <a href="http://feelnatural.vn/spa.html"><div class="mua-nhanh2">Chuyên cung cấp sỉ cho spa</div></a>

                                <div class="phone2"><{$arrHome.hotline}> </div>

                                <a href="http://feelnatural.vn/chinh-sach-dai-ly_m213.html"><div class="mua-nhanh2">LIÊN HỆ MỞ ĐẠI LÝ FEELNATURAL </div></a>

                                <div class="phone2"><{$arrHome.hotline}></div>

                            </div>

                        </div>

                        <style>

                            .panel-body iframe{

                                width: 227px !important;

                            }

                        </style>

                        <div class="panel form-face">

                            <div class="panel-body">

                               <div class="fb-page" data-href="<{$arrHome.link_fanpage}>" data-width="265" data-height="350" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="true"><div class="fb-xfbml-parse-ignore"><blockquote cite="<{$arrHome.link_fanpage}>"><a href="<{$arrHome.link_fanpage}>">Facebook</a></blockquote></div></div>

                            </div>

                        </div>

                        <div class="panel banner-sidebar">

                            <div class="panel-body">

                                <{section name=num loop=$arrAdvs}>

                                <{if $arrAdvs[num].type==0}>

                                <a href="<{$arrAdvs[num].link}>"><img alt="<{$arrAdvs[num].title}>" src="<{$URL_IMAGE}><{$arrAdvs[num].image}>"></a>

                                <{/if}>

                                <{/section}>

                            </div>

                        </div>

                        <div class="panel panel-boder">

                            <div class="panel-heading">

                                <span><a class="avideo" href="/video_m227.html">video</a></span>

                            </div>

                            <div class="panel-body">

                                <div class="embed-responsive embed-responsive-16by9">

                                    <{$arrHome.video}>

                                </div>

                            </div>

                        </div>

                        <div class="panel panel-boder">

                            <div class="panel-heading">

                                <span>MỊN DA THIÊN NHIÊN</span>

                            </div>

                            <div class="panel-body">

                                <{section name=num loop=$arrAdvs}>

                                <{if $arrAdvs[num].type==1}>

                                <a href="<{$arrAdvs[num].link}>" ><img style="margin-bottom: 5px;" alt="<{$arrAdvs[num].title}>" src="<{$URL_IMAGE}><{$arrAdvs[num].image}>"></a>

                                <{/if}>

                                <{/section}>

                            </div>

                        </div>

						<{if count($arrProC)<1}>

                        <div class="panel panel-icon">

                            <div class="panel-heading">

                                <span>đặt hàng Nhanh</span>

                            </div>

                            <div class="panel-body">

                                <form>

                                    <div class="form-group">

                                        <label for="name_or">Họ tên</label>

                                        <input type="text" placeholder="" id="name_or" class="form-control">

                                    </div>

                                    <div class="form-group">

                                        <label for="email_or">Email</label>

                                        <input type="text" placeholder="" id="email_or" class="form-control">

                                    </div>

                                    <div class="form-group">

                                        <label for="phone_or">Số điện thoại </label>

                                        <input type="text"  placeholder="" id="phone_or" class="form-control">

                                    </div>

                                    <div class="form-group">

                                        <label for="note_or">Nội dung đặt hàng</label>

                                        <textarea placeholder=""  rows="8" id="note_or" class="form-control"></textarea>

                                    </div>

                                    <a class="btn btn-inline" style="width: 100%" onclick="ordernew_f();">Ấn ĐẶT HÀNG</a>

                                    <div id="sub_or" style="float: left;color: #d40000;margin-top: 5px"></div>

                                </form>

                            </div>

                        </div>

						<{/if}>

                        <div class="panel panel-icon">

                            <{section name=num loop=$arrMenu}>

                            <{if $arrMenu[num]['status']==3&&$arrMenu[num]['type']==1}>

                            <div class="panel-heading">

                                <span><{$arrMenu[num]['menu_title']}></span>

                            </div>

                            <{$dataM=$arrMenu[num]['data']}>

                            <div class="panel-body">

                                <{section name=num2 loop=$dataM}>

                                <div class="media">

                                    <a href="<{$dataM[num2].link}>" class="media-left">

                                        <img alt="<{$dataM[num2].title}>" src="<{$URL_IMAGE}><{$dataM[num2].image_icon}>" class="media-object">  

                                    </a>

                                    <div class="media-body">

                                        <h4 class="media-heading"><a href="<{$dataM[num2].link}>"><{$dataM[num2].title}></a></h4>

                                        <div class="bottom">

                                            <span>Posted <{$dataM[num2].created_date|date_format:"%d-%m-%Y"}></span>

                                            <span>By admin</span>

                                        </div>

                                    </div>

                                </div>

                                <{/section}>

                            </div>

                            <{/if}>

                            <{/section}>

                        </div>

                        <div class="panel panel-icon lien-he-nhanh">

                            <div class="panel-heading">

                                <span>Liên Hệ Nhanh</span>

                            </div>

                            <div class="panel-body">

                                <p class="phone"><span ><{$arrHome.hotline}></span></p>

                                <p class="email"> <span><{$arrHome.email}></span></p>

                            </div>

                        </div>



                        <div class="panel panel-cam-ket">

                            <div class="panel-heading">

                                <span>Cam Kết với khách Hàng</span>

                            </div>

                            <div class="panel-body">

                                <ul>

                                    <li>

                                        Mua hàng chính hãng với giá tôt nhất

                                    </li>

                                    <li >

                                        Được đổi trả nếu không thích hợp

                                    </li>

                                    <li >

                                        Mua hàng chính hãng với giá tôt nhất

                                    </li>

                                    <li>

                                        Được đổi trả nếu không thích hợp

                                    </li>

                                </ul>

                            </div>

                        </div>

                        <div class="panel panel-comments">

                            <{section name=num loop=$arrMenu}>

                            <{if $arrMenu[num]['status']==6&&$arrMenu[num]['type']==1}>

                            <div class="panel-heading">

                                <span><{$arrMenu[num]['menu_title']}></span>

                            </div>

                            <{$dataM=$arrMenu[num]['data']}>

                            <div class="panel-body">

                                <{section name=num2 loop=$dataM}>

                                <div class="media">

                                    <div class="media-left">

                                        <a href="<{$dataM[num2].link}>" class="media-left">

                                            <img alt="<{$dataM[num2].title}>" src="<{$URL_IMAGE}><{$dataM[num2].image_icon}>" class="media-object">  

                                        </a>

                                    </div> 

                                    <div class="media-body">

                                        <p><{$dataM[num2].content}></p>

                                        <p class="text-right"><{$dataM[num2].title}></p>

                                    </div>

                                </div>

                                <{/section}>

                            </div>

                            <{/if}>

                            <{/section}>

                        </div>

                    </div>

					<{/if}>

                </div>

                <{else}>

                <{$content_for_layout}>  

                <{/if}>

            </div>

            <section class="img-banner">

                <div class="container">

                    <{section name=num loop=$arrAdvs}>

                    <{if $arrAdvs[num].type==2}>

                    <a href="<{$arrAdvs[num].link}>"><img alt="<{$arrAdvs[num].title}>" src="<{$URL_IMAGE}><{$arrAdvs[num].image}>"></a>

                    <{/if}>

                    <{/section}>

                </div>

            </section>

            <section class="subscribe">

                <div class="container">

                    <form class="form-inline">

                        <label>ĐĂNG NHẬP SĐT hoặc EMAIL để được tặng ngay mẫu test sản phẩm HOT</label>

                        <input type="text" style="width: 168px;" id="phone_dkt" placeholder="Số điện thoại" class="form-control">

                        <input type="text" style="width: 168px;" id="email_dkt" placeholder="Email" class="form-control">

                        <a class="btn btn-default" onclick="dktnew();">Nhận Free</a>

                        <div id="sub_newdkt" style="float: right;margin-right: 55px;">

                        </div>

                    </form>

                </div>

            </section>

            <section class="list-product">

                <div class="container">

                    <div class="heading heading-section">

                        <span class="title">BÁN CHẠY HÔM NAY</span>

                    </div>

                    <div class="owl-sp-ban-chay">

                        <{$dataV=$dataBanChay}>

                        <{section name=num2 loop=$dataV}>

                        <div class="item-product">

                            <div class="img-product">

                                <a href="<{$dataV[num2].link}>" ><img alt="<{$dataProductHome[num].name}>" style="width: 265px;height: 250px" src="<{$URL_IMAGE}><{$dataV[num2].product_image}>"></a>

                            </div>

                            <div class="caption">

                                <a href="<{$dataV[num2].link}>" class="name-product"><{$dataV[num2].product_name}> <span class="label-product"></span></a>

                                <div class="clearfix">

                                    <div class="price">

                                        <span class="amount"><{$dataV[num2].product_sale|number_format:0:" ":"."}> vnđ</span>

                                    </div>

                                    <a href="<{$smarty.const.SITE_URL}>Booking/step1/<{$dataV[num2].product_id}>" class="btn-cart"></a>

                                </div>

                            </div>

                        </div>

                        <{/section}>

                    </div>

                </div>

            </section>

            <section class="chinh-sach">

                <div class="container">

                    <hr>

                    <div class="row">

                        <{section name=num loop=$arrMenu}>

                        <{if $arrMenu[num]['status']==5&&$arrMenu[num]['type']==1}>

                        <div class="col-md-3 col-sm-3">

                            <div class="title"><{$arrMenu[num]['menu_title']}></div>

                            <ul class="list-unstyled">

                                <{$dataM=$arrMenu[num]['data']}>

                                <{section name=num2 loop=$dataM}>

                                <li> <a href="<{$dataM[num2].link}>"><{$dataM[num2].title}></a></li>

                                <{/section}> 

                            </ul>

                        </div>

                        <{/if}>

                        <{/section}>

                        <div class="col-md-3 col-sm-3">

                            <div class="title">Mạng Xã Hội</div>

                            <ul class="list-unstyled">

                                <li>

                                    <a href="<{$arrHome.link_face}>" class="sh-facebook"><span class="icon"></span>Facebook</a>

                                </li>

                                <li>

                                    <a href="<{$arrHome.tiwwter}>" class="sh-tiwwter"><span class="icon"></span>Tiwwter</a>

                                </li>

                                <li>

                                    <a href="<{$arrHome.google}>" class="sh-google"><span class="icon"></span>Google +</a>

                                </li>

                                <li>

                                    <a href="<{$arrHome.youtube}>" class="sh-youtube"><span class="icon"></span>Youtube</a>

                                </li>

                            </ul>

                        </div>

                    </div>

                    <hr>

                </div>

            </section>

            <section class="cong-dong-google">

                <div class="container">

                    <div class="row">

                        <div class="col-md-4 col-sm-4">

                            <div class="heading">CỘNG ĐỒNG YÊU THÍCH GOOGLE +</div>

                            <div class="body">

                                <{section name=num loop=$arrAdvs}>

                                <{if $arrAdvs[num].type==3}>

                                <a href="<{$arrAdvs[num].link}>"><img alt="<{$arrAdvs[num].title}>" src="<{$URL_IMAGE}><{$arrAdvs[num].image}>"></a>

                                <{/if}>

                                <{/section}>

                            </div>

                        </div>

                        <div class="col-md-4 col-sm-4">

                            <{section name=num loop=$arrMenu}>

                            <{if $arrMenu[num]['status']==2&&$arrMenu[num]['type']==1}>

                            <div class="heading">

                                <span><{$arrMenu[num]['menu_title']}></span>

                            </div>

                            <{$dataM=$arrMenu[num]['data']}>

                            <div class="body media-product">

                                <{section name=num2 loop=$dataM}>

                                <div class="media">

                                    <a href="<{$dataM[num2].link}>" class="media-left">

                                        <img alt="<{$dataM[num2].title}>" src="<{$URL_IMAGE}><{$dataM[num2].image_icon}>" class="media-object">  

                                    </a>

                                    <div class="media-body">

                                        <h4 class="media-heading"><a href="<{$dataM[num2].link}>"><{$dataM[num2].title}></a></h4>

                                        <div class="bottom">

                                            <span>Posted <{$dataM[num2].created_date|date_format:"%d-%m-%Y"}></span>

                                            <span>By admin</span>

                                        </div>

                                    </div>

                                </div>

                                <{/section}>

                            </div>

                            <{/if}>

                            <{/section}>

                        </div>

                        <div class="col-md-4 col-sm-4">

                            <div class="heading">KHUYẾN MẠI HOT</div>

                            <div class="body">

                                <{section name=num loop=$arrAdvs}>

                                <{if $arrAdvs[num].type==4}>

                                <a href="<{$arrAdvs[num].link}>"><img alt="<{$arrAdvs[num].title}>" src="<{$URL_IMAGE}><{$arrAdvs[num].image}>"></a>

                                <{/if}>

                                <{/section}>

                            </div>

                        </div>

                    </div>

                </div>

            </section>

        </div>

        <div id="footer">

            <div class="footer-top text-center">

                <div class="container">

                    <{$arrHome.footer}>

                </div>

            </div>

        </div> 

        <script>

            function dktnew() {

                var phone = $("#phone_dkt").val();

                var email = $("#email_dkt").val();

                if (!_validatePhone(phone) || phone.length > 30) {

                    $("#sub_newdkt").html('Số điện thoại không đúng.');

                    $("#phone_dkt").focus();

                    return false;

                }

                if (!_validateEmail(email) || email.length > 150) {

                    $("#sub_newdkt").html('Email không đúng định dạng.');

                    $("#email_dkt").focus();

                    return false;

                }

                $("#sub_newdkt").html("Load...!");

                $.post(siteurl + "Ajax/dktNews",

                        {

                            email: email,

                            phone: phone,

                        },

                        function (data, status) {

                            if (data == "0") {

                                $("#sub_newdkt").html("Đăng ký nhận tin thành công!");

                            } else if (data == "1") {

                                $("#email_dkt").focus();

                                $("#email_dkt").val('');

                                $("#sub_newdkt").html("Email đã tồn tại!");

                            } else {

                                alert(data);

                            }

                        });

            }

            function ordernew_f() {

                var name = $("#name_or").val();

                var phone = $("#phone_or").val();

                var email = $("#email_or").val();

                var note = $("#note_or").val();

                if (name.length < 1 || phone.length > 100) {

                    $("#sub_or").html('Vui lòng nhập họ tên từ 1 - 100 kí tự.');

                    $("#name_or").focus();

                    return false;

                }

                if (!_validateEmail(email) || email.length > 150) {

                    $("#sub_or").html('Email không đúng định dạng.');

                    $("#email_or").focus();

                    return false;

                }

                if (!_validatePhone(phone) || phone.length > 30) {

                    $("#sub_or").html('Số điện thoại không đúng.');

                    $("#phone_or").focus();

                    return false;

                }

                if (note.length < 1 || note.length > 1000) {

                    $("#sub_or").html('Vui lòng nhập Nội dung đặt hàng từ 1 - 1000 kí tự.');

                    $("#note_or").focus();

                    return false;

                }

                $("#sub_or").html("Load...!");

                $.post(siteurl + "Ajax/orderNewF",

                        {

                            email: email,

                            phone: phone,

                            name: name,

                            note: note,

                        },

                        function (data, status) {

                            if (data == "0") {

                                $("#sub_or").html("Đăng hàng nhanh thành công!");

                            } else {

                                $("#sub_or").html(data);

                            }

                        });

            }

        </script>

    </body>
<script lang="javascript">
(function() {var _h1= document.getElementsByTagName('title')[0] || false;
var product_name = ''; if(_h1){product_name= _h1.textContent || _h1.innerText;}var ga = document.createElement('script'); ga.type = 'text/javascript';
ga.src = '//live.vnpgroup.net/js/web_client_box.php?hash=072da996afda12a521a61363cf24d07e&data=eyJzc29faWQiOjMyODk1MzksImhhc2giOiIzOTczMGRiNTNmY2ExMjdlZjQ3Zjc2NDM3MTZjZWJjMiJ9&pname='+product_name;
var s = document.getElementsByTagName('script');s[0].parentNode.insertBefore(ga, s[0]);})();
</script>	
</html>