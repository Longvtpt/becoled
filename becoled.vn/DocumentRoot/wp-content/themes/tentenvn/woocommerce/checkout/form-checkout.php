<?php
/**
 * Checkout Form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/form-checkout.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see 	    https://docs.woocommerce.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     2.3.0
 */
if (!defined('ABSPATH')) {
    exit;
}
wc_print_notices();
?>
<style>
.heading .text,.heading .icon{
    font-size: 20px;
}
#main .timkiem,#main .block{ display:none}
#main .col-md-9{width:100%; left:0}
</style>
<link rel="stylesheet" type="text/css" href="<?php echo SITE_URL; ?>/css/chitiet.css"/>
<div class="block-sp-featured ">
<section class="check-out">
        <div class="block-title">
            <span class="title">Thực hiện đặt hàng</span>
        </div>                        <?php                        remove_action('woocommerce_before_checkout_form', 'woocommerce_checkout_coupon_form', 10);                        add_action('woocommerce_checkout_coupon_form', 'woocommerce_checkout_coupon_form', 10);                        do_action('woocommerce_before_checkout_form', $checkout);                        ?>
        <form name="checkout" method="post" class="checkout woocommerce-checkout" action="<?php echo esc_url(wc_get_checkout_url()); ?>" enctype="multipart/form-data">
            <div class="row form-checkout">
                <div class="col-md-4 col-sm-12 step1">
                    <div class="heading">
                        <span class="icon">1.</span>
                        <span class="text">Thông tin khách hàng</span>
                    </div>
                    <div class="body">
                        <?php if (sizeof($checkout->checkout_fields) > 0) : ?>							<div class="chuacotaikhoan">                            <input name="state_login" type="radio" value="1" class="showlogin" onclick="$('.login').show();">Bạn đã có tài khoản?</div>
                            <div class="chuacotaikhoan"><input name="state_login" onclick="$('.login').hide();" type="radio" value="0" checked> Bạn chưa có khoản?</div>
                            <?php do_action('woocommerce_checkout_billing'); ?>
                            <?php do_action('woocommerce_checkout_shipping'); ?>
                        <?php endif; ?>
                        <?php do_action('woocommerce_after_checkout_form', $checkout); ?>

                    </div>
                </div>
                <div class="col-md-3 col-sm-12 step2">
                    <div class="heading">
                        <span class="icon">2.</span>
                        <span class="text">Thanh toán</span>
                    </div>
                    <div class="boby">
                        <?php
                        remove_action('woocommerce_checkout_order_review', 'woocommerce_checkout_payment', 20);
                        add_action('woocommerce_checkout_payment', 'woocommerce_checkout_payment', 20);
                        do_action('woocommerce_checkout_payment');
                        ?>
                    </div>
                </div>
                <div class="col-md-5 col-sm-12 step3">
                    <div class="heading">
                        <span class="icon">3.</span>
                        <span class="text">Xác nhận đơn hàng</span>
                    </div>
                    <div class="body">
                        <?php
                        do_action('woocommerce_checkout_order_review');
                        ?>
                        <p class="text-right">
                        <?php
                        echo apply_filters('woocommerce_order_button_html', '<input type="submit" class="btn btn-default btn-dat-hang" name="woocommerce_checkout_place_order" id="place_order" value="' . esc_attr("Hoàn thành") . '" data-value="' . esc_attr('Hoàn thành') . '" />');
                        ?>
                        </p>
                    </div>
                </div>
            </div>
        </form>
</section>
</div>