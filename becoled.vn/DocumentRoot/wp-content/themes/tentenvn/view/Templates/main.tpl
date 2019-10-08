<!DOCTYPE html>

<html lang="en">

    <head> 

        <meta charset="utf-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title><{if $title_for_layout!=""}><{$title_for_layout}><{else}><{$TITLE}><{/if}></title>

        <meta name="Keywords" content="<{if $keyword_seo!=""}><{$keyword_seo}><{else}><{$KEYWORD}><{/if}>" />

        <meta name="Description" content="<{if $description_seo!=""}><{$description_seo}><{else}><{$DESCRIPTION}><{/if}>" />

        <meta name="Author" content="<{$smarty.const.DOMAINNAME}>" />

        <meta name="Copyright" content="<{$smarty.const.DOMAINNAME}>" />

        <meta name="pinterest" content="nopin"/>

        <meta http-equiv="content-style-type" content="text/css" />

        <meta http-equiv="content-script-type" content="text/javascript" />

        <link rel="stylesheet" type="text/css" href="<{$smarty.const.SITE_URL}>css/bootstrap.css">

        <link rel="stylesheet" type="text/css" href="<{$smarty.const.SITE_URL}>css/owl.carousel.css">

        <link rel="stylesheet" type="text/css" href="<{$smarty.const.SITE_URL}>css/owl.transitions.css">

        <link rel="stylesheet" type="text/css" href="<{$smarty.const.SITE_URL}>css/font-awesome.css">

        <link rel="stylesheet" type="text/css" href="<{$smarty.const.SITE_URL}>css/style.css">

        <link rel="stylesheet" type="text/css" href="<{$smarty.const.SITE_URL}>css/responsive.css">

        <link rel="stylesheet" type="text/css" href="<{$smarty.const.SITE_URL}>css/calc_style.css">
		
		<script type="text/javascript" src="<{$smarty.const.SITE_URL}>js/jquery.min.js"></script>

        <script type="text/javascript" src="<{$smarty.const.SITE_URL}>js/bootstrap.js"></script>

        <script type="text/javascript" src="<{$smarty.const.SITE_URL}>js/owl.carousel.js"></script>

        <script type="text/javascript" src="<{$smarty.const.SITE_URL}>js/tooltip/dw_tooltip_c.js"></script>

        <script type="text/javascript" src="<{$smarty.const.SITE_URL}>js/tooltip/dw_xhr.js"></script>

        <script type="text/javascript" src="<{$smarty.const.SITE_URL}>js/tooltip/ajax_tip.js"></script>

        <script type="text/javascript" src="<{$smarty.const.SITE_URL}>js/main-bottom.js"></script>

        <script type="text/javascript" src="<{$smarty.const.SITE_URL}>js/mod_calc.js"></script>

        <script type="text/javascript" src="<{$smarty.const.SITE_URL}>js/main.js"></script>

        <script>

            var siteurl = '<{$smarty.const.SITE_URL}>';</script>



    </head>

    <body class="page-home" s="<{$url_h}>">

        <div id="header">

            <div class="header-bottom ">

                <div class="container clearfix">

                    <a href="<{$smarty.const.SITE_URL}>" class="logo">

                        <{if $arrHome.logo_img!=""}>

                        <img alt="logo" src="<{$URL_IMAGE}><{$arrHome.logo_img}>"/>

                        <{else}>

                        <{$smarty.const.DOMAINNAME}>

                        <{/if}>

                    </a>

                    <div class="text-logo">

                        <{if $arrHome.logo_img2!=""}>

                        <img alt="logo" src="<{$URL_IMAGE}><{$arrHome.logo_img2}>"/>

                        <{else}>

                        <img alt="" src="./img/media/text-header.png"/>

                        <{/if}>

                    </div>

                    <div class="img-header">

                        <{if $arrHome.logo_img3!=""}>

                        <img alt="logo" src="<{$URL_IMAGE}><{$arrHome.logo_img3}>"/>

                        <{else}>

                        <a href="https://www.youtube.com/watch?v=SWmSCxdmy-M" target="_blank"><img alt="" src="./img/media/img-header.jpg"/></a>

                        <{/if}>



                    </div>	

                    <span class="nav-toggle"><span>Toggle Nav</span></span>

                </div>

            </div>

            <div class="header-nav">

                <div class="container">

                    <ul>

                        <{$root=0}>

                        <{$nat=1}>

                        <{section name=num loop=$arrMenu}>



                        <{if $arrMenu[num]['status']==0}>

                        <{if $arrMenu[num]['menu_root']>$root}>

                        <{if $arrMenu[num]['menu_root']<2}>



                        <{else}>

                        <ul class="sub-menu">

                            <{/if}>

                            <li <{if $arrMenu[num]['menu_root']==1}>class="<{if $m_start<=$arrMenu[num]['menu_start']&&$m_order>=$arrMenu[num]['menu_order']}>active <{/if}>nav-<{$nat++}>"<{/if}>>

                                <a href="<{$smarty.const.SITE_URL}><{$arrMenu[num]['link']}>"><{$arrMenu[num]['menu_title']}></a>

                                <{/if}>

                                <{if $arrMenu[num]['menu_root']==$root}>

                            </li>

                            <li <{if $arrMenu[num]['menu_root']==1}>class="<{if $m_start<=$arrMenu[num]['menu_start']&&$m_order>=$arrMenu[num]['menu_order']}>active <{/if}>nav-<{$nat++}>"<{/if}>><a href="<{$smarty.const.SITE_URL}><{$arrMenu[num]['link']}>"><{$arrMenu[num]['menu_title']}></a>

                                <{/if}>

                                <{if $arrMenu[num]['menu_root']<$root}>

                                <{for $i=0;$i<($root-$arrMenu[num]['menu_root']);$i++}>

                            </li>

                        </ul>

                        <{/for}>

                        <li <{if $arrMenu[num]['menu_root']==1}>class="<{if $m_start<=$arrMenu[num]['menu_start']&&$m_order>=$arrMenu[num]['menu_order']}>active <{/if}>nav-<{$nat++}>"<{/if}>><a href="<{$smarty.const.SITE_URL}><{$arrMenu[num]['link']}>"><{$arrMenu[num]['menu_title']}></a>

                            <{/if}>

                            <{$root=$arrMenu[num]['menu_root']}>

                            <{/if}>

                            <{/section}>

                            <{if $root==1}>

                        </li>

                        <{else}>

                        <{for $i=0;$i<($root-1);$i++}>

                        </li>

                    </ul>

                    <{/for}>

                    </li>

                    <{/if}>

                    <li>

                        <a href="<{$smarty.const.SITE_URL}>lien-he.html">Liên hệ</a>

                    </li>

                    <div class="ngonngu" style="margin-top:12px; float:right;">

            	<a href="http://cokhidangkhoa.com/"><img alt="" src="./img/media/vi.jpg"/></a>  

                <a href="http://cokhidangkhoa.com/en/"><img alt="" src="./img/media/en.jpg"/></a>  

                <a href="http://cokhidangkhoa.com/jp/"><img alt="" src="./img/media/jp.jpg"/></a> 

            </div>

                    </ul>

                </div>

            </div>

            

        </div>

        <div class="nav-menu" id="nav-menu">

            <span class="nav-toggle"><span>Toggle Nav</span></span>

            <ul class="ui-menu">

                <{$root=0}>

                <{$nat=1}>

                <{section name=num loop=$arrMenu}>



                <{if $arrMenu[num]['status']==0}>

                <{if $arrMenu[num]['menu_root']>$root}>

                <{if $arrMenu[num]['menu_root']<2}>



                <{else}>

                <ul class="sub-menu">

                    <{/if}>

                    <li <{if $arrMenu[num]['menu_root']==1}>class="level0 <{if $m_start<=$arrMenu[num]['menu_start']&&$m_order>=$arrMenu[num]['menu_order']}>active <{/if}>nav-<{$nat++}>"<{/if}>>

                        <a href="<{$smarty.const.SITE_URL}><{$arrMenu[num]['link']}>"><{$arrMenu[num]['menu_title']}></a>

                        <{/if}>

                        <{if $arrMenu[num]['menu_root']==$root}>

                    </li>

                    <li <{if $arrMenu[num]['menu_root']==1}>class="level0 <{if $m_start<=$arrMenu[num]['menu_start']&&$m_order>=$arrMenu[num]['menu_order']}>active <{/if}>nav-<{$nat++}>"<{/if}>><a href="<{$smarty.const.SITE_URL}><{$arrMenu[num]['link']}>"><{$arrMenu[num]['menu_title']}></a>

                        <{/if}>

                        <{if $arrMenu[num]['menu_root']<$root}>

                        <{for $i=0;$i<($root-$arrMenu[num]['menu_root']);$i++}>

                    </li>

                </ul>

                <{/for}>

                <li <{if $arrMenu[num]['menu_root']==1}>class="level0 <{if $m_start<=$arrMenu[num]['menu_start']&&$m_order>=$arrMenu[num]['menu_order']}>active <{/if}>nav-<{$nat++}>"<{/if}>><a href="<{$smarty.const.SITE_URL}><{$arrMenu[num]['link']}>"><{$arrMenu[num]['menu_title']}></a>

                    <{/if}>

                    <{$root=$arrMenu[num]['menu_root']}>

                    <{/if}>

                    <{/section}>

                    <{if $root==1}>

                </li>

                <{else}>

                <{for $i=0;$i<($root-1);$i++}>

                </li>

            </ul>

            <{/for}>

        </li>

        <{/if}>

        <li>

            <a href="<{$smarty.const.SITE_URL}>lien-he.html">Liên hệ</a>

        </li>

    </ul>

