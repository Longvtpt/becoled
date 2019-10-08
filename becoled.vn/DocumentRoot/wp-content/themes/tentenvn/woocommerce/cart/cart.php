<?php
/**
 * Cart Page
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/cart/cart.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @author  WooThemes
 * @package WooCommerce/Templates
 * @version 2.3.8
 */
if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly
}

wc_print_notices();

do_action('woocommerce_before_cart');
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
    <div class="k_cart">
        <div class="block-title">
            <span class="title">Thông tin giỏ hàng</span>
        </div>
        <form action="<?php echo esc_url(wc_get_cart_url()); ?>" method="post">
            <?php do_action('woocommerce_before_cart_table'); ?>
            <table class="table" cellspacing="0">
                <thead>
                    <tr>
                        <th class="product-name"><?php _e('Product', 'woocommerce'); ?></th>
                        <th class="product-price"><?php _e('Price', 'woocommerce'); ?></th>
                        <th class="product-quantity"><?php _e('Quantity', 'woocommerce'); ?></th>
                        <th class="product-subtotal"><?php _e('Total', 'woocommerce'); ?></th>
                        <th class="product-remove">&nbsp;</th>
                        <th class="product-thumbnail">&nbsp;</th>
                    </tr>
                </thead>
                <tbody>
                    <?php do_action('woocommerce_before_cart_contents'); ?>
                    <?php
                    if (!empty(WC()->cart->get_cart())) {

                        foreach (WC()->cart->get_cart() as $cart_item_key => $cart_item) {
                            $_product = apply_filters('woocommerce_cart_item_product', $cart_item['data'], $cart_item, $cart_item_key);
                            $product_id = apply_filters('woocommerce_cart_item_product_id', $cart_item['product_id'], $cart_item, $cart_item_key);

                            if ($_product && $_product->exists() && $cart_item['quantity'] > 0 && apply_filters('woocommerce_cart_item_visible', true, $cart_item, $cart_item_key)) {
                                $product_permalink = apply_filters('woocommerce_cart_item_permalink', $_product->is_visible() ? $_product->get_permalink($cart_item) : '', $cart_item, $cart_item_key);
                                ?>
                                <tr class="<?php echo esc_attr(apply_filters('woocommerce_cart_item_class', 'cart_item', $cart_item, $cart_item_key)); ?>">



                                    <td class="product-name" data-title="<?php _e('Product', 'woocommerce'); ?>">
                                        <?php
                                        if (!$product_permalink) {
                                            echo apply_filters('woocommerce_cart_item_name', $_product->get_title(), $cart_item, $cart_item_key) . '&nbsp;';
                                        } else {
                                            echo apply_filters('woocommerce_cart_item_name', sprintf('<a href="%s">%s</a>', esc_url($product_permalink), $_product->get_title()), $cart_item, $cart_item_key);
                                        }

                                        // Meta data
                                        echo WC()->cart->get_item_data($cart_item);

                                        // Backorder notification
                                        if ($_product->backorders_require_notification() && $_product->is_on_backorder($cart_item['quantity'])) {
                                            echo '<p class="backorder_notification">' . esc_html__('Available on backorder', 'woocommerce') . '</p>';
                                        }
                                        ?>
                                    </td>

                                    <td class="product-price" data-title="<?php _e('Price', 'woocommerce'); ?>">
                                        <?php
                                        echo apply_filters('woocommerce_cart_item_price', WC()->cart->get_product_price($_product), $cart_item, $cart_item_key);
                                        ?>
                                    </td>

                                    <td class="product-quantity" data-title="<?php _e('Quantity', 'woocommerce'); ?>">
                                        <?php
                                        if ($_product->is_sold_individually()) {
                                            $product_quantity = sprintf('1 <input type="hidden" name="cart[%s][qty]" value="1" />', $cart_item_key);
                                        } else {
                                            $product_quantity = woocommerce_quantity_input(array(
                                                'input_name' => "cart[{$cart_item_key}][qty]",
                                                'input_value' => $cart_item['quantity'],
                                                'max_value' => $_product->backorders_allowed() ? '' : $_product->get_stock_quantity(),
                                                'min_value' => '0'
                                                    ), $_product, false);
                                        }

                                        echo apply_filters('woocommerce_cart_item_quantity', $product_quantity, $cart_item_key, $cart_item);
                                        ?>
                                    </td>

                                    <td class="product-subtotal" data-title="<?php _e('Total', 'woocommerce'); ?>">
                                        <?php
                                        echo apply_filters('woocommerce_cart_item_subtotal', WC()->cart->get_product_subtotal($_product, $cart_item['quantity']), $cart_item, $cart_item_key);
                                        ?>
                                    </td>
                                    <td class="product-remove">
                                        <?php
                                        echo apply_filters('woocommerce_cart_item_remove_link', sprintf(
                                                        '<a href="%s" class="remove" title="%s" data-product_id="%s" data-product_sku="%s">&times;</a>', esc_url(WC()->cart->get_remove_url($cart_item_key)), __('Remove this item', 'woocommerce'), esc_attr($product_id), esc_attr($_product->get_sku())
                                                ), $cart_item_key);
                                        ?>
                                    </td>

                                    <td class="product-thumbnail">
                                        <?php
                                        $thumbnail = apply_filters('woocommerce_cart_item_thumbnail', $_product->get_image(), $cart_item, $cart_item_key);

                                        if (!$product_permalink) {
                                            echo $thumbnail;
                                        } else {
                                            printf('<a href="%s">%s</a>', esc_url($product_permalink), $thumbnail);
                                        }
                                        ?>
                                    </td>
                                </tr>
                                <?php
                            }
                        }

                        do_action('woocommerce_cart_contents');
                        ?>
                    <?php } else {
                        ?>
                        <tr>
                            <td colspan="4" class="actions">Chưa có sản phẩm.</td>
                        </tr>
                        <tr>
                            <td colspan="4" class="actions">
                                <a class="button" href="<?php echo SITE_HOME; ?>">Quai lại để thêm sản phẩm </a>
                            </td>
                        </tr>
                        <?php
                    }
                    ?>
                    <?php do_action('woocommerce_after_cart_contents'); ?>
                </tbody>
            </table>
            <?php do_action('woocommerce_after_cart_table'); ?>
        </form>
    </div>
    </section>
</div>
    <?php do_action('woocommerce_after_cart'); ?>
