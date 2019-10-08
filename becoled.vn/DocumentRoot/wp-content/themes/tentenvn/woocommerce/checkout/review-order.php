<?php
/**
 * Review order table
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/review-order.php.
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
?>
<table class="table">
        <tr class="tenbold">
            <th width="50%" class="sanpham">Sản Phẩm</th>
            <th style="text-align:center">Số Lượng</th>
            <th style="text-align:center">Giá</th>
            <th width="50" style="text-align:center" align="center">Xóa</th>
        </tr>
        <?php
        do_action('woocommerce_review_order_before_cart_contents');
        foreach (WC()->cart->get_cart() as $cart_item_key => $cart_item) {
            $_product = apply_filters('woocommerce_cart_item_product', $cart_item['data'], $cart_item, $cart_item_key);
            if ($_product && $_product->exists() && $cart_item['quantity'] > 0 && apply_filters('woocommerce_checkout_cart_item_visible', true, $cart_item, $cart_item_key)) {
                ?>
                <tr class="spline">
                    <td width="50%">
                        <?php echo apply_filters('woocommerce_cart_item_name', $_product->get_title(), $cart_item, $cart_item_key) . '&nbsp;'; ?>
                    </td>
                    <td width="20%" style="text-align:center">
                        <?php echo apply_filters('woocommerce_checkout_cart_item_quantity', '<input value="' . sprintf('&times; %s', $cart_item['quantity']) . '" name="quantity" readonly="true" type="text" style="width:30px;text-align: center;" />', $cart_item, $cart_item_key); ?>
                        <?php echo WC()->cart->get_item_data($cart_item); ?>
                    </td>
                    <td width="25%">
                        <?php echo apply_filters('woocommerce_cart_item_subtotal', WC()->cart->get_product_price($_product)); ?>
                    </td>
                    <td style="text-align:center"><a style="color: red" href="<?php echo WC()->cart->get_remove_url($cart_item_key); ?>">X</a></td>
                </tr>
                <?php
            }
        }
        do_action('woocommerce_review_order_after_cart_contents');
        ?>
        <tr class="spline">
            <td width="50%" class="sanpham" colspan="2">Tổng cộng (giá chưa bao gồm VAT)</td>
            <td width="20%" align="center" > </td>
            <td><?php wc_cart_totals_subtotal_html(); ?></td>
        </tr>

        <?php foreach (WC()->cart->get_coupons() as $code => $coupon) : ?>
            <tr class="spline cart-discount coupon-<?php echo esc_attr(sanitize_title($code)); ?>">
                <td width="50%" class="sanpham" colspan="2"><?php wc_cart_totals_coupon_label($coupon); ?></td>
                <td width="20%" align="center"> </td>
                <td><?php wc_cart_totals_coupon_html($coupon); ?></td>
            </tr>
        <?php endforeach; ?>

        <?php if (WC()->cart->needs_shipping() && WC()->cart->show_shipping()) : ?>

            <?php do_action('woocommerce_review_order_before_shipping'); ?>

            <?php wc_cart_totals_shipping_html(); ?>

            <?php do_action('woocommerce_review_order_after_shipping'); ?>

        <?php endif; ?>

        <?php foreach (WC()->cart->get_fees() as $fee) : ?>
            <tr class="spline fee">
                <td width="50%" class="sanpham" colspan="2"><?php echo esc_html($fee->name); ?></td>
                <td width="20%" align="center"> </td>
                <td><?php wc_cart_totals_fee_html($fee); ?></td>
            </tr>
        <?php endforeach; ?>

        <?php if (wc_tax_enabled() && 'excl' === WC()->cart->tax_display_cart) : ?>
            <?php if ('itemized' === get_option('woocommerce_tax_total_display')) : ?>
                <?php foreach (WC()->cart->get_tax_totals() as $code => $tax) : ?>
                    <tr class="spline tax-rate tax-rate-<?php echo sanitize_title($code); ?>">
                        <th width="50%" class="sanpham" colspan="2"><?php echo esc_html($tax->label); ?></th>
                        <td width="20%" align="center"> </td>
                        <td><?php echo wp_kses_post($tax->formatted_amount); ?></td>
                    </tr>
                <?php endforeach; ?>
            <?php else : ?>
                <tr class="spline tax-total">
                    <th width="50%" class="sanpham" colspan="2"><?php echo esc_html(WC()->countries->tax_or_vat()); ?></th>
                    <td width="20%" align="center"> </td>
                    <td><?php wc_cart_totals_taxes_total_html(); ?></td>
                </tr>
            <?php endif; ?>
        <?php endif; ?>
        <?php do_action('woocommerce_review_order_before_order_total'); ?>
        <tr class="order-total">
        <tr class="spline">
            <td width="50%" class="sanpham" colspan="2">Thanh toán</td>
            <td width="20%" align="center"> </td>
            <td><?php wc_cart_totals_order_total_html(); ?></td>
        </tr>
        <?php do_action('woocommerce_review_order_after_order_total'); ?>
    </table>