</div>

<div id="main">

    <div class="container">

        <div class="row">

            <div class="col-md-9 col-md-push-3 col-main col-sm-8 col-sm-push-4" >

                <{$content_for_layout}>

            </div>
<style>.timkiem button {    background: url(img/timkiem.png);    width: 23px;    height: 21px;    border: none;    position: absolute;    margin-left: -30px;    margin-top: 2px;}.timkiem input {    padding-left: 10px;    height: 24px;    width: 99%;}.timkiem {    margin-bottom: 10px;    position: relative;}</style>
            <div class="col-md-3 col-md-pull-9 col-sidebar col-sm-4 col-sm-pull-8">
<div class="timkiem"><form action="<{$smarty.const.SITE_URL}>tim-kiem.html"><input placeholder="Tìm Kiếm" name="keywords" value="<{$keywords}>" type="text"><button type="submit"></button></form></div>
                <div class="block block-nav-category">

                    <div class="block-title">

                        <span>Danh Mục Sản Phẩm</span>

                    </div>

                    <div class="block-content">

                        <{$root=0}>

                        <{section name=num loop=$arrCategory}>

                        <{if $arrCategory[num]['category_root']>0}>

                        <{if $arrCategory[num]['category_root']>$root}>

                        <ul <{if $arrCategory[num]['category_root']==1}>class="ui-menu"<{else}>class="level<{$arrCategory[num]['category_root']-2}> submenu"<{/if}>>

                            <li class="level<{$arrCategory[num]['category_root']-1}> <{if $arrCategory[num]['category_start']!=($arrCategory[num]['category_order']+1)}> parent<{/if}>">

                                <a href="<{$smarty.const.SITE_URL}><{$arrCategory[num].link}>"><{$arrCategory[num]['category_name']}></a>

                                <{/if}>

                                <{if $arrCategory[num]['category_root']==$root}>

                            </li>

                            <li class="level<{$arrCategory[num]['category_root']-1}> <{if $arrCategory[num]['category_start']!=($arrCategory[num]['category_order']+1)}> parent<{/if}>"><a href="<{$smarty.const.SITE_URL}><{$arrCategory[num].link}>"><{$arrCategory[num]['category_name']}></a>

                                <{/if}>

                                <{if $arrCategory[num]['category_root']<$root}>

                                <{for $i=0;$i<($root-$arrCategory[num]['category_root']);$i++}>

                            </li>

                        </ul>

                        <{/for}>

                        </li>

                        <li class="level<{$arrCategory[num]['category_root']-1}> <{if $arrCategory[num]['category_start']!=($arrCategory[num]['category_order']+1)}> parent<{/if}>"><a href="<{$smarty.const.SITE_URL}><{$arrCategory[num].link}>"><{$arrCategory[num]['category_name']}></a>

                            <{/if}>

                            <{$root=$arrCategory[num]['category_root']}>

                            <{/if}>

                            <{/section}>

                            <{if $root>0}>

                        </li>

                        </ul>

                        <{/if}>

                    </div>

                </div>

                <div class="block block-facebook">

                    <div class="block-title">

                        <span>Mạng xã hội</span>

                    </div>

                    <div class="block-content">

                        <div class="embed-responsive embed-responsive-4by3">

                            <iframe class="embed-responsive-item" src="https://www.facebook.com/plugins/page.php?href=<{$arrHome.link_fanpage}>&tabs=timeline&width=270&height=200&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="270" height="200" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>

                        </div>

                    </div>

                </div>

                <div class="block block-tuyen-dung">

                    <div class="block-title">

                        <span>Tuyển Dụng</span>

                    </div>

                    <div class="block-content">

                        <a href="/tuyen-dung_t210.html"><img src="./img/media/tuyen-dung.jpg"></a>

                    </div>

                </div>

                <div class="block block-ti-gia">

                    <div class="block-title">

                        <span>thông tin Tỷ Giá</span>

                    </div>

                    <div class="block-content">

                        <table>

                            <tr>

                                <td><img src="./img/icon/tygia1.png"></td>

                                <td><a href="">Tỉ giá ngoại tệ</a></td>

                            </tr>

                            <tr>

                                <td><img src="./img/icon/tygia2.png"></td>

                                <td>Giá vàng thế giới</td>

                            </tr>

                            <tr>

                                <td><img src="./img/icon/tygia3.png"></td>

                                <td>Giá vàng trong nước</td>

                            </tr>

                        </table>

                    </div>

                </div>

                <div class="block block-calculator">

                    <div class="block-title">

                        <span>Máy Tính</span>

                    </div>

                    <div class="block-content">

                        <div class="moduletable">



                            <div id="modCalc">

                                <div id="calinfoout">

                                    <div class="calinfoinner">

                                        <input type="text" name="input" size="16" id="calInfoOutPut" onclick="this.focus()" maxlength="16" value="0" readonly>

                                        <input type="button" value="1" onclick="r(1)" class="calinfonm"><input type="button" value="2" onclick="r(2)" class="calinfonm"><input type="button" value="3" onclick="r(3)" class="calinfonm"><input type="button" value="+" onclick="r('+')" class="calinfoop"><input type="button" value="MS" onclick="r('MS')" class="calinfoop"><br>

                                        <input type="button" value="4" onclick="r(4)" class="calinfonm"><input type="button" value="5" onclick="r(5)" class="calinfonm"><input type="button" value="6" onclick="r(6)" class="calinfonm"><input type="button" value="-" onclick="r('-')" class="calinfoop"><input type="button" value="M+" onclick="r('M+')" class="calinfoop">

                                        <input type="button" value="7" onclick="r(7)" class="calinfonm"><input type="button" value="8" onclick="r(8)" class="calinfonm"><input type="button" value="9" onclick="r(9)" class="calinfonm"><input type="button" value="*" onclick="r(' * ')" class="calinfoop"><input type="button" value="M-" onclick="r('M-')" class="calinfoop">

                                        <input type="button" value="0" onclick="r(0)" class="calinfonm"><input type="button" value="." onclick="r('.')" class="calinfonm"><input type="button" value="EXP" onclick="r('EXP')" class="calinfoop"><input type="button" value="/" onclick="r('/')" class="calinfoop"><input type="button" value="MR" onclick="r('MR')" class="calinfoop"><br>

                                        <input type="button" value="+/-" onclick="r('+/-')" class="calinfoop"><input type="button" value="sqrt" onclick="r('sqrt')" class="calinfoop"><input type="button" value="C" onclick="r('C')" class="calinfoeq"><input type="button" value="=" onclick="r('=')" class="calinfoeq"><input type="button" value="MC" onclick="r('MC')" class="calinfoop"><br>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

                <div class="block block-quang-cao">

                    <div class="block-title">

                        <span>Liên Kết Quảng Cáo</span>

                    </div>

                    <div class="block-content">

                        <{section name=num loop=$arrAdvs}>

                        <{if $arrAdvs[num].type==0}>

                        <{if $arrAdvs[num].code_image!=""}>

                        <{$arrAdvs[num].code_image}>

                        <{else}>

                        <a href="<{$arrAdvs[num].link}>">

                            <img alt="" class="img-responsive" src="<{$URL_IMAGE}><{$arrAdvs[num].image}>"/>

                        </a>

                        <{/if}>

                        <{/if}>

                        <{/section}>

                    </div>

                </div>

                <div class="block block-thong-ke">

                    <div class="block-title">

                        <span>Thống Kê Truy Cập</span>

                    </div>

                    <div class="block-content">

                        <span class="total"><{$dataTruyCap['total']}></span>

                        <table>

                            <tr>

                                <td><img src="./img/icon/tk0.png"></td>

                                <td>Hôm nay</td>

                                <td class="text-right"><{$dataTruyCap['today']}></td>

                            </tr>

                            <tr>

                                <td><img src="./img/icon/tk1.png"></td>

                                <td>Hôm qua</td>

                                <td class="text-right"><{$dataTruyCap['homqua']}></td>

                            </tr>

                            <tr>

                                <td><img src="./img/icon/tk2.png"></td>

                                <td>Trong tuần</td>

                                <td class="text-right"><{$dataTruyCap['tuannay']}></td>

                            </tr>

                            <tr>

                                <td><img src="./img/icon/tk2.png"></td>

                                <td>Tuần trước</td>

                                <td class="text-right"><{$dataTruyCap['tuantruoc']}></td>

                            </tr>

                            <tr>

                                <td><img src="./img/icon/tk3.png"></td>

                                <td>Trong tháng</td>

                                <td class="text-right"><{$dataTruyCap['thangnay']}></td>

                            </tr>

                            <tr>

                                <td><img src="./img/icon/tk3.png"></td>

                                <td>Tháng trước</td>

                                <td class="text-right"><{$dataTruyCap['thangtruoc']}></td>

                            </tr>

                            <tr>

                                <td><img src="./img/icon/tk4.png"></td>

                                <td>Tất cả</td>

                                <td class="text-right"><{$dataTruyCap['total']}></td>

                            </tr>
                            <tr>
                        </table>
                        <div style="height:20px; width:100%; border-bottom:1px solid #BBBBBB;"></div>
                        <div style="margin-top:10px; float:left"> <span style="padding-top:10px;float:left">Đang online: </span>
