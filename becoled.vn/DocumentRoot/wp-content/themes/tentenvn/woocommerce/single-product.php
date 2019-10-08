<?php
/**
 * The Template for displaying all single products
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see        https://docs.woocommerce.com/document/template-structure/
 * @author        WooThemes
 * @package    WooCommerce/Templates
 * @version     1.6.4
 */
if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly
}

get_header('shop');
$dataCat = get_queried_object();
$_product = wc_get_product(false, $dataCat->ID);
?>
<div id="fb-root"></div>
<script>(function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id))
            return;
        js = d.createElement(s);
        js.id = id;
        js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.4";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
<div class="block-sp-featured ">
    <div class="block-title">
        <span class="title">Chi tiết sản phẩm</span>
    </div>
    <div class="block-content">
        <div class="row">
            <div class="col-md-12 content-main">
                <link rel="stylesheet" type="text/css" href="<?php echo SITE_URL; ?>/css/chitiet.css"/>
                <form action="<?php echo SITE_HOME . "checkout?add-to-cart=" . $dataCat->ID; ?>" method="post">
                    <section class="gioi-thieu1">
                        <div class="row">
                        <div class="heading heading-section" style="border:none;">
                            <div class="tensp"><?php the_title(); ?></div>
                            <div class="col-md-6 col-sm-12">
                                <div class="item-photo">
                                    <a href="#"><img src="<?php the_post_thumbnail_url(); ?>" alt=""/></a>
                                </div>
                                <a href="<?php the_post_thumbnail_url(); ?>" class="room">xem hình phóng to</a>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="cot2">
                                    <p><b>Mã sản phẩm:</b> <?php echo $_product->get_sku(); ?> </p>
                                    <p><b>Trạng thái:</b>
                                        <span class="t-blue">
                                    <?php
                                    if ($_product->is_in_stock()) {
                                        ?>
                                        Còn hàng
                                        <?php
                                    } else {
                                        ?>
                                        Hết hàng
                                        <?php
                                    }
                                    ?>
                                    </span></p>

                                    <div class="attributes"><?php echo $_product->list_attributes(); ?></div>

                                    <div class="giaban">Giá
                                        Bán: <?php echo number_format($_product->get_sale_price(), 0, ".", ",") . " " . get_woocommerce_currency_symbol(); ?></div>
                                    <div class="khungsl">
                                        <div class="soluong">Số Lượng</div>
                                        <div class="giammot" onclick="setCT('0', '0')">-</div>
                                        <div class="sl" id="num_ssoluong_h0">1</div>
                                        <input type="hidden" name="quantity" id="num_ssoluong0" value="1"/>
                                        <div class="tangmot" onclick="setCT('1', '0')">+</div>
                                    </div>
                                    <a class="btn btn-flat btn-success btn-block pull-left btn_mua"
                                       style="cursor: pointer;margin-top: 15px;"
                                       onclick="datMua('<?php echo $dataCat->ID; ?>');">Mua ngay</a>

                                    <div class="cacmangxh">
                                        <div class="share-face">
                                            <!-- Go to www.addthis.com/dashboard to customize your tools -->
                                            <div class="addthis_native_toolbox"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="line2gach"></div>
                        <div class="thongtinsanpham">Thông tin sản phẩm </div>
                        <div class="noidungchitiet">
                            <?php echo $dataCat->post_content; ?>
                        </div>
                        <div class="line2gach"></div>
                        <div class="thongtinsanpham">Bình Luận về sản phẩm</div>
                        <div id="comments" style="float:left; width:100%">
                            <div class="fb-comments" data-href="<?php echo get_page_link($dataCat->ID); ?>"
                                 data-width="100%" data-numposts="5"></div>
                        </div>
                        </div>
                    </section>
                </form>
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
                        var total = $('#num_ssoluong0').val();
                        window.location.href = site_url + "checkout?add-to-cart=" + product_id + "&quantity=" + total;
                    }
                </script>
            </div>
        </div>
    </div>
</div>
<?php get_footer('shop'); ?>
 