<span style="padding-top:5px;float:left">                               
<script id="_waufab">var _wau = _wau || [];
_wau.push(["colored", "h8u1ili449dd", "fab", "ffc20e000000"]);
(function() {var s=document.createElement("script"); s.async=true;
s.src="http://widgets.amung.us/colored.js";
document.getElementsByTagName("head")[0].appendChild(s);
})();</script>
</span>
						</div>

                    </div>

                </div>

            </div>

        </div>

    </div>

    <div class="block-newletter">

        <div class="container">

            <div class="block-title">Đăng Ký Nhận Email</div>

            <div class="block-content">

                <form>

                    <label>Đăng ký để nhận các khuyến mãi hấp dẫn</label>

                    <input type="text" placeholder="nhập địa chỉ email" id="email_dkt" class="form-control input-subscribe">

                    <a class="btn btn-subscribe" onclick="dktnew();" type="submit">Đăng Ký </a>

                </form>

                <p style="padding: 10px 0px 0px 30px;color: red;" id="sub_newdkt"></p>

            </div>

        </div>

    </div>

    <div class="container">

        <div class="block-sp-bestsellers">

            <div class="block-title">

                <span class="title">Sản Phẩm bán chạy</span>

            </div>

            <{$dataProduct=$arrSPBC}>

            <div class="block-content">

                <div class="owl-list-sp">

                    <{section name=num2 loop=$dataProduct}>

                    <{if $dataProduct[num2].numb==0||$dataProduct[num2].numb%4==0}>

                    <{if $dataProduct[num2].numb>0&&$dataProduct[num2].numb%4==0}>

                </div>

                <{/if}>

                <div class="item">

                    <{/if}>

                    <div class="item-sp">

                        <div class="item-info">

                            <div class="item-photo showSps<{$dataProduct[num2].id}>">

                                <a href="<{$smarty.const.SITE_URL}><{$dataProduct[num2].link}>" class="item-img"><img src="<{if $dataProduct[num2].product_image==""}>/img/noimage.jpg<{else}><{$URL_IMAGE}><{$dataProduct[num2].product_image}><{/if}>"/></a>

                                <span class="model">Model: <{if $dataProduct[num2].product_code!=""}><{$dataProduct[num2].product_code}><{else}><{$dataProduct[num2].id}><{/if}></span>

                            </div>

                            <div class="item-detail">

                                <a href="<{$smarty.const.SITE_URL}><{$dataProduct[num2].link}>" class="item-name"><{$dataProduct[num2].product_name}> </a>

                                <div class="caption">

                                    <{$dataProduct[num2].product_note_sort}>

                                </div>

                                <div class="price">

                                    <span>Giá: <{$dataProduct[num2].product_price|number_format:0:" ":"."}> VNĐ</span>

                                </div>

                            </div>

                        </div>

                        <div class="popover">

                            <div class="popover-content-s<{$dataProduct[num2].id}> popover-content">

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

                                                <span>Giá: <{$dataProduct[num2].product_price|number_format:0:" ":"."}> VNĐ</span>

                                            </div>

                                            <span class="model">Model: <{if $dataProduct[num2].product_code!=""}><{$dataProduct[num2].product_code}><{else}><{$dataProduct[num2].id}><{/if}></span>

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <script type="text/javascript">

                            $(document).ready(function () {

                                $(function () {

                                    $(".showSps<{$dataProduct[num2].id}>").popover({

                                        content: $('.popover-content-s<{$dataProduct[num2].id}>').html(),

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

    </div>

</div>

</div>

<div id="footer">

    <div class="container">

        <div class="copyright">

            <{$arrHome.footer}>

        </div>

        <div class="share-social">

            <a href="<{$arrHome.link_face}>"><img src="./img/icon/facebook.png"></a>

            <a href="<{$arrHome.twitter}>"><img src="./img/icon/twi.png"></a>

            <a href="<{$arrHome.google}>"><img src="./img/icon/google.png"></a>

            <a href="<{$arrHome.youtobe}>"><img src="./img/icon/youtube.png"></a>

        </div>

    </div>



</div>

<script type="text/javascript">

    function dktnew() {

        var email = $("#email_dkt").val();

        if (!_validateEmail(email) || email.length > 150) {

            $("#sub_newdkt").html('Email không đúng định dạng.');

            $("#email_dkt").focus();

            return false;

        }

        $("#sub_newdkt").html("Load...!");

        $.post(siteurl + "Ajax/dktNews",

                {

                    email: email,

                },

                function (data, status) {

                    if (data == "0") {

                        $("#email_dkt").val('');

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

</script>  
<script language="JavaScript">        var message = "Cơ Khí Tự Động Đăng Khoa"; function clickIE4() { if (event.button == 2) { alert(message); return false; } } function clickNS4(e) { if (document.layers || document.getElementById && !document.all) { if (e.which == 2 || e.which == 3) { alert(message); return false; } } } if (document.layers) { document.captureEvents(Event.MOUSEDOWN); document.onmousedown = clickNS4; } else if (document.all && !document.getElementById) { document.onmousedown = clickIE4; } document.oncontextmenu = new Function("alert(message);return false") </script>
<script type="text/javaScript">
        $.ctrl = function (key, callback, args) {
            var isCtrl = false;
            $(document).keydown(function (e) {
                if (!args) args = []; // IE barks when args is null

                if (e.ctrlKey) isCtrl = true;
                if (e.keyCode == key.charCodeAt(0) && isCtrl) {
                    callback.apply(this, args);
                    return false;
                }
            }).keyup(function (e) {
                if (e.ctrlKey) isCtrl = false;
            });
        };
        $.ctrl('C', function () {
            alert("Cơ Khí Tự Động Đăng Khoa");
        });
    </script>
<!-- begin olark code --><script data-cfasync="false" type='text/javascript'>/*{literal}<![CDATA[*/
window.olark||(function(c){var f=window,d=document,l=f.location.protocol=="https:"?"https:":"http:",z=c.name,r="load";var nt=function(){f[z]=function(){(a.s=a.s||[]).push(arguments)};var a=f[z]._={},q=c.methods.length;while(q--){(function(n){f[z][n]=function(){f[z]("call",n,arguments)}})(c.methods[q])}a.l=c.loader;a.i=nt;a.p={0:+new Date};a.P=function(u){a.p[u]=new Date-a.p[0]};function s(){a.P(r);f[z](r)}f.addEventListener?f.addEventListener(r,s,false):f.attachEvent("on"+r,s);var ld=function(){function p(hd){hd="head";return["<",hd,"></",hd,"><",i,' onl' + 'oad="var d=',g,";d.getElementsByTagName('head')[0].",j,"(d.",h,"('script')).",k,"='",l,"//",a.l,"'",'"',"></",i,">"].join("")}var i="body",m=d[i];if(!m){return setTimeout(ld,100)}a.P(1);var j="appendChild",h="createElement",k="src",n=d[h]("div"),v=n[j](d[h](z)),b=d[h]("iframe"),g="document",e="domain",o;n.style.display="none";m.insertBefore(n,m.firstChild).id=z;b.frameBorder="0";b.id=z+"-loader";if(/MSIE[ ]+6/.test(navigator.userAgent)){b.src="javascript:false"}b.allowTransparency="true";v[j](b);try{b.contentWindow[g].open()}catch(w){c[e]=d[e];o="javascript:var d="+g+".open();d.domain='"+d.domain+"';";b[k]=o+"void(0);"}try{var t=b.contentWindow[g];t.write(p());t.close()}catch(x){b[k]=o+'d.write("'+p().replace(/"/g,String.fromCharCode(92)+'"')+'");d.close();'}a.P(2)};ld()};nt()})({loader: "static.olark.com/jsclient/loader0.js",name:"olark",methods:["configure","extend","declare","identify"]});
/* custom configuration goes here (www.olark.com/documentation) */
olark.identify('1915-535-10-9684');/*]]>{/literal}*/</script><noscript>
<a href="https://www.olark.com/site/1915-535-10-9684/contact" title="Contact us" target="_blank">Questions? Feedback?</a>
 powered by </noscript><!-- end olark code -->


</body>	

</html>